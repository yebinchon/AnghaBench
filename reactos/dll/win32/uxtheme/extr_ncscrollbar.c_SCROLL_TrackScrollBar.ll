; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_ncscrollbar.c_SCROLL_TrackScrollBar.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_ncscrollbar.c_SCROLL_TrackScrollBar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i32 }

@WM_LBUTTONDOWN = common dso_local global i64 0, align 8
@MSGF_SCROLLBAR = common dso_local global i32 0, align 4
@WM_LBUTTONUP = common dso_local global i64 0, align 8
@WM_MOUSEMOVE = common dso_local global i64 0, align 8
@WM_SYSTIMER = common dso_local global i64 0, align 8
@SCROLL_TIMER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i64)* @SCROLL_TrackScrollBar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SCROLL_TrackScrollBar(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_11__, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.TYPE_11__* %4 to i64*
  store i64 %2, i64* %9, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @ThemeGetWndData(i64 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %96

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @ScreenToWindow(i64 %16, %struct.TYPE_11__* %4)
  %18 = load i32, i32* %8, align 4
  %19 = load i64, i64* %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i64, i64* @WM_LBUTTONDOWN, align 8
  %22 = bitcast %struct.TYPE_11__* %4 to i64*
  %23 = load i64, i64* %22, align 4
  %24 = call i32 @SCROLL_HandleScrollEvent(i32 %18, i64 %19, i32 %20, i64 %21, i64 %23)
  br label %25

25:                                               ; preds = %94, %15
  %26 = call i32 @GetMessageW(%struct.TYPE_12__* %7, i32 0, i32 0, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %96

29:                                               ; preds = %25
  %30 = load i32, i32* @MSGF_SCROLLBAR, align 4
  %31 = call i64 @CallMsgFilterW(%struct.TYPE_12__* %7, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %85

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @WM_LBUTTONUP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %54, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @WM_MOUSEMOVE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @WM_SYSTIMER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SCROLL_TIMER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %49, %39, %34
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @GET_X_LPARAM(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @GET_Y_LPARAM(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @ClientToScreen(i64 %63, %struct.TYPE_11__* %4)
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @ScreenToWindow(i64 %65, %struct.TYPE_11__* %4)
  %67 = load i32, i32* %8, align 4
  %68 = load i64, i64* %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = bitcast %struct.TYPE_11__* %4 to i64*
  %73 = load i64, i64* %72, align 4
  %74 = call i32 @SCROLL_HandleScrollEvent(i32 %67, i64 %68, i32 %69, i64 %71, i64 %73)
  br label %78

75:                                               ; preds = %49, %44
  %76 = call i32 @TranslateMessage(%struct.TYPE_12__* %7)
  %77 = call i32 @DispatchMessageW(%struct.TYPE_12__* %7)
  br label %78

78:                                               ; preds = %75, %54
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @IsWindow(i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = call i32 (...) @ReleaseCapture()
  br label %96

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %33
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @WM_LBUTTONUP, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = call i64 (...) @GetCapture()
  %92 = load i64, i64* %5, align 8
  %93 = icmp eq i64 %91, %92
  br label %94

94:                                               ; preds = %90, %85
  %95 = phi i1 [ false, %85 ], [ %93, %90 ]
  br i1 %95, label %25, label %96

96:                                               ; preds = %14, %94, %82, %28
  ret void
}

declare dso_local i32 @ThemeGetWndData(i64) #1

declare dso_local i32 @ScreenToWindow(i64, %struct.TYPE_11__*) #1

declare dso_local i32 @SCROLL_HandleScrollEvent(i32, i64, i32, i64, i64) #1

declare dso_local i32 @GetMessageW(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i64 @CallMsgFilterW(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @GET_X_LPARAM(i32) #1

declare dso_local i32 @GET_Y_LPARAM(i32) #1

declare dso_local i32 @ClientToScreen(i64, %struct.TYPE_11__*) #1

declare dso_local i32 @TranslateMessage(%struct.TYPE_12__*) #1

declare dso_local i32 @DispatchMessageW(%struct.TYPE_12__*) #1

declare dso_local i32 @IsWindow(i64) #1

declare dso_local i32 @ReleaseCapture(...) #1

declare dso_local i64 @GetCapture(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
