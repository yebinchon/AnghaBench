; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckGamutCheck.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckGamutCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Gamut check on floating point\00", align 1
@TYPE_RGB_FLT = common dso_local global i32 0, align 4
@INTENT_RELATIVE_COLORIMETRIC = common dso_local global i32 0, align 4
@cmsFLAGS_GAMUTCHECK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Gamut check on same profile failed\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Gamut check on 16 bits\00", align 1
@TYPE_RGB_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckGamutCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckGamutCheck() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [16 x i32], align 16
  %7 = bitcast [16 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 64, i1 false)
  %8 = bitcast i8* %7 to <{ i32, i32, i32, [13 x i32] }>*
  %9 = getelementptr inbounds <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, i32, [13 x i32] }>* %8, i32 0, i32 0
  store i32 57005, i32* %9, align 16
  %10 = getelementptr inbounds <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, i32, [13 x i32] }>* %8, i32 0, i32 1
  store i32 47806, i32* %10, align 4
  %11 = getelementptr inbounds <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, i32, [13 x i32] }>* %8, i32 0, i32 2
  store i32 64206, i32* %11, align 8
  %12 = call i32 (...) @DbgThread()
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %14 = call i32 @cmsSetAlarmCodes(i32 %12, i32* %13)
  %15 = call i32 (...) @DbgThread()
  %16 = call i32* @cmsCreate_sRGBProfile(i32 %15)
  store i32* %16, i32** %2, align 8
  %17 = call i32* (...) @Create_AboveRGB()
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %0
  %21 = load i32*, i32** %3, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %0
  store i32 0, i32* %1, align 4
  br label %77

24:                                               ; preds = %20
  %25 = call i32 @SubTest(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 (...) @DbgThread()
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @TYPE_RGB_FLT, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @TYPE_RGB_FLT, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %33 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %34 = load i32, i32* @cmsFLAGS_GAMUTCHECK, align 4
  %35 = call i32 @cmsCreateProofingTransform(i32 %26, i32* %27, i32 %28, i32* %29, i32 %30, i32* %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @CheckFloatlinearXFORM(i32 %36, i32 3)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %24
  %40 = call i32 (...) @DbgThread()
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @cmsCloseProfile(i32 %40, i32* %41)
  %43 = call i32 (...) @DbgThread()
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @cmsCloseProfile(i32 %43, i32* %44)
  %46 = call i32 (...) @DbgThread()
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @cmsDeleteTransform(i32 %46, i32 %47)
  %49 = call i32 @Fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %77

50:                                               ; preds = %24
  %51 = call i32 (...) @DbgThread()
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @cmsDeleteTransform(i32 %51, i32 %52)
  %54 = call i32 @SubTest(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 (...) @DbgThread()
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* @TYPE_RGB_16, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @TYPE_RGB_16, align 4
  %60 = load i32*, i32** %2, align 8
  %61 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %62 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %63 = load i32, i32* @cmsFLAGS_GAMUTCHECK, align 4
  %64 = call i32 @cmsCreateProofingTransform(i32 %55, i32* %56, i32 %57, i32* %58, i32 %59, i32* %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = call i32 (...) @DbgThread()
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @cmsCloseProfile(i32 %65, i32* %66)
  %68 = call i32 (...) @DbgThread()
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @cmsCloseProfile(i32 %68, i32* %69)
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @Check16linearXFORM(i32 %71, i32 3)
  store i32 %72, i32* %5, align 4
  %73 = call i32 (...) @DbgThread()
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @cmsDeleteTransform(i32 %73, i32 %74)
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %1, align 4
  br label %77

77:                                               ; preds = %50, %39, %23
  %78 = load i32, i32* %1, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cmsSetAlarmCodes(i32, i32*) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i32* @cmsCreate_sRGBProfile(i32) #2

declare dso_local i32* @Create_AboveRGB(...) #2

declare dso_local i32 @SubTest(i8*) #2

declare dso_local i32 @cmsCreateProofingTransform(i32, i32*, i32, i32*, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @CheckFloatlinearXFORM(i32, i32) #2

declare dso_local i32 @cmsCloseProfile(i32, i32*) #2

declare dso_local i32 @cmsDeleteTransform(i32, i32) #2

declare dso_local i32 @Fail(i8*) #2

declare dso_local i32 @Check16linearXFORM(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
