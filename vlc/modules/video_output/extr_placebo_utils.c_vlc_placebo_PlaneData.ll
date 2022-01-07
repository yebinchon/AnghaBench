; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_placebo_utils.c_vlc_placebo_PlaneData.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_placebo_utils.c_vlc_placebo_PlaneData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.pl_plane_data = type { i64, i64, i64, %struct.pl_buf*, i32 }
%struct.pl_buf = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_placebo_PlaneData(%struct.TYPE_7__* %0, %struct.pl_plane_data* %1, %struct.pl_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.pl_plane_data*, align 8
  %7 = alloca %struct.pl_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.pl_plane_data* %1, %struct.pl_plane_data** %6, align 8
  store %struct.pl_buf* %2, %struct.pl_buf** %7, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %12 = load %struct.pl_plane_data*, %struct.pl_plane_data** %6, align 8
  %13 = call i32 @vlc_placebo_PlaneFormat(i32* %11, %struct.pl_plane_data* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %131

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %126, %17
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %129

29:                                               ; preds = %25
  %30 = load %struct.pl_plane_data*, %struct.pl_plane_data** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.pl_plane_data, %struct.pl_plane_data* %30, i64 %32
  %34 = getelementptr inbounds %struct.pl_plane_data, %struct.pl_plane_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %35, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.pl_plane_data*, %struct.pl_plane_data** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.pl_plane_data, %struct.pl_plane_data* %55, i64 %57
  %59 = getelementptr inbounds %struct.pl_plane_data, %struct.pl_plane_data* %58, i32 0, i32 4
  store i32 %54, i32* %59, align 8
  %60 = load %struct.pl_buf*, %struct.pl_buf** %7, align 8
  %61 = icmp ne %struct.pl_buf* %60, null
  br i1 %61, label %62, label %111

62:                                               ; preds = %29
  %63 = load %struct.pl_buf*, %struct.pl_buf** %7, align 8
  %64 = getelementptr inbounds %struct.pl_buf, %struct.pl_buf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.pl_buf*, %struct.pl_buf** %7, align 8
  %76 = getelementptr inbounds %struct.pl_buf, %struct.pl_buf* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = load %struct.pl_buf*, %struct.pl_buf** %7, align 8
  %80 = getelementptr inbounds %struct.pl_buf, %struct.pl_buf* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %78, %82
  %84 = icmp sle i64 %74, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.pl_buf*, %struct.pl_buf** %7, align 8
  %88 = load %struct.pl_plane_data*, %struct.pl_plane_data** %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.pl_plane_data, %struct.pl_plane_data* %88, i64 %90
  %92 = getelementptr inbounds %struct.pl_plane_data, %struct.pl_plane_data* %91, i32 0, i32 3
  store %struct.pl_buf* %87, %struct.pl_buf** %92, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.pl_buf*, %struct.pl_buf** %7, align 8
  %102 = getelementptr inbounds %struct.pl_buf, %struct.pl_buf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = sub i64 %100, %104
  %106 = load %struct.pl_plane_data*, %struct.pl_plane_data** %6, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.pl_plane_data, %struct.pl_plane_data* %106, i64 %108
  %110 = getelementptr inbounds %struct.pl_plane_data, %struct.pl_plane_data* %109, i32 0, i32 1
  store i64 %105, i64* %110, align 8
  br label %125

111:                                              ; preds = %29
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.pl_plane_data*, %struct.pl_plane_data** %6, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.pl_plane_data, %struct.pl_plane_data* %120, i64 %122
  %124 = getelementptr inbounds %struct.pl_plane_data, %struct.pl_plane_data* %123, i32 0, i32 2
  store i64 %119, i64* %124, align 8
  br label %125

125:                                              ; preds = %111, %62
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %25

129:                                              ; preds = %25
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %129, %16
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @vlc_placebo_PlaneFormat(i32*, %struct.pl_plane_data*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
