; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_window.c_SetAbove.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_window.c_SetAbove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@GWL_EXSTYLE = common dso_local global i32 0, align 4
@WS_EX_TOPMOST = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDM_TOGGLE_ON_TOP = common dso_local global i32 0, align 4
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@MFS_UNCHECKED = common dso_local global i32 0, align 4
@HWND_NOTOPMOST = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@MFS_CHECKED = common dso_local global i32 0, align 4
@HWND_TOPMOST = common dso_local global i32 0, align 4
@HWND_BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @SetAbove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetAbove(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %5, align 8
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %81 [
    i32 128, label %12
    i32 130, label %42
    i32 129, label %72
  ]

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GWL_EXSTYLE, align 4
  %17 = call i32 @GetWindowLong(i32 %15, i32 %16)
  %18 = load i32, i32* @WS_EX_TOPMOST, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %12
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @GetSystemMenu(i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @IDM_TOGGLE_ON_TOP, align 4
  %29 = load i32, i32* @MF_BYCOMMAND, align 4
  %30 = load i32, i32* @MFS_UNCHECKED, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @CheckMenuItem(i32 %27, i32 %28, i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HWND_NOTOPMOST, align 4
  %37 = load i32, i32* @SWP_NOSIZE, align 4
  %38 = load i32, i32* @SWP_NOMOVE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @SetWindowPos(i32 %35, i32 %36, i32 0, i32 0, i32 0, i32 0, i32 %39)
  br label %41

41:                                               ; preds = %21, %12
  br label %81

42:                                               ; preds = %2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GWL_EXSTYLE, align 4
  %47 = call i32 @GetWindowLong(i32 %45, i32 %46)
  %48 = load i32, i32* @WS_EX_TOPMOST, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %42
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @FALSE, align 4
  %56 = call i32 @GetSystemMenu(i32 %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @IDM_TOGGLE_ON_TOP, align 4
  %59 = load i32, i32* @MF_BYCOMMAND, align 4
  %60 = load i32, i32* @MFS_CHECKED, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @CheckMenuItem(i32 %57, i32 %58, i32 %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @HWND_TOPMOST, align 4
  %67 = load i32, i32* @SWP_NOSIZE, align 4
  %68 = load i32, i32* @SWP_NOMOVE, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @SetWindowPos(i32 %65, i32 %66, i32 0, i32 0, i32 0, i32 0, i32 %69)
  br label %71

71:                                               ; preds = %51, %42
  br label %81

72:                                               ; preds = %2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @HWND_BOTTOM, align 4
  %77 = load i32, i32* @SWP_NOSIZE, align 4
  %78 = load i32, i32* @SWP_NOMOVE, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @SetWindowPos(i32 %75, i32 %76, i32 0, i32 0, i32 0, i32 0, i32 %79)
  br label %81

81:                                               ; preds = %2, %72, %71, %41
  ret void
}

declare dso_local i32 @GetWindowLong(i32, i32) #1

declare dso_local i32 @GetSystemMenu(i32, i32) #1

declare dso_local i32 @CheckMenuItem(i32, i32, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
