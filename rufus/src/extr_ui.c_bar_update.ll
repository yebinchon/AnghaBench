; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_ui.c_bar_update.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_ui.c_bar_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bar_progress = type { i64, i64, i64, %struct.bar_progress_hist }
%struct.bar_progress_hist = type { i64, i64*, i64, i64*, i32 }

@SPEED_SAMPLE_MIN = common dso_local global i64 0, align 8
@STALL_START_TIME = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SPEED_HISTORY_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bar_progress*, i64, i64)* @bar_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bar_update(%struct.bar_progress* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bar_progress*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bar_progress_hist*, align 8
  %8 = alloca i64, align 8
  store %struct.bar_progress* %0, %struct.bar_progress** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.bar_progress*, %struct.bar_progress** %4, align 8
  %10 = getelementptr inbounds %struct.bar_progress, %struct.bar_progress* %9, i32 0, i32 3
  store %struct.bar_progress_hist* %10, %struct.bar_progress_hist** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.bar_progress*, %struct.bar_progress** %4, align 8
  %13 = getelementptr inbounds %struct.bar_progress, %struct.bar_progress* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.bar_progress*, %struct.bar_progress** %4, align 8
  %18 = getelementptr inbounds %struct.bar_progress, %struct.bar_progress* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, %16
  store i64 %20, i64* %18, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @SPEED_SAMPLE_MIN, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %123

25:                                               ; preds = %3
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @STALL_START_TIME, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i64, i64* @TRUE, align 8
  %34 = load %struct.bar_progress*, %struct.bar_progress** %4, align 8
  %35 = getelementptr inbounds %struct.bar_progress, %struct.bar_progress* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.bar_progress_hist*, %struct.bar_progress_hist** %7, align 8
  %37 = call i32 @memset(%struct.bar_progress_hist* %36, i32 0, i32 40)
  %38 = load %struct.bar_progress*, %struct.bar_progress** %4, align 8
  %39 = getelementptr inbounds %struct.bar_progress, %struct.bar_progress* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %32, %28
  br label %123

41:                                               ; preds = %25
  %42 = load %struct.bar_progress*, %struct.bar_progress** %4, align 8
  %43 = getelementptr inbounds %struct.bar_progress, %struct.bar_progress* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i64, i64* @FALSE, align 8
  %48 = load %struct.bar_progress*, %struct.bar_progress** %4, align 8
  %49 = getelementptr inbounds %struct.bar_progress, %struct.bar_progress* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  store i64 1000, i64* %8, align 8
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.bar_progress_hist*, %struct.bar_progress_hist** %7, align 8
  %52 = getelementptr inbounds %struct.bar_progress_hist, %struct.bar_progress_hist* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.bar_progress_hist*, %struct.bar_progress_hist** %7, align 8
  %55 = getelementptr inbounds %struct.bar_progress_hist, %struct.bar_progress_hist* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bar_progress_hist*, %struct.bar_progress_hist** %7, align 8
  %60 = getelementptr inbounds %struct.bar_progress_hist, %struct.bar_progress_hist* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load %struct.bar_progress_hist*, %struct.bar_progress_hist** %7, align 8
  %64 = getelementptr inbounds %struct.bar_progress_hist, %struct.bar_progress_hist* %63, i32 0, i32 3
  %65 = load i64*, i64** %64, align 8
  %66 = load %struct.bar_progress_hist*, %struct.bar_progress_hist** %7, align 8
  %67 = getelementptr inbounds %struct.bar_progress_hist, %struct.bar_progress_hist* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i64, i64* %65, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.bar_progress_hist*, %struct.bar_progress_hist** %7, align 8
  %72 = getelementptr inbounds %struct.bar_progress_hist, %struct.bar_progress_hist* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.bar_progress_hist*, %struct.bar_progress_hist** %7, align 8
  %79 = getelementptr inbounds %struct.bar_progress_hist, %struct.bar_progress_hist* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load %struct.bar_progress_hist*, %struct.bar_progress_hist** %7, align 8
  %82 = getelementptr inbounds %struct.bar_progress_hist, %struct.bar_progress_hist* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  store i64 %77, i64* %84, align 8
  %85 = load %struct.bar_progress*, %struct.bar_progress** %4, align 8
  %86 = getelementptr inbounds %struct.bar_progress, %struct.bar_progress* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.bar_progress_hist*, %struct.bar_progress_hist** %7, align 8
  %89 = getelementptr inbounds %struct.bar_progress_hist, %struct.bar_progress_hist* %88, i32 0, i32 3
  %90 = load i64*, i64** %89, align 8
  %91 = load %struct.bar_progress_hist*, %struct.bar_progress_hist** %7, align 8
  %92 = getelementptr inbounds %struct.bar_progress_hist, %struct.bar_progress_hist* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i64, i64* %90, i64 %93
  store i64 %87, i64* %94, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load %struct.bar_progress_hist*, %struct.bar_progress_hist** %7, align 8
  %97 = getelementptr inbounds %struct.bar_progress_hist, %struct.bar_progress_hist* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, %95
  store i64 %99, i64* %97, align 8
  %100 = load %struct.bar_progress*, %struct.bar_progress** %4, align 8
  %101 = getelementptr inbounds %struct.bar_progress, %struct.bar_progress* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.bar_progress_hist*, %struct.bar_progress_hist** %7, align 8
  %104 = getelementptr inbounds %struct.bar_progress_hist, %struct.bar_progress_hist* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %102
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load %struct.bar_progress*, %struct.bar_progress** %4, align 8
  %111 = getelementptr inbounds %struct.bar_progress, %struct.bar_progress* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.bar_progress*, %struct.bar_progress** %4, align 8
  %113 = getelementptr inbounds %struct.bar_progress, %struct.bar_progress* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  %114 = load %struct.bar_progress_hist*, %struct.bar_progress_hist** %7, align 8
  %115 = getelementptr inbounds %struct.bar_progress_hist, %struct.bar_progress_hist* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %115, align 8
  %118 = load i64, i64* @SPEED_HISTORY_SIZE, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %50
  %121 = load %struct.bar_progress_hist*, %struct.bar_progress_hist** %7, align 8
  %122 = getelementptr inbounds %struct.bar_progress_hist, %struct.bar_progress_hist* %121, i32 0, i32 2
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %24, %40, %120, %50
  ret void
}

declare dso_local i32 @memset(%struct.bar_progress_hist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
