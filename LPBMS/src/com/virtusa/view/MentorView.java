package com.virtusa.view;

import java.util.Scanner;

public class MentorView 
{
	public void mentorMenu()
	{
		System.out.println("****Welocome to Mentor HomePage***");
		System.out.println("====================================");
		System.out.println("Please Select any one option");
		System.out.println("1.Profile");
		System.out.println("2.Training Calender");
		System.out.println("3.LP's");
		System.out.println("4.My LP Batch");
		System.out.println("5.Logout");
		System.out.println("====================================");
			Scanner scanner =new Scanner(System.in);
	        int cmd = scanner.nextInt();
	        switch (cmd) {
	       
	            case 1:
	                this.mentorProfile();
	                break;
	            case 2:
	                this.training_Calender();
	                break;
	            case 3:
	                this.all_Lps();
	                break;
	            case 4:
	                this.my_Lp_Batch();
	                break;
	            case 5:
	                this.logOut();
	                break;
	            default : System.out.println("Please Enter valid Option");
	        }  
	     }
	
	private void mentorProfile() {
		System.out.println("My Profile");
		System.out.println("====================================");
		System.out.println("Please Select any one option");
		System.out.println("11.View Your Profile");
		System.out.println("12.Edit Your Profile");
		System.out.println("====================================");
		mentorMenu();
		Scanner scanner =new Scanner(System.in);
        int cmd1 = scanner.nextInt();
        switch (cmd1) {	      
            case 11:
                this.view_Mentor_Details();
                break;
            case 12:
                this.edit_Mentor_Details();
                break;
            default : System.out.println("Please Enter Valid Option");
                }	
}
	private void training_Calender() {
		System.out.println("Welcome to Training Calender");
		System.out.println("====================================");
		System.out.println("Please Select any one option");
		System.out.println("21.View Training Calender of All LP Batches");
		System.out.println("22.Upload/Update Training Calender of your LP Batch");
		System.out.println("23.View Training Status of All LP Batches");
		System.out.println("24.Upload Training Status of your LP Batch");			
		System.out.println("====================================");
		mentorMenu();
		Scanner scanner =new Scanner(System.in);
        int cmd2 = scanner.nextInt();
        switch (cmd2) {
        default : System.out.println("Please Enter Valid Option");	      
            case 21:
                this.view_Training_Calender();
                break;
            case 22:
                this.edit_Training_Calender();
                break;
            case 23:
                this.view_Training_Status();
                break;
            case 24:
                this.edit_Training_Status();
                break;
                }	
	}
	private void view_Training_Calender() {
		System.out.println("View Training Calender");
		mentorMenu();
		
	}
	private void edit_Training_Calender() {
		System.out.println("Edit Training Calender");
		mentorMenu();
		
	}
	private void view_Training_Status() {
		System.out.println("View Training Status");
		mentorMenu();
		
	}
	private void edit_Training_Status() {
		System.out.println("Edit Training Status");
		mentorMenu();
		
	}
	private void view_Mentor_Details() {
		System.out.println("View Your Details");
		mentorMenu();
	}
	private void edit_Mentor_Details() {
		System.out.println("Edit your Details");
		mentorMenu();
		
	}
	
	private void all_Lps() {
		System.out.println("Welcome to Lp Details");
		System.out.println("====================================");
		System.out.println("Please Select any one option");
		System.out.println("31.View LP Profile");
		System.out.println("32.Enroll LP's to My Batch");
		System.out.println("====================================");
		mentorMenu();
		Scanner scanner =new Scanner(System.in);
        int cmd3 = scanner.nextInt();
        switch (cmd3) {	      
            case 31:
                this.view_Lp_Details();
                break;
            case 32:
                this.enroll_Lps();
                break;
            default : System.out.println("Please Enter Valid Option");
                }	
		mentorMenu();
	}
	
	private void enroll_Lps() {
		System.out.println("Enroll LPs");
		mentorMenu();
	}

	private void view_Lp_Details() {
	         System.out.println("View Lp Details");
	         mentorMenu();
	}

	private void my_Lp_Batch() {
		System.out.println("MY LP Batch");
		mentorMenu();
	}
		private void logOut() {
			System.out.println(" Logout Done! ");
			mentorMenu();
			
		}


		
		
		
}
