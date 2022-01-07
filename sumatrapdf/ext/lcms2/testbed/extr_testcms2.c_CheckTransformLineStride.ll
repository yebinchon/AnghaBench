; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckTransformLineStride.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckTransformLineStride.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.CheckTransformLineStride.buf1 = private unnamed_addr constant [28 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0], align 16
@__const.CheckTransformLineStride.buf2 = private unnamed_addr constant [36 x i32] [i32 255, i32 255, i32 255, i32 1, i32 255, i32 255, i32 255, i32 1, i32 0, i32 255, i32 255, i32 255, i32 1, i32 255, i32 255, i32 255, i32 1, i32 0, i32 255, i32 255, i32 255, i32 1, i32 255, i32 255, i32 255, i32 1, i32 0, i32 255, i32 255, i32 255, i32 1, i32 255, i32 255, i32 255, i32 1, i32 0], align 16
@__const.CheckTransformLineStride.buf3 = private unnamed_addr constant [36 x i32] [i32 65535, i32 65535, i32 65535, i32 257, i32 65535, i32 65535, i32 65535, i32 257, i32 0, i32 65535, i32 65535, i32 65535, i32 257, i32 65535, i32 65535, i32 65535, i32 257, i32 0, i32 65535, i32 65535, i32 65535, i32 257, i32 65535, i32 65535, i32 65535, i32 257, i32 0, i32 65535, i32 65535, i32 65535, i32 257, i32 65535, i32 65535, i32 65535, i32 257, i32 0], align 16
@.str = private unnamed_addr constant [12 x i8] c"ibm-t61.icc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@TYPE_RGB_8 = common dso_local global i32 0, align 4
@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4
@cmsFLAGS_COPY_ALPHA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed transform line stride on RGB8\00", align 1
@TYPE_RGBA_8 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed transform line stride on RGBA8\00", align 1
@TYPE_RGBA_16 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed transform line stride on RGBA16\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckTransformLineStride to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckTransformLineStride() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [28 x i32], align 16
  %6 = alloca [36 x i32], align 16
  %7 = alloca [36 x i32], align 16
  %8 = alloca [1024 x i32], align 16
  %9 = bitcast [28 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([28 x i32]* @__const.CheckTransformLineStride.buf1 to i8*), i64 112, i1 false)
  %10 = bitcast [36 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([36 x i32]* @__const.CheckTransformLineStride.buf2 to i8*), i64 144, i1 false)
  %11 = bitcast [36 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([36 x i32]* @__const.CheckTransformLineStride.buf3 to i8*), i64 144, i1 false)
  %12 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %13 = call i32 @memset(i32* %12, i32 0, i32 4096)
  %14 = call i32 (...) @DbgThread()
  %15 = call i32* @cmsCreate_sRGBProfile(i32 %14)
  store i32* %15, i32** %2, align 8
  %16 = call i32 (...) @DbgThread()
  %17 = call i32* @cmsOpenProfileFromFile(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
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
  br label %153

24:                                               ; preds = %20
  %25 = call i32 (...) @DbgThread()
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @TYPE_RGB_8, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @TYPE_RGB_8, align 4
  %30 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %31 = load i32, i32* @cmsFLAGS_COPY_ALPHA, align 4
  %32 = call i32 @cmsCreateTransform(i32 %25, i32* %26, i32 %27, i32* %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = call i32 (...) @DbgThread()
  %34 = load i32, i32* %4, align 4
  %35 = getelementptr inbounds [28 x i32], [28 x i32]* %5, i64 0, i64 0
  %36 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %37 = call i32 @cmsDoTransformLineStride(i32 %33, i32 %34, i32* %35, i32* %36, i32 2, i32 4, i32 7, i32 7, i32 0, i32 0)
  %38 = call i32 (...) @DbgThread()
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @cmsDeleteTransform(i32 %38, i32 %39)
  %41 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %42 = getelementptr inbounds [28 x i32], [28 x i32]* %5, i64 0, i64 0
  %43 = call i64 @memcmp(i32* %41, i32* %42, i32 112)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %24
  %46 = call i32 @Fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 (...) @DbgThread()
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @cmsCloseProfile(i32 %47, i32* %48)
  %50 = call i32 (...) @DbgThread()
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @cmsCloseProfile(i32 %50, i32* %51)
  store i32 0, i32* %1, align 4
  br label %153

53:                                               ; preds = %24
  %54 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %55 = call i32 @memset(i32* %54, i32 0, i32 4096)
  %56 = call i32 (...) @DbgThread()
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* @TYPE_RGBA_8, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* @TYPE_RGBA_8, align 4
  %61 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %62 = load i32, i32* @cmsFLAGS_COPY_ALPHA, align 4
  %63 = call i32 @cmsCreateTransform(i32 %56, i32* %57, i32 %58, i32* %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = call i32 (...) @DbgThread()
  %65 = load i32, i32* %4, align 4
  %66 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 0
  %67 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %68 = call i32 @cmsDoTransformLineStride(i32 %64, i32 %65, i32* %66, i32* %67, i32 2, i32 4, i32 9, i32 9, i32 0, i32 0)
  %69 = call i32 (...) @DbgThread()
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @cmsDeleteTransform(i32 %69, i32 %70)
  %72 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %73 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 0
  %74 = call i64 @memcmp(i32* %72, i32* %73, i32 144)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %53
  %77 = call i32 (...) @DbgThread()
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @cmsCloseProfile(i32 %77, i32* %78)
  %80 = call i32 (...) @DbgThread()
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @cmsCloseProfile(i32 %80, i32* %81)
  %83 = call i32 @Fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %153

84:                                               ; preds = %53
  %85 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %86 = call i32 @memset(i32* %85, i32 0, i32 4096)
  %87 = call i32 (...) @DbgThread()
  %88 = load i32*, i32** %2, align 8
  %89 = load i32, i32* @TYPE_RGBA_16, align 4
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* @TYPE_RGBA_16, align 4
  %92 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %93 = load i32, i32* @cmsFLAGS_COPY_ALPHA, align 4
  %94 = call i32 @cmsCreateTransform(i32 %87, i32* %88, i32 %89, i32* %90, i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %4, align 4
  %95 = call i32 (...) @DbgThread()
  %96 = load i32, i32* %4, align 4
  %97 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 0
  %98 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %99 = call i32 @cmsDoTransformLineStride(i32 %95, i32 %96, i32* %97, i32* %98, i32 2, i32 4, i32 18, i32 18, i32 0, i32 0)
  %100 = call i32 (...) @DbgThread()
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @cmsDeleteTransform(i32 %100, i32 %101)
  %103 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %104 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 0
  %105 = call i64 @memcmp(i32* %103, i32* %104, i32 144)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %84
  %108 = call i32 (...) @DbgThread()
  %109 = load i32*, i32** %2, align 8
  %110 = call i32 @cmsCloseProfile(i32 %108, i32* %109)
  %111 = call i32 (...) @DbgThread()
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @cmsCloseProfile(i32 %111, i32* %112)
  %114 = call i32 @Fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %153

115:                                              ; preds = %84
  %116 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %117 = call i32 @memset(i32* %116, i32 0, i32 4096)
  %118 = call i32 (...) @DbgThread()
  %119 = load i32*, i32** %2, align 8
  %120 = load i32, i32* @TYPE_RGBA_8, align 4
  %121 = load i32*, i32** %3, align 8
  %122 = load i32, i32* @TYPE_RGBA_16, align 4
  %123 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %124 = load i32, i32* @cmsFLAGS_COPY_ALPHA, align 4
  %125 = call i32 @cmsCreateTransform(i32 %118, i32* %119, i32 %120, i32* %121, i32 %122, i32 %123, i32 %124)
  store i32 %125, i32* %4, align 4
  %126 = call i32 (...) @DbgThread()
  %127 = load i32, i32* %4, align 4
  %128 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 0
  %129 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %130 = call i32 @cmsDoTransformLineStride(i32 %126, i32 %127, i32* %128, i32* %129, i32 2, i32 4, i32 9, i32 18, i32 0, i32 0)
  %131 = call i32 (...) @DbgThread()
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @cmsDeleteTransform(i32 %131, i32 %132)
  %134 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %135 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 0
  %136 = call i64 @memcmp(i32* %134, i32* %135, i32 144)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %115
  %139 = call i32 (...) @DbgThread()
  %140 = load i32*, i32** %2, align 8
  %141 = call i32 @cmsCloseProfile(i32 %139, i32* %140)
  %142 = call i32 (...) @DbgThread()
  %143 = load i32*, i32** %3, align 8
  %144 = call i32 @cmsCloseProfile(i32 %142, i32* %143)
  %145 = call i32 @Fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %153

146:                                              ; preds = %115
  %147 = call i32 (...) @DbgThread()
  %148 = load i32*, i32** %2, align 8
  %149 = call i32 @cmsCloseProfile(i32 %147, i32* %148)
  %150 = call i32 (...) @DbgThread()
  %151 = load i32*, i32** %3, align 8
  %152 = call i32 @cmsCloseProfile(i32 %150, i32* %151)
  store i32 1, i32* %1, align 4
  br label %153

153:                                              ; preds = %146, %138, %107, %76, %45, %23
  %154 = load i32, i32* %1, align 4
  ret i32 %154
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32* @cmsCreate_sRGBProfile(i32) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i32* @cmsOpenProfileFromFile(i32, i8*, i8*) #2

declare dso_local i32 @cmsCreateTransform(i32, i32*, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @cmsDoTransformLineStride(i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @cmsDeleteTransform(i32, i32) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @Fail(i8*) #2

declare dso_local i32 @cmsCloseProfile(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
