; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_IdentityMatrixProfile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_IdentityMatrixProfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@cmsSigColorSpaceClass = common dso_local global i32 0, align 4
@cmsSigXYZData = common dso_local global i32 0, align 4
@INTENT_RELATIVE_COLORIMETRIC = common dso_local global i32 0, align 4
@cmsSigMediaWhitePointTag = common dso_local global i32 0, align 4
@cmsAT_END = common dso_local global i32 0, align 4
@cmsSigDToB1Tag = common dso_local global i32 0, align 4
@cmsSigBToD1Tag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @IdentityMatrixProfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IdentityMatrixProfile(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %9 = bitcast %struct.TYPE_4__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 12, i1 false)
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @cmsCreateProfilePlaceholder(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = call i32 (...) @DbgThread()
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @cmsSetProfileVersion(i32 %12, i32 %13, double 4.300000e+00)
  %15 = call i32 (...) @DbgThread()
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @cmsSigColorSpaceClass, align 4
  %18 = call i32 @cmsSetDeviceClass(i32 %15, i32 %16, i32 %17)
  %19 = call i32 (...) @DbgThread()
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @cmsSetColorSpace(i32 %19, i32 %20, i32 %21)
  %23 = call i32 (...) @DbgThread()
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @cmsSigXYZData, align 4
  %26 = call i32 @cmsSetPCS(i32 %23, i32 %24, i32 %25)
  %27 = call i32 (...) @DbgThread()
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %30 = call i32 @cmsSetHeaderRenderingIntent(i32 %27, i32 %28, i32 %29)
  %31 = call i32 (...) @DbgThread()
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @cmsSigMediaWhitePointTag, align 4
  %34 = call i32 (...) @DbgThread()
  %35 = call i32* @cmsD50_XYZ(i32 %34)
  %36 = call i32 @cmsWriteTag(i32 %31, i32 %32, i32 %33, i32* %35)
  %37 = call i32 (...) @DbgThread()
  %38 = call i32 @_cmsMAT3identity(i32 %37, i32* %5)
  %39 = call i32* @cmsPipelineAlloc(i32 0, i32 3, i32 3)
  store i32* %39, i32** %6, align 8
  %40 = call i32 (...) @DbgThread()
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @cmsAT_END, align 4
  %43 = load i32, i32* %3, align 4
  %44 = bitcast %struct.TYPE_4__* %4 to i32*
  %45 = call i32 @cmsStageAllocMatrix(i32 %43, i32 3, i32 3, i32* %5, i32* %44)
  %46 = call i32 @cmsPipelineInsertStage(i32 %40, i32* %41, i32 %42, i32 %45)
  %47 = call i32 (...) @DbgThread()
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @cmsSigDToB1Tag, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @cmsWriteTag(i32 %47, i32 %48, i32 %49, i32* %50)
  %52 = call i32 (...) @DbgThread()
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @cmsPipelineFree(i32 %52, i32* %53)
  %55 = call i32* @cmsPipelineAlloc(i32 0, i32 3, i32 3)
  store i32* %55, i32** %7, align 8
  %56 = call i32 (...) @DbgThread()
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* @cmsAT_END, align 4
  %59 = load i32, i32* %3, align 4
  %60 = bitcast %struct.TYPE_4__* %4 to i32*
  %61 = call i32 @cmsStageAllocMatrix(i32 %59, i32 3, i32 3, i32* %5, i32* %60)
  %62 = call i32 @cmsPipelineInsertStage(i32 %56, i32* %57, i32 %58, i32 %61)
  %63 = call i32 (...) @DbgThread()
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @cmsSigBToD1Tag, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @cmsWriteTag(i32 %63, i32 %64, i32 %65, i32* %66)
  %68 = call i32 (...) @DbgThread()
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @cmsPipelineFree(i32 %68, i32* %69)
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cmsCreateProfilePlaceholder(i32) #2

declare dso_local i32 @cmsSetProfileVersion(i32, i32, double) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i32 @cmsSetDeviceClass(i32, i32, i32) #2

declare dso_local i32 @cmsSetColorSpace(i32, i32, i32) #2

declare dso_local i32 @cmsSetPCS(i32, i32, i32) #2

declare dso_local i32 @cmsSetHeaderRenderingIntent(i32, i32, i32) #2

declare dso_local i32 @cmsWriteTag(i32, i32, i32, i32*) #2

declare dso_local i32* @cmsD50_XYZ(i32) #2

declare dso_local i32 @_cmsMAT3identity(i32, i32*) #2

declare dso_local i32* @cmsPipelineAlloc(i32, i32, i32) #2

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32) #2

declare dso_local i32 @cmsStageAllocMatrix(i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @cmsPipelineFree(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
