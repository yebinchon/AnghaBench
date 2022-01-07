; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_ui.c_AdjustForLowDPI.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_ui.c_AdjustForLowDPI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@AdjustForLowDPI.ddy = internal global i32 4, align 4
@fScale = common dso_local global float 0.000000e+00, align 4
@adjust_dpi_ids = common dso_local global i64** null, align 8
@IDC_QUICK_FORMAT = common dso_local global i64 0, align 8
@GW_HWNDPREV = common dso_local global i32 0, align 4
@section_vpos = common dso_local global i32* null, align 8
@advanced_device_section_height = common dso_local global i32 0, align 4
@advanced_format_section_height = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AdjustForLowDPI(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %8, align 4
  %9 = load float, float* @fScale, align 4
  %10 = fcmp oge float %9, 0x3FF4CCCCC0000000
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %128

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %94, %12
  %14 = load i32, i32* %3, align 4
  %15 = load i64**, i64*** @adjust_dpi_ids, align 8
  %16 = call i32 @ARRAYSIZE(i64** %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %97

18:                                               ; preds = %13
  %19 = load i32, i32* @AdjustForLowDPI.ddy, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %8, align 4
  %22 = load i64**, i64*** @adjust_dpi_ids, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64*, i64** %22, i64 %24
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IDC_QUICK_FORMAT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %18
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %90, %34
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 5
  br i1 %37, label %38, label %93

38:                                               ; preds = %35
  %39 = load i64**, i64*** @adjust_dpi_ids, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64*, i64** %39, i64 %41
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %93

50:                                               ; preds = %38
  %51 = load i32, i32* %2, align 4
  %52 = load i64**, i64*** @adjust_dpi_ids, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64*, i64** %52, i64 %54
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @GetDlgItem(i32 %51, i64 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @GetWindowRect(i32 %62, %struct.TYPE_3__* %5)
  %64 = load i32, i32* %2, align 4
  %65 = bitcast %struct.TYPE_3__* %5 to i32*
  %66 = call i32 @MapWindowPoints(i32* null, i32 %64, i32* %65, i32 2)
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @GW_HWNDPREV, align 4
  %69 = call i32 @GetNextWindow(i32 %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %80, %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %85, %87
  %89 = call i32 @SetWindowPos(i32 %70, i32 %71, i64 %73, i64 %78, i64 %83, i64 %88, i32 0)
  br label %90

90:                                               ; preds = %50
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %35

93:                                               ; preds = %49, %35
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %13

97:                                               ; preds = %13
  %98 = load i32, i32* @AdjustForLowDPI.ddy, align 4
  %99 = mul nsw i32 9, %98
  %100 = load i32*, i32** @section_vpos, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* @AdjustForLowDPI.ddy, align 4
  %105 = mul nsw i32 16, %104
  %106 = add nsw i32 %105, 1
  %107 = load i32*, i32** @section_vpos, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* @AdjustForLowDPI.ddy, align 4
  %112 = mul nsw i32 3, %111
  %113 = load i32, i32* @advanced_device_section_height, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* @advanced_device_section_height, align 4
  %115 = load i32, i32* @AdjustForLowDPI.ddy, align 4
  %116 = mul nsw i32 3, %115
  %117 = add nsw i32 %116, 1
  %118 = load i32, i32* @advanced_format_section_height, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* @advanced_format_section_height, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @AdjustForLowDPI.ddy, align 4
  %122 = mul nsw i32 2, %121
  %123 = add nsw i32 %120, %122
  %124 = call i32 @ResizeDialogs(i32 %123)
  %125 = load i32, i32* %2, align 4
  %126 = load i32, i32* @TRUE, align 4
  %127 = call i32 @InvalidateRect(i32 %125, i32* null, i32 %126)
  br label %128

128:                                              ; preds = %97, %11
  ret void
}

declare dso_local i32 @ARRAYSIZE(i64**) #1

declare dso_local i32 @GetDlgItem(i32, i64) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @MapWindowPoints(i32*, i32, i32*, i32) #1

declare dso_local i32 @GetNextWindow(i32, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32, i64, i64, i64, i64, i32) #1

declare dso_local i32 @ResizeDialogs(i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
