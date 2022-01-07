; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckSE.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckSE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_RGBA_8 = common dso_local global i32 0, align 4
@TYPE_RGBA_16_SE = common dso_local global i32 0, align 4
@INTENT_RELATIVE_COLORIMETRIC = common dso_local global i32 0, align 4
@cmsFLAGS_COPY_ALPHA = common dso_local global i32 0, align 4
@__const.CheckSE.rgba = private unnamed_addr constant [4 x i32] [i32 40, i32 41, i32 41, i32 250], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckSE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckSE() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca [4 x i32], align 16
  %7 = call i32 (...) @Create_AboveRGB()
  store i32 %7, i32* %2, align 4
  %8 = call i32 (...) @DbgThread()
  %9 = call i32 @cmsCreate_sRGBProfile(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = call i32 (...) @DbgThread()
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @TYPE_RGBA_8, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @TYPE_RGBA_16_SE, align 4
  %15 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %16 = load i32, i32* @cmsFLAGS_COPY_ALPHA, align 4
  %17 = call i32 @cmsCreateTransform(i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([4 x i32]* @__const.CheckSE.rgba to i8*), i64 16, i1 false)
  %19 = call i32 (...) @DbgThread()
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %23 = call i32 @cmsDoTransform(i32 %19, i32 %20, i32* %21, i32* %22, i32 1)
  %24 = call i32 (...) @DbgThread()
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @cmsCloseProfile(i32 %24, i32 %25)
  %27 = call i32 (...) @DbgThread()
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @cmsCloseProfile(i32 %27, i32 %28)
  %30 = call i32 (...) @DbgThread()
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @cmsDeleteTransform(i32 %30, i32 %31)
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = icmp ne i32 %34, 63010
  br i1 %35, label %44, label %36

36:                                               ; preds = %0
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 32548
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 32548
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %36, %0
  store i32 0, i32* %1, align 4
  br label %46

45:                                               ; preds = %40
  store i32 1, i32* %1, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i32 @Create_AboveRGB(...) #1

declare dso_local i32 @cmsCreate_sRGBProfile(i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsCreateTransform(i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cmsDoTransform(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
