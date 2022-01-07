; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckMatrixSimplify.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckMatrixSimplify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.CheckMatrixSimplify.buf = private unnamed_addr constant [3 x i8] c"\7F @", align 1
@.str = private unnamed_addr constant [12 x i8] c"ibm-t61.icc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@TYPE_RGB_8 = common dso_local global i32 0, align 4
@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckMatrixSimplify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckMatrixSimplify() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8], align 1
  %6 = bitcast [3 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.CheckMatrixSimplify.buf, i32 0, i32 0), i64 3, i1 false)
  %7 = call i32 (...) @DbgThread()
  %8 = call i32* @cmsCreate_sRGBProfile(i32 %7)
  store i32* %8, i32** %2, align 8
  %9 = call i32 (...) @DbgThread()
  %10 = call i32* @cmsOpenProfileFromFile(i32 %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %0
  %14 = load i32*, i32** %3, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %0
  store i32 0, i32* %1, align 4
  br label %56

17:                                               ; preds = %13
  %18 = call i32 (...) @DbgThread()
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @TYPE_RGB_8, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @TYPE_RGB_8, align 4
  %23 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %24 = call i32 @cmsCreateTransform(i32 %18, i32* %19, i32 %20, i32* %21, i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = call i32 (...) @DbgThread()
  %26 = load i32, i32* %4, align 4
  %27 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %28 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %29 = call i32 @cmsDoTransformStride(i32 %25, i32 %26, i8* %27, i8* %28, i32 1, i32 1)
  %30 = call i32 (...) @DbgThread()
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @cmsDeleteTransform(i32 %30, i32 %31)
  %33 = call i32 (...) @DbgThread()
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @cmsCloseProfile(i32 %33, i32* %34)
  %36 = call i32 (...) @DbgThread()
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @cmsCloseProfile(i32 %36, i32* %37)
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 144
  br i1 %42, label %43, label %53

43:                                               ; preds = %17
  %44 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 69
  br label %53

53:                                               ; preds = %48, %43, %17
  %54 = phi i1 [ false, %43 ], [ false, %17 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %1, align 4
  br label %56

56:                                               ; preds = %53, %16
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @cmsCreate_sRGBProfile(i32) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i32* @cmsOpenProfileFromFile(i32, i8*, i8*) #2

declare dso_local i32 @cmsCreateTransform(i32, i32*, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @cmsDoTransformStride(i32, i32, i8*, i8*, i32, i32) #2

declare dso_local i32 @cmsDeleteTransform(i32, i32) #2

declare dso_local i32 @cmsCloseProfile(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
