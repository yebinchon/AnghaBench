; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmssamp.c_CreateRoundtripXForm.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmssamp.c_CreateRoundtripXForm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@__const.CreateRoundtripXForm.States = private unnamed_addr constant [4 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], align 16
@INTENT_RELATIVE_COLORIMETRIC = common dso_local global i32 0, align 4
@TYPE_Lab_DBL = common dso_local global i32 0, align 4
@cmsFLAGS_NOCACHE = common dso_local global i32 0, align 4
@cmsFLAGS_NOOPTIMIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @CreateRoundtripXForm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateRoundtripXForm(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca [4 x double], align 16
  %11 = alloca [4 x i32], align 16
  %12 = alloca [4 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @cmsCreateLab4Profile(i32 %13, i32* null)
  store i32 %14, i32* %7, align 4
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %21, align 4
  %23 = bitcast [4 x double]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([4 x double]* @__const.CreateRoundtripXForm.States to i8*), i64 32, i1 false)
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = load i32, i32* %5, align 4
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %32, i32* %33, align 16
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %44 = getelementptr inbounds [4 x double], [4 x double]* %10, i64 0, i64 0
  %45 = load i32, i32* @TYPE_Lab_DBL, align 4
  %46 = load i32, i32* @TYPE_Lab_DBL, align 4
  %47 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %48 = load i32, i32* @cmsFLAGS_NOOPTIMIZE, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @cmsCreateExtendedTransform(i32 %40, i32 4, i32* %41, i32* %42, i32* %43, double* %44, i32* null, i32 0, i32 %45, i32 %46, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @cmsCloseProfile(i32 %51, i32 %52)
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @cmsCreateLab4Profile(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cmsCreateExtendedTransform(i32, i32, i32*, i32*, i32*, double*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
