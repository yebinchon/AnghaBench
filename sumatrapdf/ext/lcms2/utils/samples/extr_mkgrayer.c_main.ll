; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_mkgrayer.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_mkgrayer.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Creating interpol2.icc...\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"interpol2.icc\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"w8\00", align 1
@Forward = common dso_local global i32 0, align 4
@icSigBToA0Tag = common dso_local global i32 0, align 4
@icSigRgbData = common dso_local global i32 0, align 4
@icSigLabData = common dso_local global i32 0, align 4
@icSigOutputClass = common dso_local global i32 0, align 4
@icSigProfileDescriptionTag = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Interpolation test\00", align 1
@icSigCopyrightTag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Copyright (c) HP 2007. All rights reserved.\00", align 1
@icSigDeviceMfgDescTag = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"Little cms\00", align 1
@icSigDeviceModelDescTag = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Interpolation test profile\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @unlink(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @cmsOpenProfileFromFile(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %11, i32* %7, align 4
  %12 = call i8* (...) @cmsAllocLUT()
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @cmsAlloc3DGrid(i8* %13, i32 17, i32 3, i32 3)
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @Forward, align 4
  %17 = call i32 @cmsSample3DGrid(i8* %15, i32 %16, i32* null, i32 0)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @icSigBToA0Tag, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @cmsAddTag(i32 %18, i32 %19, i8* %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @icSigRgbData, align 4
  %24 = call i32 @cmsSetColorSpace(i32 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @icSigLabData, align 4
  %27 = call i32 @cmsSetPCS(i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @icSigOutputClass, align 4
  %30 = call i32 @cmsSetDeviceClass(i32 %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @icSigProfileDescriptionTag, align 4
  %33 = call i32 @cmsAddTag(i32 %31, i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @icSigCopyrightTag, align 4
  %36 = call i32 @cmsAddTag(i32 %34, i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @icSigDeviceMfgDescTag, align 4
  %39 = call i32 @cmsAddTag(i32 %37, i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @icSigDeviceModelDescTag, align 4
  %42 = call i32 @cmsAddTag(i32 %40, i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @cmsCloseProfile(i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @cmsFreeLUT(i8* %45)
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @cmsOpenProfileFromFile(i8*, i8*) #1

declare dso_local i8* @cmsAllocLUT(...) #1

declare dso_local i32 @cmsAlloc3DGrid(i8*, i32, i32, i32) #1

declare dso_local i32 @cmsSample3DGrid(i8*, i32, i32*, i32) #1

declare dso_local i32 @cmsAddTag(i32, i32, i8*) #1

declare dso_local i32 @cmsSetColorSpace(i32, i32) #1

declare dso_local i32 @cmsSetPCS(i32, i32) #1

declare dso_local i32 @cmsSetDeviceClass(i32, i32) #1

declare dso_local i32 @cmsCloseProfile(i32) #1

declare dso_local i32 @cmsFreeLUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
