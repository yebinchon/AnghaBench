; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDI_SwitchActiveChild.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDI_SwitchActiveChild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"from %p, to %p\0A\00", align 1
@WM_SETREDRAW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SW_RESTORE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HWND_TOP = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@SW_MAXIMIZE = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i64)* @MDI_SwitchActiveChild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MDI_SwitchActiveChild(%struct.TYPE_3__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %13)
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @IsZoomed(i64 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* @WM_SETREDRAW, align 4
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i32 @SendMessageW(i64 %24, i32 %25, i32 %26, i32 0)
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @SW_RESTORE, align 4
  %30 = call i32 @ShowWindow(i64 %28, i32 %29)
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* @WM_SETREDRAW, align 4
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i32 @SendMessageW(i64 %31, i32 %32, i32 %33, i32 0)
  %35 = load i64, i64* %5, align 8
  %36 = load i32, i32* @HWND_TOP, align 4
  %37 = load i32, i32* @SWP_NOMOVE, align 4
  %38 = load i32, i32* @SWP_NOSIZE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @SetWindowPos(i64 %35, i32 %36, i32 0, i32 0, i32 0, i32 0, i32 %39)
  %41 = load i64, i64* %5, align 8
  %42 = load i32, i32* @SW_MAXIMIZE, align 4
  %43 = call i32 @ShowWindow(i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %23, %18
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* @HWND_TOP, align 4
  %47 = load i32, i32* @SWP_NOMOVE, align 4
  %48 = load i32, i32* @SWP_NOSIZE, align 4
  %49 = or i32 %47, %48
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @SWP_NOACTIVATE, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i32 [ 0, %52 ], [ %54, %53 ]
  %57 = or i32 %49, %56
  %58 = call i32 @SetWindowPos(i64 %45, i32 %46, i32 0, i32 0, i32 0, i32 0, i32 %57)
  br label %59

59:                                               ; preds = %55, %3
  ret void
}

declare dso_local i32 @TRACE(i8*, i64, i64) #1

declare dso_local i64 @IsZoomed(i64) #1

declare dso_local i32 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i32 @ShowWindow(i64, i32) #1

declare dso_local i32 @SetWindowPos(i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
