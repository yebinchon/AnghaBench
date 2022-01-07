; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_options.c_print_help.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_options.c_print_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [48 x i8] c"Usage: %s -l LAT:LON -t DAY:NIGHT [OPTIONS...]\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Set color temperature of display according to time of day.\0A\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"  -h\09\09Display this help message\0A  -v\09\09Verbose output\0A  -V\09\09Show program version\0A\00", align 1
@.str.4 = private unnamed_addr constant [798 x i8] c"  -b DAY:NIGHT\09Screen brightness to apply (between 0.1 and 1.0)\0A  -c FILE\09Load settings from specified configuration file\0A  -g R:G:B\09Additional gamma correction to apply\0A  -l LAT:LON\09Your current location\0A  -l PROVIDER\09Select provider for automatic location updates\0A  \09\09(Type `list' to see available providers)\0A  -m METHOD\09Method to use to set color temperature\0A  \09\09(Type `list' to see available methods)\0A  -o\09\09One shot mode (do not continuously adjust color temperature)\0A  -O TEMP\09One shot manual mode (set color temperature)\0A  -p\09\09Print mode (only print parameters and exit)\0A  -P\09\09Reset existing gamma ramps before applying new color effect\0A  -x\09\09Reset mode (remove adjustment from screen)\0A  -r\09\09Disable fading between color temperatures\0A  -t DAY:NIGHT\09Color temperature to set at daytime/night\0A\00", align 1
@.str.5 = private unnamed_addr constant [247 x i8] c"The neutral temperature is %uK. Using this value will not change the color\0Atemperature of the display. Setting the color temperature to a value higher\0Athan this results in more blue light, and setting a lower value will result in\0Amore red light.\0A\00", align 1
@NEUTRAL_TEMP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [70 x i8] c"Default values:\0A\0A  Daytime temperature: %uK\0A  Night temperature: %uK\0A\00", align 1
@DEFAULT_DAY_TEMP = common dso_local global i32 0, align 4
@DEFAULT_NIGHT_TEMP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Please report bugs to <%s>\0A\00", align 1
@PACKAGE_BUGREPORT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @print_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_help(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* %3, i8* %4)
  %6 = load i32, i32* @stdout, align 4
  %7 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 @fputs(i8* %8, i32 %9)
  %11 = load i32, i32* @stdout, align 4
  %12 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = call i8* @_(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 @fputs(i8* %13, i32 %14)
  %16 = load i32, i32* @stdout, align 4
  %17 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = call i8* @_(i8* getelementptr inbounds ([798 x i8], [798 x i8]* @.str.4, i64 0, i64 0))
  %19 = load i32, i32* @stdout, align 4
  %20 = call i32 @fputs(i8* %18, i32 %19)
  %21 = load i32, i32* @stdout, align 4
  %22 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = call i8* @_(i8* getelementptr inbounds ([247 x i8], [247 x i8]* @.str.5, i64 0, i64 0))
  %24 = load i32, i32* @NEUTRAL_TEMP, align 4
  %25 = call i32 (i8*, ...) @printf(i8* %23, i32 %24)
  %26 = load i32, i32* @stdout, align 4
  %27 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = call i8* @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0))
  %29 = load i32, i32* @DEFAULT_DAY_TEMP, align 4
  %30 = load i32, i32* @DEFAULT_NIGHT_TEMP, align 4
  %31 = call i32 (i8*, ...) @printf(i8* %28, i32 %29, i32 %30)
  %32 = load i32, i32* @stdout, align 4
  %33 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %35 = load i8*, i8** @PACKAGE_BUGREPORT, align 8
  %36 = call i32 (i8*, ...) @printf(i8* %34, i8* %35)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
