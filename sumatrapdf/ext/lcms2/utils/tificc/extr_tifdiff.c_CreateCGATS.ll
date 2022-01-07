; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tifdiff.c_CreateCGATS.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tifdiff.c_CreateCGATS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"TIFFDIFF\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Differences between %s and %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ORIGINATOR\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"CREATED\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"NUMBER_OF_FIELDS\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"SAMPLE_ID\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"PER100_EQUAL\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"MEAN_DE\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"STDEV_DE\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"MIN_DE\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"MAX_DE\00", align 1
@Channels = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"NUMBER_OF_SETS\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"GRAY_PLANE\00", align 1
@ColorantStat = common dso_local global i32* null, align 8
@.str.14 = private unnamed_addr constant [8 x i8] c"R_PLANE\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"G_PLANE\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"B_PLANE\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"C_PLANE\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"M_PLANE\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Y_PLANE\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"K_PLANE\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"Internal error: Bad ColorSpace\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"EUCLIDEAN\00", align 1
@EuclideanStat = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [13 x i8] c"COLORIMETRIC\00", align 1
@ColorimetricStat = common dso_local global i32 0, align 4
@CGATSout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @CreateCGATS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateCGATS(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = call i32 @cmsIT8Alloc(i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @cmsIT8SetSheetType(i32* null, i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %12, i8* %13)
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %17 = call i32 @cmsIT8SetComment(i32* null, i32 %15, i8* %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @cmsIT8SetPropertyStr(i32* null, i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @time(i32* %6)
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %22 = call i32 @ctime(i32* %6)
  %23 = call i32 @strcpy(i8* %21, i32 %22)
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %25 = call i32 @strlen(i8* %24)
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %27
  store i8 0, i8* %28, align 1
  %29 = load i32, i32* %5, align 4
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %31 = call i32 @cmsIT8SetPropertyStr(i32* null, i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @cmsIT8SetComment(i32* null, i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @cmsIT8SetPropertyDbl(i32* null, i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @cmsIT8SetDataFormat(i32* null, i32 %36, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @cmsIT8SetDataFormat(i32* null, i32 %38, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @cmsIT8SetDataFormat(i32* null, i32 %40, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @cmsIT8SetDataFormat(i32* null, i32 %42, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @cmsIT8SetDataFormat(i32* null, i32 %44, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @cmsIT8SetDataFormat(i32* null, i32 %46, i32 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %48 = load i32, i32* @Channels, align 4
  switch i32 %48, label %90 [
    i32 1, label %49
    i32 3, label %56
    i32 4, label %71
  ]

49:                                               ; preds = %2
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @cmsIT8SetPropertyDbl(i32* null, i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 3)
  %52 = load i32, i32* %5, align 4
  %53 = load i32*, i32** @ColorantStat, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = call i32 @AddOneCGATSRow(i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32* %54)
  br label %92

56:                                               ; preds = %2
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @cmsIT8SetPropertyDbl(i32* null, i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 5)
  %59 = load i32, i32* %5, align 4
  %60 = load i32*, i32** @ColorantStat, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = call i32 @AddOneCGATSRow(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32* %61)
  %63 = load i32, i32* %5, align 4
  %64 = load i32*, i32** @ColorantStat, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = call i32 @AddOneCGATSRow(i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32* %65)
  %67 = load i32, i32* %5, align 4
  %68 = load i32*, i32** @ColorantStat, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = call i32 @AddOneCGATSRow(i32 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32* %69)
  br label %92

71:                                               ; preds = %2
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @cmsIT8SetPropertyDbl(i32* null, i32 %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 6)
  %74 = load i32, i32* %5, align 4
  %75 = load i32*, i32** @ColorantStat, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = call i32 @AddOneCGATSRow(i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32* %76)
  %78 = load i32, i32* %5, align 4
  %79 = load i32*, i32** @ColorantStat, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = call i32 @AddOneCGATSRow(i32 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32* %80)
  %82 = load i32, i32* %5, align 4
  %83 = load i32*, i32** @ColorantStat, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = call i32 @AddOneCGATSRow(i32 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32* %84)
  %86 = load i32, i32* %5, align 4
  %87 = load i32*, i32** @ColorantStat, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = call i32 @AddOneCGATSRow(i32 %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32* %88)
  br label %92

90:                                               ; preds = %2
  %91 = call i32 @FatalError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %71, %56, %49
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @AddOneCGATSRow(i32 %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i32* @EuclideanStat)
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @AddOneCGATSRow(i32 %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32* @ColorimetricStat)
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @CGATSout, align 4
  %99 = call i32 @cmsIT8SaveToFile(i32* null, i32 %97, i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @cmsIT8Free(i32* null, i32 %100)
  ret void
}

declare dso_local i32 @cmsIT8Alloc(i32) #1

declare dso_local i32 @cmsIT8SetSheetType(i32*, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @cmsIT8SetComment(i32*, i32, i8*) #1

declare dso_local i32 @cmsIT8SetPropertyStr(i32*, i32, i8*, i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @ctime(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cmsIT8SetPropertyDbl(i32*, i32, i8*, i32) #1

declare dso_local i32 @cmsIT8SetDataFormat(i32*, i32, i32, i8*) #1

declare dso_local i32 @AddOneCGATSRow(i32, i8*, i32*) #1

declare dso_local i32 @FatalError(i8*) #1

declare dso_local i32 @cmsIT8SaveToFile(i32*, i32, i32) #1

declare dso_local i32 @cmsIT8Free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
