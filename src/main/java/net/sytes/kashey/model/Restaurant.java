package net.sytes.kashey.model;

import java.time.LocalDate;
import java.util.HashMap;

public class Restaurant {
    private int id;
    private String name;
    private HashMap<LocalDate, String> menu;

    public Restaurant(int id, String name, HashMap<LocalDate, String> menu) {
        this.id = id;
        this.name = name;
        this.menu = menu;
    }

    public Restaurant() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public HashMap<LocalDate, String> getMenu() {
        return menu;
    }

    public void setMenu(HashMap<LocalDate, String> menu) {
        this.menu = menu;
    }

    @Override
    public String toString() {
        return "Restaurant{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", menu=" + menu +
                '}';
    }
}
