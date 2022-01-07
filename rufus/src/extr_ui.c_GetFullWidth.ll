; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_ui.c_GetFullWidth.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_ui.c_GetFullWidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@dbw = common dso_local global i32 0, align 4
@IDC_BOOT_SELECTION = common dso_local global i32 0, align 4
@hBootType = common dso_local global i32 0, align 4
@MSG_279 = common dso_local global i32 0, align 4
@ddw = common dso_local global i32 0, align 4
@bsw = common dso_local global i32 0, align 4
@MSG_281 = common dso_local global i32 0, align 4
@MSG_280 = common dso_local global i32 0, align 4
@IDS_DEVICE_TXT = common dso_local global i32 0, align 4
@fw = common dso_local global i32 0, align 4
@IDC_IMAGE_OPTION = common dso_local global i32 0, align 4
@MSG_117 = common dso_local global i32 0, align 4
@MSG_118 = common dso_local global i32 0, align 4
@full_width_checkboxes = common dso_local global i32* null, align 8
@hw = common dso_local global i32 0, align 4
@sw = common dso_local global i32 0, align 4
@bw = common dso_local global i32 0, align 4
@ssw = common dso_local global i32 0, align 4
@sbw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetFullWidth(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @GetWindowRect(i32 %9, %struct.TYPE_5__* %3)
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %12, %14
  store i32 %15, i32* @dbw, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @GetClientRect(i32 %16, %struct.TYPE_5__* %3)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %19, %21
  %23 = load i32, i32* @dbw, align 4
  %24 = sub nsw i32 %23, %22
  store i32 %24, i32* @dbw, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @IDC_BOOT_SELECTION, align 4
  %27 = call i32 @GetDlgItem(i32 %25, i32 %26)
  %28 = call i32 @GetWindowRect(i32 %27, %struct.TYPE_5__* %3)
  %29 = load i32, i32* %2, align 4
  %30 = bitcast %struct.TYPE_5__* %3 to i32*
  %31 = call i32 @MapWindowPoints(i32* null, i32 %29, i32* %30, i32 2)
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %33, %35
  %37 = load i32, i32* @hBootType, align 4
  %38 = load i32, i32* @MSG_279, align 4
  %39 = call i32 (i32, ...) @lmprintf(i32 %38)
  %40 = call i32 @GetTextSize(i32 %37, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ddw, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i32 @max(i32 %36, i32 %45)
  store i32 %46, i32* @bsw, align 4
  %47 = load i32, i32* @bsw, align 4
  %48 = load i32, i32* @hBootType, align 4
  %49 = load i32, i32* @MSG_281, align 4
  %50 = load i32, i32* @MSG_280, align 4
  %51 = call i32 (i32, ...) @lmprintf(i32 %50)
  %52 = call i32 (i32, ...) @lmprintf(i32 %49, i32 %51)
  %53 = call i32 @GetTextSize(i32 %48, i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ddw, align 4
  %58 = add nsw i32 %56, %57
  %59 = call i32 @max(i32 %47, i32 %58)
  store i32 %59, i32* @bsw, align 4
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @IDS_DEVICE_TXT, align 4
  %62 = call i32 @GetDlgItem(i32 %60, i32 %61)
  %63 = call i32 @GetWindowRect(i32 %62, %struct.TYPE_5__* %3)
  %64 = load i32, i32* %2, align 4
  %65 = bitcast %struct.TYPE_5__* %3 to i32*
  %66 = call i32 @MapWindowPoints(i32* null, i32 %64, i32* %65, i32 2)
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %68, %70
  %72 = load i32, i32* @ddw, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* @fw, align 4
  %74 = load i32, i32* @fw, align 4
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @IDC_IMAGE_OPTION, align 4
  %77 = call i32 @GetDlgItem(i32 %75, i32 %76)
  %78 = load i32, i32* @MSG_117, align 4
  %79 = call i32 (i32, ...) @lmprintf(i32 %78)
  %80 = call i32 @GetTextSize(i32 %77, i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @max(i32 %74, i32 %83)
  store i32 %84, i32* @fw, align 4
  %85 = load i32, i32* @fw, align 4
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* @IDC_IMAGE_OPTION, align 4
  %88 = call i32 @GetDlgItem(i32 %86, i32 %87)
  %89 = load i32, i32* @MSG_118, align 4
  %90 = call i32 (i32, ...) @lmprintf(i32 %89)
  %91 = call i32 @GetTextSize(i32 %88, i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %91, i32* %92, align 4
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @max(i32 %85, i32 %94)
  store i32 %95, i32* @fw, align 4
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %111, %1
  %97 = load i32, i32* %4, align 4
  %98 = load i32*, i32** @full_width_checkboxes, align 8
  %99 = call i32 @ARRAYSIZE(i32* %98)
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %96
  %102 = load i32, i32* @fw, align 4
  %103 = load i32, i32* %2, align 4
  %104 = load i32*, i32** @full_width_checkboxes, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @GetTextWidth(i32 %103, i32 %108)
  %110 = call i32 @max(i32 %102, i32 %109)
  store i32 %110, i32* @fw, align 4
  br label %111

111:                                              ; preds = %101
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %96

114:                                              ; preds = %96
  %115 = load i32, i32* @ddw, align 4
  %116 = load i32, i32* @fw, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* @fw, align 4
  %118 = load i32, i32* @fw, align 4
  %119 = load i32, i32* @hw, align 4
  %120 = mul nsw i32 2, %119
  %121 = load i32, i32* @sw, align 4
  %122 = add nsw i32 %120, %121
  %123 = call i32 @max(i32 %118, i32 %122)
  store i32 %123, i32* @fw, align 4
  %124 = load i32, i32* @bw, align 4
  %125 = load i32, i32* @fw, align 4
  %126 = load i32, i32* @ssw, align 4
  %127 = mul nsw i32 2, %126
  %128 = sub nsw i32 %125, %127
  %129 = load i32, i32* @sw, align 4
  %130 = sub nsw i32 %128, %129
  %131 = sdiv i32 %130, 4
  %132 = call i32 @max(i32 %124, i32 %131)
  store i32 %132, i32* @bw, align 4
  %133 = load i32, i32* @bw, align 4
  %134 = load i32, i32* @bsw, align 4
  %135 = load i32, i32* @sbw, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32, i32* @sw, align 4
  %138 = sub nsw i32 %136, %137
  %139 = sdiv i32 %138, 3
  %140 = call i32 @max(i32 %133, i32 %139)
  store i32 %140, i32* @bw, align 4
  %141 = load i32, i32* @bw, align 4
  %142 = load i32, i32* @hw, align 4
  %143 = sdiv i32 %142, 2
  %144 = load i32, i32* @ssw, align 4
  %145 = sub nsw i32 %143, %144
  %146 = call i32 @max(i32 %141, i32 %145)
  store i32 %146, i32* @bw, align 4
  %147 = load i32, i32* @hw, align 4
  %148 = load i32, i32* @bw, align 4
  %149 = mul nsw i32 2, %148
  %150 = load i32, i32* @ssw, align 4
  %151 = add nsw i32 %149, %150
  %152 = call i32 @max(i32 %147, i32 %151)
  store i32 %152, i32* @hw, align 4
  %153 = load i32, i32* @fw, align 4
  %154 = load i32, i32* @hw, align 4
  %155 = mul nsw i32 2, %154
  %156 = load i32, i32* @sw, align 4
  %157 = add nsw i32 %155, %156
  %158 = call i32 @max(i32 %153, i32 %157)
  store i32 %158, i32* @fw, align 4
  %159 = load i32, i32* @bsw, align 4
  %160 = load i32, i32* @fw, align 4
  %161 = load i32, i32* @bw, align 4
  %162 = sub nsw i32 %160, %161
  %163 = load i32, i32* @ssw, align 4
  %164 = mul nsw i32 2, %163
  %165 = sub nsw i32 %162, %164
  %166 = load i32, i32* @sbw, align 4
  %167 = sub nsw i32 %165, %166
  %168 = call i32 @max(i32 %159, i32 %167)
  store i32 %168, i32* @bsw, align 4
  ret void
}

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @MapWindowPoints(i32*, i32, i32*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @GetTextSize(i32, i32) #1

declare dso_local i32 @lmprintf(i32, ...) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @GetTextWidth(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
