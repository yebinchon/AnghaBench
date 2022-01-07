; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_appswitch.c_ResizeAndCenter.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_appswitch.c_ResizeAndCenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@SM_CXSCREEN = common dso_local global i32 0, align 4
@SM_CYSCREEN = common dso_local global i32 0, align 4
@Style = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ExStyle = common dso_local global i32 0, align 4
@ptStart = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ResizeAndCenter(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @SM_CXSCREEN, align 4
  %13 = call i32 @GetSystemMetrics(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @SM_CYSCREEN, align 4
  %15 = call i32 @GetSystemMetrics(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %16, %17
  %19 = sdiv i32 %18, 2
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %20, %21
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  %32 = call i32 @SetRect(%struct.TYPE_5__* %9, i32 %24, i32 %25, i32 %28, i32 %31)
  %33 = load i32, i32* @Style, align 4
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32, i32* @ExStyle, align 4
  %36 = call i32 @AdjustWindowRectEx(%struct.TYPE_5__* %9, i32 %33, i32 %34, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %42, %44
  store i32 %45, i32* %5, align 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %47, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @FALSE, align 4
  %57 = call i32 @MoveWindow(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ptStart, i32 0, i32 0), align 4
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ptStart, i32 0, i32 1), align 4
  ret void
}

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @SetRect(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @AdjustWindowRectEx(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @MoveWindow(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
