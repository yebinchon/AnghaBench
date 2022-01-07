; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_integration.c_workshop_minimize_shell.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_integration.c_workshop_minimize_shell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@True = common dso_local global i64 0, align 8
@XmNiconic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workshop_minimize_shell(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %33

5:                                                ; preds = %1
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @XtIsObject(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @XtIsRealized(i32* %10)
  %12 = load i64, i64* @True, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %9
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @isMapped(i32* %15)
  %17 = load i64, i64* @True, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @XtDisplay(i32* %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @XtWindow(i32* %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @XtScreen(i32* %24)
  %26 = call i32 @XScreenNumberOfScreen(i32 %25)
  %27 = call i32 @XIconifyWindow(i32 %21, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %19, %14
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @XmNiconic, align 4
  %31 = load i64, i64* @True, align 8
  %32 = call i32 @XtVaSetValues(i32* %29, i32 %30, i64 %31, i32* null)
  br label %33

33:                                               ; preds = %28, %9, %5, %1
  ret void
}

declare dso_local i64 @XtIsObject(i32*) #1

declare dso_local i64 @XtIsRealized(i32*) #1

declare dso_local i64 @isMapped(i32*) #1

declare dso_local i32 @XIconifyWindow(i32, i32, i32) #1

declare dso_local i32 @XtDisplay(i32*) #1

declare dso_local i32 @XtWindow(i32*) #1

declare dso_local i32 @XScreenNumberOfScreen(i32) #1

declare dso_local i32 @XtScreen(i32*) #1

declare dso_local i32 @XtVaSetValues(i32*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
