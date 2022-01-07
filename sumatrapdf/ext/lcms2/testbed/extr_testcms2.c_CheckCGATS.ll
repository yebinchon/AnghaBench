; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckCGATS.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckCGATS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"IT8 creation\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"LCMS/TESTING\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ORIGINATOR\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"1 2 3 4\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"DESCRIPTOR\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"MANUFACTURER\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"CREATED\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"SERIAL\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"MATERIAL\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"NUMBER_OF_SETS\00", align 1
@NPOINTS_IT8 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"NUMBER_OF_FIELDS\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"SAMPLE_ID\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"RGB_R\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"RGB_G\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"RGB_B\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Table creation\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"P%d\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Save to file\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"TEST.IT8\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Load from file\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Save again file\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Load from file (II)\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Change prop value\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Positive numbers\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"P3\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"Positive exponent numbers\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"DBL_PROP\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"Negative exponent numbers\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"DBL_PROP_NEG\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Negative numbers\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"DBL_NEG_VAL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckCGATS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckCGATS() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [20 x i8], align 16
  %5 = call i32 @SubTest(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (...) @DbgThread()
  %7 = call i32* @cmsIT8Alloc(i32 %6)
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %174

11:                                               ; preds = %0
  %12 = call i32 (...) @DbgThread()
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @cmsIT8SetSheetType(i32 %12, i32* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 (...) @DbgThread()
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @cmsIT8SetPropertyStr(i32 %15, i32* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 (...) @DbgThread()
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @cmsIT8SetPropertyUncooked(i32 %18, i32* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %21 = call i32 (...) @DbgThread()
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @cmsIT8SetPropertyStr(i32 %21, i32* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %24 = call i32 (...) @DbgThread()
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @cmsIT8SetPropertyDbl(i32 %24, i32* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %27 = call i32 (...) @DbgThread()
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @cmsIT8SetPropertyDbl(i32 %27, i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 5)
  %30 = call i32 (...) @DbgThread()
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @cmsIT8SetPropertyHex(i32 %30, i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 291)
  %33 = call i32 (...) @DbgThread()
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @NPOINTS_IT8, align 4
  %36 = call i32 @cmsIT8SetPropertyDbl(i32 %33, i32* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %35)
  %37 = call i32 (...) @DbgThread()
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @cmsIT8SetPropertyDbl(i32 %37, i32* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 4)
  %40 = call i32 (...) @DbgThread()
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @cmsIT8SetDataFormat(i32 %40, i32* %41, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %43 = call i32 (...) @DbgThread()
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @cmsIT8SetDataFormat(i32 %43, i32* %44, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %46 = call i32 (...) @DbgThread()
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @cmsIT8SetDataFormat(i32 %46, i32* %47, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %49 = call i32 (...) @DbgThread()
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @cmsIT8SetDataFormat(i32 %49, i32* %50, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %52 = call i32 @SubTest(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %81, %11
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @NPOINTS_IT8, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %53
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %59)
  %61 = call i32 (...) @DbgThread()
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %65 = call i32 @cmsIT8SetDataRowCol(i32 %61, i32* %62, i32 %63, i32 0, i8* %64)
  %66 = call i32 (...) @DbgThread()
  %67 = load i32*, i32** %2, align 8
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @cmsIT8SetDataRowColDbl(i32 %66, i32* %67, i32 %68, i32 1, i32 %69)
  %71 = call i32 (...) @DbgThread()
  %72 = load i32*, i32** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @cmsIT8SetDataRowColDbl(i32 %71, i32* %72, i32 %73, i32 2, i32 %74)
  %76 = call i32 (...) @DbgThread()
  %77 = load i32*, i32** %2, align 8
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @cmsIT8SetDataRowColDbl(i32 %76, i32* %77, i32 %78, i32 3, i32 %79)
  br label %81

81:                                               ; preds = %57
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %53

84:                                               ; preds = %53
  %85 = call i32 @SubTest(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %86 = call i32 (...) @DbgThread()
  %87 = load i32*, i32** %2, align 8
  %88 = call i32 @cmsIT8SaveToFile(i32 %86, i32* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %89 = call i32 (...) @DbgThread()
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @cmsIT8Free(i32 %89, i32* %90)
  %92 = call i32 @SubTest(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %93 = call i32 (...) @DbgThread()
  %94 = call i32* @cmsIT8LoadFromFile(i32 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  store i32* %94, i32** %2, align 8
  %95 = load i32*, i32** %2, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  store i32 0, i32* %1, align 4
  br label %174

98:                                               ; preds = %84
  %99 = call i32 @SubTest(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  %100 = call i32 (...) @DbgThread()
  %101 = load i32*, i32** %2, align 8
  %102 = call i32 @cmsIT8SaveToFile(i32 %100, i32* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %103 = call i32 (...) @DbgThread()
  %104 = load i32*, i32** %2, align 8
  %105 = call i32 @cmsIT8Free(i32 %103, i32* %104)
  %106 = call i32 @SubTest(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0))
  %107 = call i32 (...) @DbgThread()
  %108 = call i32* @cmsIT8LoadFromFile(i32 %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  store i32* %108, i32** %2, align 8
  %109 = load i32*, i32** %2, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  store i32 0, i32* %1, align 4
  br label %174

112:                                              ; preds = %98
  %113 = call i32 @SubTest(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  %114 = call i32 (...) @DbgThread()
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @cmsIT8GetPropertyDbl(i32 %114, i32* %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %117 = icmp ne i32 %116, 1234
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i32 0, i32* %1, align 4
  br label %174

119:                                              ; preds = %112
  %120 = call i32 (...) @DbgThread()
  %121 = load i32*, i32** %2, align 8
  %122 = call i32 @cmsIT8SetPropertyDbl(i32 %120, i32* %121, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 5678)
  %123 = call i32 (...) @DbgThread()
  %124 = load i32*, i32** %2, align 8
  %125 = call i32 @cmsIT8GetPropertyDbl(i32 %123, i32* %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %126 = icmp ne i32 %125, 5678
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  store i32 0, i32* %1, align 4
  br label %174

128:                                              ; preds = %119
  %129 = call i32 @SubTest(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0))
  %130 = call i32 (...) @DbgThread()
  %131 = load i32*, i32** %2, align 8
  %132 = call i32 @cmsIT8GetDataDbl(i32 %130, i32* %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %133 = icmp ne i32 %132, 3
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i32 0, i32* %1, align 4
  br label %174

135:                                              ; preds = %128
  %136 = call i32 @SubTest(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0))
  %137 = call i32 (...) @DbgThread()
  %138 = load i32*, i32** %2, align 8
  %139 = call i32 @cmsIT8SetPropertyDbl(i32 %137, i32* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i32 undef)
  %140 = call i32 (...) @DbgThread()
  %141 = load i32*, i32** %2, align 8
  %142 = call i32 @cmsIT8GetPropertyDbl(i32 %140, i32* %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0))
  %143 = sitofp i32 %142 to double
  %144 = fsub double %143, 1.230000e+14
  %145 = fcmp ogt double %144, 1.000000e+00
  br i1 %145, label %146, label %147

146:                                              ; preds = %135
  store i32 0, i32* %1, align 4
  br label %174

147:                                              ; preds = %135
  %148 = call i32 @SubTest(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0))
  %149 = call i32 (...) @DbgThread()
  %150 = load i32*, i32** %2, align 8
  %151 = call i32 @cmsIT8SetPropertyDbl(i32 %149, i32* %150, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i32 0)
  %152 = call i32 (...) @DbgThread()
  %153 = load i32*, i32** %2, align 8
  %154 = call i32 @cmsIT8GetPropertyDbl(i32 %152, i32* %153, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  %155 = sitofp i32 %154 to double
  %156 = fsub double %155, 1.230000e-43
  %157 = fcmp ogt double %156, 0x3696D601AD376AB9
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  store i32 0, i32* %1, align 4
  br label %174

159:                                              ; preds = %147
  %160 = call i32 @SubTest(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0))
  %161 = call i32 (...) @DbgThread()
  %162 = load i32*, i32** %2, align 8
  %163 = call i32 @cmsIT8SetPropertyDbl(i32 %161, i32* %162, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 -123)
  %164 = call i32 (...) @DbgThread()
  %165 = load i32*, i32** %2, align 8
  %166 = call i32 @cmsIT8GetPropertyDbl(i32 %164, i32* %165, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0))
  %167 = icmp ne i32 %166, -123
  br i1 %167, label %168, label %169

168:                                              ; preds = %159
  store i32 0, i32* %1, align 4
  br label %174

169:                                              ; preds = %159
  %170 = call i32 (...) @DbgThread()
  %171 = load i32*, i32** %2, align 8
  %172 = call i32 @cmsIT8Free(i32 %170, i32* %171)
  %173 = call i32 @remove(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %174

174:                                              ; preds = %169, %168, %158, %146, %134, %127, %118, %111, %97, %10
  %175 = load i32, i32* %1, align 4
  ret i32 %175
}

declare dso_local i32 @SubTest(i8*) #1

declare dso_local i32* @cmsIT8Alloc(i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsIT8SetSheetType(i32, i32*, i8*) #1

declare dso_local i32 @cmsIT8SetPropertyStr(i32, i32*, i8*, i8*) #1

declare dso_local i32 @cmsIT8SetPropertyUncooked(i32, i32*, i8*, i8*) #1

declare dso_local i32 @cmsIT8SetPropertyDbl(i32, i32*, i8*, i32) #1

declare dso_local i32 @cmsIT8SetPropertyHex(i32, i32*, i8*, i32) #1

declare dso_local i32 @cmsIT8SetDataFormat(i32, i32*, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @cmsIT8SetDataRowCol(i32, i32*, i32, i32, i8*) #1

declare dso_local i32 @cmsIT8SetDataRowColDbl(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cmsIT8SaveToFile(i32, i32*, i8*) #1

declare dso_local i32 @cmsIT8Free(i32, i32*) #1

declare dso_local i32* @cmsIT8LoadFromFile(i32, i8*) #1

declare dso_local i32 @cmsIT8GetPropertyDbl(i32, i32*, i8*) #1

declare dso_local i32 @cmsIT8GetDataDbl(i32, i32*, i8*, i8*) #1

declare dso_local i32 @remove(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
