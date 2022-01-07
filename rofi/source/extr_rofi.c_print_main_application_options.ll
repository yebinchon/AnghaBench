; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_rofi.c_print_main_application_options.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_rofi.c_print_main_application_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"-no-config\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Do not load configuration, use default values.\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"-v,-version\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Print the version number and exit.\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"-dmenu\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Start in dmenu mode.\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"-display\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"[string]\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"X server to contact.\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"${DISPLAY}\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"-h,-help\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"This help message.\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"-dump-xresources\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"Dump the current configuration in Xresources format and exit.\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"Show a dialog displaying the passed message and exit.\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"-markup\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Enable pango markup where possible.\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"-normal-window\00", align 1
@.str.20 = private unnamed_addr constant [57 x i8] c"In dmenu mode, behave as a normal window. (experimental)\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"-show\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"[mode]\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"Show the mode 'mode' and exit. The mode has to be enabled.\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"-no-lazy-grab\00", align 1
@.str.25 = private unnamed_addr constant [84 x i8] c"Disable lazy grab that, when fail to grab keyboard, does not block but retry later.\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"-no-plugins\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"Disable loading of external plugins.\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"-plugin-path\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"Directory used to search for rofi plugins.\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"-dump-config\00", align 1
@.str.31 = private unnamed_addr constant [56 x i8] c"Dump the current configuration in rasi format and exit.\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"-dump-theme\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"Dump the current theme in rasi format and exit.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_main_application_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_main_application_options(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @print_help_msg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* null, i32 %3)
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @print_help_msg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* null, i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @print_help_msg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* null, i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @print_help_msg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @print_help_msg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* null, i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @print_help_msg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i64 0, i64 0), i8* null, i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @print_help_msg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i64 0, i64 0), i8* null, i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @print_help_msg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i8* null, i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @print_help_msg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.20, i64 0, i64 0), i8* null, i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @print_help_msg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i64 0, i64 0), i8* null, i32 %21)
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @print_help_msg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.25, i64 0, i64 0), i8* null, i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @print_help_msg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0), i8* null, i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @print_help_msg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.29, i64 0, i64 0), i8* null, i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @print_help_msg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.31, i64 0, i64 0), i8* null, i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @print_help_msg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.33, i64 0, i64 0), i8* null, i32 %31)
  ret void
}

declare dso_local i32 @print_help_msg(i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
