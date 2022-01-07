; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_xdisplay.c_XGetMainDisplay.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_xdisplay.c_XGetMainDisplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hasDisplayNameChanged = common dso_local global i64 0, align 8
@mainDisplay = common dso_local global i32* null, align 8
@displayName = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Could not open main display\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@registered = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @XGetMainDisplay() #0 {
  %1 = load i64, i64* @hasDisplayNameChanged, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 (...) @XCloseMainDisplay()
  store i64 0, i64* @hasDisplayNameChanged, align 8
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32*, i32** @mainDisplay, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  %9 = load i32*, i32** @displayName, align 8
  %10 = call i32* @XOpenDisplay(i32* %9)
  store i32* %10, i32** @mainDisplay, align 8
  %11 = load i32*, i32** @mainDisplay, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32* @XOpenDisplay(i32* null)
  store i32* %14, i32** @mainDisplay, align 8
  br label %15

15:                                               ; preds = %13, %8
  %16 = load i32*, i32** @mainDisplay, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fputs(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %27

21:                                               ; preds = %15
  %22 = load i32, i32* @registered, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 @atexit(i32 (...)* @XCloseMainDisplay)
  store i32 1, i32* @registered, align 4
  br label %26

26:                                               ; preds = %24, %21
  br label %27

27:                                               ; preds = %26, %18
  br label %28

28:                                               ; preds = %27, %5
  %29 = load i32*, i32** @mainDisplay, align 8
  ret i32* %29
}

declare dso_local i32 @XCloseMainDisplay(...) #1

declare dso_local i32* @XOpenDisplay(i32*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @atexit(i32 (...)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
