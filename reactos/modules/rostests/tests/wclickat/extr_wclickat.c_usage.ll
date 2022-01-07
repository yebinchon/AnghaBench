; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/wclickat/extr_wclickat.c_usage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/wclickat/extr_wclickat.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s - Utility to send clicks to Wine Windows.\0A\00", align 1
@APP_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"----------------------------------------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"    %s action --winclass class --wintitle title [--timeout ms]\0A\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"    %*.*s     [--ctrlclas class] [--ctrlcaption caption] [--ctrlid id]\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"    %*.*s     [--position XxY] [--delay ms] [--untildeath] [--repeat ms]\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Where action can be one of:\0A\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"  find              Find the specified window or control\0A\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"  button<n>         Send a click with the given X button number\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"  click|lclick      Synonym for button1 (left click)\0A\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"  mclick            Synonym for button2 (middle click)\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"  rclick            Synonym for button3 (right click)\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"The options are as follows:\0A\00", align 1
@.str.15 = private unnamed_addr constant [71 x i8] c"  --timeout ms      How long to wait before failing with a code of %d\0A\00", align 1
@RC_TIMEOUT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [68 x i8] c"  --winclass class  Class name of the top-level window of interest\0A\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"  --wintitle title  Title of the top-level window of interest\0A\00", align 1
@.str.18 = private unnamed_addr constant [67 x i8] c"  --ctrlclass name  Class name of the control of interest, if any\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"  --ctrlcaption cap A substring of the control's caption\0A\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"  --ctrlid id       Id of the control\0A\00", align 1
@.str.21 = private unnamed_addr constant [81 x i8] c"  --position XxY    Coordinates for the click, relative to the window / control\0A\00", align 1
@.str.22 = private unnamed_addr constant [72 x i8] c"  --dragto          If given, then position specifies start click, and\0A\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"                    dragto specifies release coords.\0A\00", align 1
@.str.24 = private unnamed_addr constant [73 x i8] c"  --allow-disabled  Match the window or control even hidden or disabled\0A\00", align 1
@.str.25 = private unnamed_addr constant [77 x i8] c"  --delay ms        Wait ms milliseconds before clicking. The default is %d\0A\00", align 1
@DEFAULT_DELAY = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [54 x i8] c"  --untildeath      Wait until the window disappears\0A\00", align 1
@.str.27 = private unnamed_addr constant [68 x i8] c"  --repeat ms       Click every ms milliseconds. The default is %d\0A\00", align 1
@DEFAULT_REPEAT = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [26 x i8] c"%s returns %d on success\0A\00", align 1
@RC_SUCCESS = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [33 x i8] c"Environment variable overrides:\0A\00", align 1
@.str.30 = private unnamed_addr constant [72 x i8] c"  CXTEST_TIME_MULTIPLE  Specifies a floating multiplier applied to any\0A\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"                        delay and timeout parameters.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i8*, i8** @APP_NAME, align 8
  %3 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %2)
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %8 = load i32, i32* @stderr, align 4
  %9 = load i8*, i8** @APP_NAME, align 8
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8* %9)
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8*, i8** @APP_NAME, align 8
  %13 = call i8* @strlen(i8* %12)
  %14 = getelementptr inbounds i8, i8* %13, i64 3
  %15 = load i8*, i8** @APP_NAME, align 8
  %16 = call i8* @strlen(i8* %15)
  %17 = getelementptr inbounds i8, i8* %16, i64 3
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0), i8* %14, i8* %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** @APP_NAME, align 8
  %21 = call i8* @strlen(i8* %20)
  %22 = getelementptr inbounds i8, i8* %21, i64 3
  %23 = load i8*, i8** @APP_NAME, align 8
  %24 = call i8* @strlen(i8* %23)
  %25 = getelementptr inbounds i8, i8* %24, i64 3
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i8* %22, i8* %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0))
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0))
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0))
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0))
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0))
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* @RC_TIMEOUT, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.15, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.16, i64 0, i64 0))
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.17, i64 0, i64 0))
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.18, i64 0, i64 0))
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0))
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0))
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.21, i64 0, i64 0))
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.22, i64 0, i64 0))
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i64 0, i64 0))
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.24, i64 0, i64 0))
  %64 = load i32, i32* @stderr, align 4
  %65 = load i32, i32* @DEFAULT_DELAY, align 4
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.25, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @stderr, align 4
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i64 0, i64 0))
  %69 = load i32, i32* @stderr, align 4
  %70 = load i32, i32* @DEFAULT_REPEAT, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.27, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %74 = load i32, i32* @stderr, align 4
  %75 = load i8*, i8** @APP_NAME, align 8
  %76 = load i32, i32* @RC_SUCCESS, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i8* %75, i32 %76)
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0))
  %82 = load i32, i32* @stderr, align 4
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.30, i64 0, i64 0))
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
