; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_mkcmy.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_mkcmy.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Creating lcmscmy.icm...\00", align 1
@Reverse = common dso_local global i32 0, align 4
@Forward = common dso_local global i32 0, align 4
@icSigAToB0Tag = common dso_local global i32 0, align 4
@icSigBToA0Tag = common dso_local global i32 0, align 4
@icSigCmyData = common dso_local global i32 0, align 4
@icSigOutputClass = common dso_local global i32 0, align 4
@icSigProfileDescriptionTag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"CMY \00", align 1
@icSigCopyrightTag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Copyright (c) HP, 2007. All rights reserved.\00", align 1
@icSigDeviceMfgDescTag = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Little cms\00", align 1
@icSigDeviceModelDescTag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"CMY space\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"lcmscmy.icm\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @InitCargo(i32* %4)
  %9 = call i32 @cmsCreateLabProfile(i32* null)
  store i32 %9, i32* %5, align 4
  %10 = call i8* (...) @cmsAllocLUT()
  store i8* %10, i8** %2, align 8
  %11 = call i8* (...) @cmsAllocLUT()
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @cmsAlloc3DGrid(i8* %12, i32 25, i32 3, i32 3)
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @cmsAlloc3DGrid(i8* %14, i32 25, i32 3, i32 3)
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* @Reverse, align 4
  %18 = call i32 @cmsSample3DGrid(i8* %16, i32 %17, i32* %4, i32 0)
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @Forward, align 4
  %21 = call i32 @cmsSample3DGrid(i8* %19, i32 %20, i32* %4, i32 0)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @icSigAToB0Tag, align 4
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @cmsAddTag(i32 %22, i32 %23, i8* %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @icSigBToA0Tag, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @cmsAddTag(i32 %26, i32 %27, i8* %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @icSigCmyData, align 4
  %32 = call i32 @cmsSetColorSpace(i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @icSigOutputClass, align 4
  %35 = call i32 @cmsSetDeviceClass(i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @icSigProfileDescriptionTag, align 4
  %38 = call i32 @cmsAddTag(i32 %36, i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @icSigCopyrightTag, align 4
  %41 = call i32 @cmsAddTag(i32 %39, i32 %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @icSigDeviceMfgDescTag, align 4
  %44 = call i32 @cmsAddTag(i32 %42, i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @icSigDeviceModelDescTag, align 4
  %47 = call i32 @cmsAddTag(i32 %45, i32 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @_cmsSaveProfile(i32 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 @cmsFreeLUT(i8* %50)
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @cmsFreeLUT(i8* %52)
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @cmsCloseProfile(i32 %54)
  %56 = call i32 @FreeCargo(i32* %4)
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @InitCargo(i32*) #1

declare dso_local i32 @cmsCreateLabProfile(i32*) #1

declare dso_local i8* @cmsAllocLUT(...) #1

declare dso_local i32 @cmsAlloc3DGrid(i8*, i32, i32, i32) #1

declare dso_local i32 @cmsSample3DGrid(i8*, i32, i32*, i32) #1

declare dso_local i32 @cmsAddTag(i32, i32, i8*) #1

declare dso_local i32 @cmsSetColorSpace(i32, i32) #1

declare dso_local i32 @cmsSetDeviceClass(i32, i32) #1

declare dso_local i32 @_cmsSaveProfile(i32, i8*) #1

declare dso_local i32 @cmsFreeLUT(i8*) #1

declare dso_local i32 @cmsCloseProfile(i32) #1

declare dso_local i32 @FreeCargo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
