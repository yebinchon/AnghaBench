; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_adapt_adjust_sigma.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_adapt_adjust_sigma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range = type { float, float }

@.str = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@__const.adapt_adjust_sigma.adapt_range = private unnamed_addr constant %struct.range { float 0.000000e+00, float 0x3FD6666660000000 }, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@__const.adapt_adjust_sigma.adapt_range.2 = private unnamed_addr constant %struct.range { float 0.000000e+00, float 1.000000e+00 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i8*, float, %struct.range*)* @adapt_adjust_sigma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @adapt_adjust_sigma(i8* %0, float %1, %struct.range* %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  %7 = alloca %struct.range*, align 8
  %8 = alloca %struct.range, align 4
  %9 = alloca %struct.range, align 4
  store i8* %0, i8** %5, align 8
  store float %1, float* %6, align 4
  store %struct.range* %2, %struct.range** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %3
  %14 = bitcast %struct.range* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.range* @__const.adapt_adjust_sigma.adapt_range to i8*), i64 8, i1 false)
  %15 = load float, float* %6, align 4
  %16 = load %struct.range*, %struct.range** %7, align 8
  %17 = bitcast %struct.range* %16 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 4
  %19 = bitcast %struct.range* %8 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 4
  %21 = call float @GET_DRV_SIGMA(float %15, <2 x float> %18, <2 x float> %20)
  store float %21, float* %4, align 4
  br label %38

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = bitcast %struct.range* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 bitcast (%struct.range* @__const.adapt_adjust_sigma.adapt_range.2 to i8*), i64 8, i1 false)
  %28 = load float, float* %6, align 4
  %29 = load %struct.range*, %struct.range** %7, align 8
  %30 = bitcast %struct.range* %29 to <2 x float>*
  %31 = load <2 x float>, <2 x float>* %30, align 4
  %32 = bitcast %struct.range* %9 to <2 x float>*
  %33 = load <2 x float>, <2 x float>* %32, align 4
  %34 = call float @GET_DRV_SIGMA(float %28, <2 x float> %31, <2 x float> %33)
  store float %34, float* %4, align 4
  br label %38

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35
  %37 = load float, float* %6, align 4
  store float %37, float* %4, align 4
  br label %38

38:                                               ; preds = %36, %26, %13
  %39 = load float, float* %4, align 4
  ret float %39
}

declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local float @GET_DRV_SIGMA(float, <2 x float>, <2 x float>) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
