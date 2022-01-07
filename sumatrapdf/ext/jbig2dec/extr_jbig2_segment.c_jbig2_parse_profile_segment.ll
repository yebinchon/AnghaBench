; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_segment.c_jbig2_parse_profile_segment.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_segment.c_jbig2_parse_profile_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@JBIG2_SEVERITY_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Segment too short\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"segment too short to store profile\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"All JBIG2 capabilities\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"No restriction\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Maximum compression\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Arithmetic only; any template used\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Arithmetic only\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Medium complexity and medium compression\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"Arithmetic only; only 10-pixel and 13-pixel templates\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"10-pixel template only\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"No skip mask used\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"Low complexity with progressive lossless capability\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"MMR only\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Huffman only\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Low complexity\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Not available\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@JBIG2_SEVERITY_INFO = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [26 x i8] c"Supported profile: 0x%08x\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"  Requirements: %s\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"  Generic region coding: %s\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"  Refinement region coding: %s\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"  Halftone region coding: %s\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"  Numerical data: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*)* @jbig2_parse_profile_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbig2_parse_profile_segment(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %22, i32 %23, i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %4, align 4
  br label %116

28:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i64 @jbig2_get_uint32(i32* %32)
  store i64 %33, i64* %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 4
  store i32 %35, i32* %11, align 4
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %112, %28
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %115

40:                                               ; preds = %36
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 %43, %44
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %48, i32 %49, i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 %53, i32* %4, align 4
  br label %116

54:                                               ; preds = %40
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i64 @jbig2_get_uint32(i32* %58)
  store i64 %59, i64* %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 4
  store i32 %61, i32* %11, align 4
  %62 = load i64, i64* %10, align 8
  switch i64 %62, label %68 [
    i64 1, label %63
    i64 2, label %64
    i64 3, label %65
    i64 4, label %66
    i64 5, label %67
  ]

63:                                               ; preds = %54
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %16, align 8
  br label %69

64:                                               ; preds = %54
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %16, align 8
  br label %69

65:                                               ; preds = %54
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %16, align 8
  br label %69

66:                                               ; preds = %54
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8** %16, align 8
  br label %69

67:                                               ; preds = %54
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8** %16, align 8
  br label %69

68:                                               ; preds = %54
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %16, align 8
  br label %69

69:                                               ; preds = %68, %67, %66, %65, %64, %63
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* @JBIG2_SEVERITY_INFO, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %10, align 8
  %76 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %70, i32 %71, i32 %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i64 %75)
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* @JBIG2_SEVERITY_INFO, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %77, i32 %78, i32 %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* %82)
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* @JBIG2_SEVERITY_INFO, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %84, i32 %85, i32 %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i8* %89)
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* @JBIG2_SEVERITY_INFO, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i8*, i8** %14, align 8
  %97 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %91, i32 %92, i32 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8* %96)
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* @JBIG2_SEVERITY_INFO, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i8*, i8** %15, align 8
  %104 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %98, i32 %99, i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i8* %103)
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* @JBIG2_SEVERITY_INFO, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %16, align 8
  %111 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %105, i32 %106, i32 %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %69
  %113 = load i64, i64* %9, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %9, align 8
  br label %36

115:                                              ; preds = %36
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %47, %21
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @jbig2_error(i32*, i32, i32, i8*, ...) #1

declare dso_local i64 @jbig2_get_uint32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
