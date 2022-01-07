; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_gamma-quartz.c_quartz_set_temperature_for_display.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_gamma-quartz.c_quartz_set_temperature_for_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@kCGErrorSuccess = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32*, i32)* @quartz_set_temperature_for_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quartz_set_temperature_for_display(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 3, %34
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call float* @malloc(i32 %38)
  store float* %39, float** %11, align 8
  %40 = load float*, float** %11, align 8
  %41 = icmp eq float* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %131

44:                                               ; preds = %4
  %45 = load float*, float** %11, align 8
  %46 = load i32, i32* %10, align 4
  %47 = mul nsw i32 0, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %45, i64 %48
  store float* %49, float** %12, align 8
  %50 = load float*, float** %11, align 8
  %51 = load i32, i32* %10, align 4
  %52 = mul nsw i32 1, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %50, i64 %53
  store float* %54, float** %13, align 8
  %55 = load float*, float** %11, align 8
  %56 = load i32, i32* %10, align 4
  %57 = mul nsw i32 2, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %55, i64 %58
  store float* %59, float** %14, align 8
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %44
  %63 = load float*, float** %11, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = mul nsw i32 3, %72
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memcpy(float* %63, i32 %71, i32 %76)
  br label %109

78:                                               ; preds = %44
  store i32 0, i32* %15, align 4
  br label %79

79:                                               ; preds = %105, %78
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %79
  %84 = load i32, i32* %15, align 4
  %85 = sitofp i32 %84 to double
  %86 = load i32, i32* %10, align 4
  %87 = sitofp i32 %86 to double
  %88 = fdiv double %85, %87
  %89 = fptrunc double %88 to float
  store float %89, float* %16, align 4
  %90 = load float, float* %16, align 4
  %91 = load float*, float** %12, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %91, i64 %93
  store float %90, float* %94, align 4
  %95 = load float, float* %16, align 4
  %96 = load float*, float** %13, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %96, i64 %98
  store float %95, float* %99, align 4
  %100 = load float, float* %16, align 4
  %101 = load float*, float** %14, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %101, i64 %103
  store float %100, float* %104, align 4
  br label %105

105:                                              ; preds = %83
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %15, align 4
  br label %79

108:                                              ; preds = %79
  br label %109

109:                                              ; preds = %108, %62
  %110 = load float*, float** %12, align 8
  %111 = load float*, float** %13, align 8
  %112 = load float*, float** %14, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @colorramp_fill_float(float* %110, float* %111, float* %112, i32 %113, i32* %114)
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load float*, float** %12, align 8
  %119 = load float*, float** %13, align 8
  %120 = load float*, float** %14, align 8
  %121 = call i64 @CGSetDisplayTransferByTable(i32 %116, i32 %117, float* %118, float* %119, float* %120)
  store i64 %121, i64* %17, align 8
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* @kCGErrorSuccess, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %109
  %126 = load float*, float** %11, align 8
  %127 = call i32 @free(float* %126)
  br label %131

128:                                              ; preds = %109
  %129 = load float*, float** %11, align 8
  %130 = call i32 @free(float* %129)
  br label %131

131:                                              ; preds = %128, %125, %42
  ret void
}

declare dso_local float* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memcpy(float*, i32, i32) #1

declare dso_local i32 @colorramp_fill_float(float*, float*, float*, i32, i32*) #1

declare dso_local i64 @CGSetDisplayTransferByTable(i32, i32, float*, float*, float*) #1

declare dso_local i32 @free(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
