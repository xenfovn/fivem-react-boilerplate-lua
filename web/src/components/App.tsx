import React, { useState, useEffect } from "react";
import styles from "./App.module.scss";
import { debugData } from "../utils/debugData";
import { fetchNui } from "../utils/fetchNui";
import { isEnvBrowser } from "../utils/misc";

// This will set the NUI to visible if we are
// developing in browser
debugData([
    {
        action: "setVisible",
        data: true,
    },
]);


const App: React.FC = () => {
    useEffect(() => {
        if (import.meta.env.MODE === "development" && isEnvBrowser()) {
            document.documentElement.style.backgroundColor = "black";
        }
    }, [])

    return (
        <div className={styles.container}>

        </div>
    );
};

export default App;
