; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shimgvw/extr_shimgvw.c_ZoomInOrOut.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shimgvw/extr_shimgvw.c_ZoomInOrOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZoomSteps = common dso_local global i64* null, align 8
@ZoomPercents = common dso_local global i64 0, align 8
@MAX_ZOOM = common dso_local global i64 0, align 8
@hToolBar = common dso_local global i32 0, align 4
@TB_ENABLEBUTTON = common dso_local global i32 0, align 4
@IDC_ZOOMM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IDC_ZOOMP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MIN_ZOOM = common dso_local global i64 0, align 8
@hDispWnd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ZoomInOrOut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ZoomInOrOut(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %58

6:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %21, %6
  %8 = load i64, i64* %3, align 8
  %9 = load i64*, i64** @ZoomSteps, align 8
  %10 = call i64 @ARRAYSIZE(i64* %9)
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load i64, i64* @ZoomPercents, align 8
  %14 = load i64*, i64** @ZoomSteps, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %13, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %24

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %3, align 8
  br label %7

24:                                               ; preds = %19, %7
  %25 = load i64, i64* %3, align 8
  %26 = load i64*, i64** @ZoomSteps, align 8
  %27 = call i64 @ARRAYSIZE(i64* %26)
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* @MAX_ZOOM, align 8
  store i64 %30, i64* @ZoomPercents, align 8
  br label %36

31:                                               ; preds = %24
  %32 = load i64*, i64** @ZoomSteps, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* @ZoomPercents, align 8
  br label %36

36:                                               ; preds = %31, %29
  %37 = load i32, i32* @hToolBar, align 4
  %38 = load i32, i32* @TB_ENABLEBUTTON, align 4
  %39 = load i32, i32* @IDC_ZOOMM, align 4
  %40 = load i32, i32* @TRUE, align 4
  %41 = call i32 @SendMessage(i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load i64, i64* @ZoomPercents, align 8
  %43 = load i64, i64* @MAX_ZOOM, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load i32, i32* @hToolBar, align 4
  %47 = load i32, i32* @TB_ENABLEBUTTON, align 4
  %48 = load i32, i32* @IDC_ZOOMP, align 4
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32 @SendMessage(i32 %46, i32 %47, i32 %48, i32 %49)
  br label %57

51:                                               ; preds = %36
  %52 = load i32, i32* @hToolBar, align 4
  %53 = load i32, i32* @TB_ENABLEBUTTON, align 4
  %54 = load i32, i32* @IDC_ZOOMP, align 4
  %55 = load i32, i32* @TRUE, align 4
  %56 = call i32 @SendMessage(i32 %52, i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %45
  br label %107

58:                                               ; preds = %1
  %59 = load i64*, i64** @ZoomSteps, align 8
  %60 = call i64 @ARRAYSIZE(i64* %59)
  store i64 %60, i64* %3, align 8
  br label %61

61:                                               ; preds = %74, %58
  %62 = load i64, i64* %3, align 8
  %63 = icmp ugt i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* %3, align 8
  %67 = load i64*, i64** @ZoomSteps, align 8
  %68 = load i64, i64* %3, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ZoomPercents, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %75

74:                                               ; preds = %64
  br label %61

75:                                               ; preds = %73, %61
  %76 = load i64, i64* %3, align 8
  %77 = icmp ult i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i64, i64* @MIN_ZOOM, align 8
  store i64 %79, i64* @ZoomPercents, align 8
  br label %85

80:                                               ; preds = %75
  %81 = load i64*, i64** @ZoomSteps, align 8
  %82 = load i64, i64* %3, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* @ZoomPercents, align 8
  br label %85

85:                                               ; preds = %80, %78
  %86 = load i32, i32* @hToolBar, align 4
  %87 = load i32, i32* @TB_ENABLEBUTTON, align 4
  %88 = load i32, i32* @IDC_ZOOMP, align 4
  %89 = load i32, i32* @TRUE, align 4
  %90 = call i32 @SendMessage(i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load i64, i64* @ZoomPercents, align 8
  %92 = load i64, i64* @MIN_ZOOM, align 8
  %93 = icmp sle i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %85
  %95 = load i32, i32* @hToolBar, align 4
  %96 = load i32, i32* @TB_ENABLEBUTTON, align 4
  %97 = load i32, i32* @IDC_ZOOMM, align 4
  %98 = load i32, i32* @FALSE, align 4
  %99 = call i32 @SendMessage(i32 %95, i32 %96, i32 %97, i32 %98)
  br label %106

100:                                              ; preds = %85
  %101 = load i32, i32* @hToolBar, align 4
  %102 = load i32, i32* @TB_ENABLEBUTTON, align 4
  %103 = load i32, i32* @IDC_ZOOMM, align 4
  %104 = load i32, i32* @TRUE, align 4
  %105 = call i32 @SendMessage(i32 %101, i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %94
  br label %107

107:                                              ; preds = %106, %57
  %108 = load i32, i32* @hDispWnd, align 4
  %109 = load i32, i32* @TRUE, align 4
  %110 = call i32 @InvalidateRect(i32 %108, i32* null, i32 %109)
  ret void
}

declare dso_local i64 @ARRAYSIZE(i64*) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
