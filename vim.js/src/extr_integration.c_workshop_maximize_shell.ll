; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_integration.c_workshop_maximize_shell.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_integration.c_workshop_maximize_shell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@True = common dso_local global i64 0, align 8
@False = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workshop_maximize_shell(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @XtIsRealized(i32* %6)
  %8 = load i64, i64* @True, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %5
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @widgetIsIconified(i32* %11)
  %13 = load i64, i64* @True, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @isMapped(i32* %16)
  %18 = load i64, i64* @False, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @XtMapWidget(i32* %21)
  br label %23

23:                                               ; preds = %20, %15, %10, %5, %1
  ret void
}

declare dso_local i64 @XtIsRealized(i32*) #1

declare dso_local i64 @widgetIsIconified(i32*) #1

declare dso_local i64 @isMapped(i32*) #1

declare dso_local i32 @XtMapWidget(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
