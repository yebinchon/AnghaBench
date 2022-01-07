; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_GetProfileRGBPrimaries.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_GetProfileRGBPrimaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TYPE_RGB_DBL = common dso_local global i32 0, align 4
@TYPE_XYZ_DBL = common dso_local global i32 0, align 4
@cmsFLAGS_NOCACHE = common dso_local global i32 0, align 4
@cmsFLAGS_NOOPTIMIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @GetProfileRGBPrimaries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetProfileRGBPrimaries(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [3 x [3 x %struct.TYPE_3__]], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = bitcast [3 x [3 x %struct.TYPE_3__]]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 108, i1 false)
  %12 = bitcast i8* %11 to [3 x [3 x %struct.TYPE_3__]]*
  %13 = getelementptr inbounds [3 x [3 x %struct.TYPE_3__]], [3 x [3 x %struct.TYPE_3__]]* %12, i32 0, i32 0
  %14 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 16
  %16 = getelementptr inbounds [3 x [3 x %struct.TYPE_3__]], [3 x [3 x %struct.TYPE_3__]]* %12, i32 0, i32 1
  %17 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds [3 x [3 x %struct.TYPE_3__]], [3 x [3 x %struct.TYPE_3__]]* %12, i32 0, i32 2
  %20 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  store i32 1, i32* %21, align 8
  %22 = call i32 (...) @DbgThread()
  %23 = call i32* @cmsCreateXYZProfile(i32 %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %4, align 4
  br label %57

28:                                               ; preds = %3
  %29 = call i32 (...) @DbgThread()
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @TYPE_RGB_DBL, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @TYPE_XYZ_DBL, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %36 = load i32, i32* @cmsFLAGS_NOOPTIMIZE, align 4
  %37 = or i32 %35, %36
  %38 = call i32* @cmsCreateTransform(i32 %29, i32* %30, i32 %31, i32* %32, i32 %33, i32 %34, i32 %37)
  store i32* %38, i32** %9, align 8
  %39 = call i32 (...) @DbgThread()
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @cmsCloseProfile(i32 %39, i32* %40)
  %42 = load i32*, i32** %9, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %4, align 4
  br label %57

46:                                               ; preds = %28
  %47 = call i32 (...) @DbgThread()
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds [3 x [3 x %struct.TYPE_3__]], [3 x [3 x %struct.TYPE_3__]]* %10, i64 0, i64 0
  %50 = bitcast [3 x %struct.TYPE_3__]* %49 to %struct.TYPE_3__**
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @cmsDoTransform(i32 %47, i32* %48, %struct.TYPE_3__** %50, i32* %51, i32 3)
  %53 = call i32 (...) @DbgThread()
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @cmsDeleteTransform(i32 %53, i32* %54)
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %46, %44, %26
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @cmsCreateXYZProfile(i32) #2

declare dso_local i32 @DbgThread(...) #2

declare dso_local i32* @cmsCreateTransform(i32, i32*, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @cmsCloseProfile(i32, i32*) #2

declare dso_local i32 @cmsDoTransform(i32, i32*, %struct.TYPE_3__**, i32*, i32) #2

declare dso_local i32 @cmsDeleteTransform(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
