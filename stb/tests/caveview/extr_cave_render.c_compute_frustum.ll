; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_compute_frustum.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_compute_frustum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float }

@GL_MODELVIEW_MATRIX = common dso_local global i32 0, align 4
@GL_PROJECTION_MATRIX = common dso_local global i32 0, align 4
@frustum = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @compute_frustum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_frustum() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x [4 x i64]], align 16
  %3 = alloca [4 x [4 x i64]], align 16
  %4 = alloca [4 x [4 x i64]], align 16
  %5 = load i32, i32* @GL_MODELVIEW_MATRIX, align 4
  %6 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %2, i64 0, i64 0
  %7 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0
  %8 = call i32 @glGetDoublev(i32 %5, i64* %7)
  %9 = load i32, i32* @GL_PROJECTION_MATRIX, align 4
  %10 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %3, i64 0, i64 0
  %11 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %12 = call i32 @glGetDoublev(i32 %9, i64* %11)
  %13 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %4, i64 0, i64 0
  %14 = bitcast [4 x i64]* %13 to i64**
  %15 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %3, i64 0, i64 0
  %16 = bitcast [4 x i64]* %15 to i64**
  %17 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %2, i64 0, i64 0
  %18 = bitcast [4 x i64]* %17 to i64**
  %19 = call i32 @matd_mul(i64** %14, i64** %16, i64** %18)
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %132, %0
  %21 = load i32, i32* %1, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %135

23:                                               ; preds = %20
  %24 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %4, i64 0, i64 3
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i64], [4 x i64]* %24, i64 0, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %4, i64 0, i64 0
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %29, i64 0, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %28, %33
  %35 = sitofp i64 %34 to float
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frustum, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  store float %35, float* %41, align 4
  %42 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %4, i64 0, i64 3
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %42, i64 0, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %4, i64 0, i64 0
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %47, i64 0, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %46, %51
  %53 = sitofp i64 %52 to float
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frustum, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %56, i64 %58
  store float %53, float* %59, align 4
  %60 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %4, i64 0, i64 3
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4 x i64], [4 x i64]* %60, i64 0, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %4, i64 0, i64 1
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x i64], [4 x i64]* %65, i64 0, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %64, %69
  %71 = sitofp i64 %70 to float
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frustum, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  store float %71, float* %77, align 4
  %78 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %4, i64 0, i64 3
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [4 x i64], [4 x i64]* %78, i64 0, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %4, i64 0, i64 1
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i64], [4 x i64]* %83, i64 0, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %82, %87
  %89 = sitofp i64 %88 to float
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frustum, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 3
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %1, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %92, i64 %94
  store float %89, float* %95, align 4
  %96 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %4, i64 0, i64 3
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x i64], [4 x i64]* %96, i64 0, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %4, i64 0, i64 2
  %102 = load i32, i32* %1, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x i64], [4 x i64]* %101, i64 0, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %100, %105
  %107 = sitofp i64 %106 to float
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frustum, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 4
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %110, i64 %112
  store float %107, float* %113, align 4
  %114 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %4, i64 0, i64 3
  %115 = load i32, i32* %1, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x i64], [4 x i64]* %114, i64 0, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %4, i64 0, i64 2
  %120 = load i32, i32* %1, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x i64], [4 x i64]* %119, i64 0, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %118, %123
  %125 = sitofp i64 %124 to float
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frustum, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 5
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %1, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %128, i64 %130
  store float %125, float* %131, align 4
  br label %132

132:                                              ; preds = %23
  %133 = load i32, i32* %1, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %1, align 4
  br label %20

135:                                              ; preds = %20
  ret void
}

declare dso_local i32 @glGetDoublev(i32, i64*) #1

declare dso_local i32 @matd_mul(i64**, i64**, i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
