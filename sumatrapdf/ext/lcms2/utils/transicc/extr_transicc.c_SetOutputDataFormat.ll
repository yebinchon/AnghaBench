; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_SetOutputDataFormat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_SetOutputDataFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hIT8out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.4g\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ORIGINATOR\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"icctrans\00", align 1
@IncludePart = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c".INCLUDE\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Data follows\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"NUMBER_OF_SETS\00", align 1
@nMaxPatches = common dso_local global i32 0, align 4
@OutputColorSpace = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"NUMBER_OF_FIELDS\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"SAMPLE_ID\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"XYZ_X\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"XYZ_Y\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"XYZ_Z\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"LAB_L\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"LAB_A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"LAB_B\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"RGB_R\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"RGB_G\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"RGB_B\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"GRAY\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"CMYK_C\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"CMYK_M\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"CMYK_Y\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"CMYK_K\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"CMY_C\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"CMY_M\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"CMY_Y\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"%dCLR_%d\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"CHAN_%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @SetOutputDataFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetOutputDataFormat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [255 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [255 x i8], align 16
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @hIT8out, align 4
  %11 = call i32 @cmsIT8DefineDblFormat(i32 %9, i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @hIT8out, align 4
  %14 = call i32 @cmsIT8SetPropertyStr(i32 %12, i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i8*, i8** @IncludePart, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @hIT8out, align 4
  %20 = load i8*, i8** @IncludePart, align 8
  %21 = call i32 @cmsIT8SetPropertyStr(i32 %18, i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @hIT8out, align 4
  %25 = call i32 @cmsIT8SetComment(i32 %23, i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @hIT8out, align 4
  %28 = load i32, i32* @nMaxPatches, align 4
  %29 = call i32 @cmsIT8SetPropertyDbl(i32 %26, i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @OutputColorSpace, align 4
  switch i32 %30, label %154 [
    i32 128, label %31
    i32 130, label %47
    i32 129, label %63
    i32 131, label %79
    i32 132, label %89
    i32 133, label %108
    i32 142, label %124
    i32 141, label %124
    i32 140, label %124
    i32 139, label %124
    i32 138, label %124
    i32 137, label %124
    i32 136, label %124
    i32 135, label %124
    i32 134, label %124
    i32 148, label %124
    i32 147, label %124
    i32 146, label %124
    i32 145, label %124
    i32 144, label %124
    i32 143, label %124
  ]

31:                                               ; preds = %22
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @hIT8out, align 4
  %34 = call i32 @cmsIT8SetPropertyDbl(i32 %32, i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @hIT8out, align 4
  %37 = call i32 @cmsIT8SetDataFormat(i32 %35, i32 %36, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @hIT8out, align 4
  %40 = call i32 @cmsIT8SetDataFormat(i32 %38, i32 %39, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @hIT8out, align 4
  %43 = call i32 @cmsIT8SetDataFormat(i32 %41, i32 %42, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @hIT8out, align 4
  %46 = call i32 @cmsIT8SetDataFormat(i32 %44, i32 %45, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %183

47:                                               ; preds = %22
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @hIT8out, align 4
  %50 = call i32 @cmsIT8SetPropertyDbl(i32 %48, i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @hIT8out, align 4
  %53 = call i32 @cmsIT8SetDataFormat(i32 %51, i32 %52, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @hIT8out, align 4
  %56 = call i32 @cmsIT8SetDataFormat(i32 %54, i32 %55, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @hIT8out, align 4
  %59 = call i32 @cmsIT8SetDataFormat(i32 %57, i32 %58, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @hIT8out, align 4
  %62 = call i32 @cmsIT8SetDataFormat(i32 %60, i32 %61, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  br label %183

63:                                               ; preds = %22
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @hIT8out, align 4
  %66 = call i32 @cmsIT8SetPropertyDbl(i32 %64, i32 %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @hIT8out, align 4
  %69 = call i32 @cmsIT8SetDataFormat(i32 %67, i32 %68, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @hIT8out, align 4
  %72 = call i32 @cmsIT8SetDataFormat(i32 %70, i32 %71, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* @hIT8out, align 4
  %75 = call i32 @cmsIT8SetDataFormat(i32 %73, i32 %74, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @hIT8out, align 4
  %78 = call i32 @cmsIT8SetDataFormat(i32 %76, i32 %77, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %183

79:                                               ; preds = %22
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @hIT8out, align 4
  %82 = call i32 @cmsIT8SetPropertyDbl(i32 %80, i32 %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @hIT8out, align 4
  %85 = call i32 @cmsIT8SetDataFormat(i32 %83, i32 %84, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* @hIT8out, align 4
  %88 = call i32 @cmsIT8SetDataFormat(i32 %86, i32 %87, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %183

89:                                               ; preds = %22
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* @hIT8out, align 4
  %92 = call i32 @cmsIT8SetPropertyDbl(i32 %90, i32 %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* @hIT8out, align 4
  %95 = call i32 @cmsIT8SetDataFormat(i32 %93, i32 %94, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* @hIT8out, align 4
  %98 = call i32 @cmsIT8SetDataFormat(i32 %96, i32 %97, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* @hIT8out, align 4
  %101 = call i32 @cmsIT8SetDataFormat(i32 %99, i32 %100, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* @hIT8out, align 4
  %104 = call i32 @cmsIT8SetDataFormat(i32 %102, i32 %103, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* @hIT8out, align 4
  %107 = call i32 @cmsIT8SetDataFormat(i32 %105, i32 %106, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  br label %183

108:                                              ; preds = %22
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* @hIT8out, align 4
  %111 = call i32 @cmsIT8SetPropertyDbl(i32 %109, i32 %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* @hIT8out, align 4
  %114 = call i32 @cmsIT8SetDataFormat(i32 %112, i32 %113, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %115 = load i32, i32* %2, align 4
  %116 = load i32, i32* @hIT8out, align 4
  %117 = call i32 @cmsIT8SetDataFormat(i32 %115, i32 %116, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %118 = load i32, i32* %2, align 4
  %119 = load i32, i32* @hIT8out, align 4
  %120 = call i32 @cmsIT8SetDataFormat(i32 %118, i32 %119, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* @hIT8out, align 4
  %123 = call i32 @cmsIT8SetDataFormat(i32 %121, i32 %122, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  br label %183

124:                                              ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  %125 = load i32, i32* %2, align 4
  %126 = load i32, i32* @OutputColorSpace, align 4
  %127 = call i32 @cmsChannelsOf(i32 %125, i32 %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %2, align 4
  %129 = load i32, i32* @hIT8out, align 4
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  %132 = call i32 @cmsIT8SetPropertyDbl(i32 %128, i32 %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %2, align 4
  %134 = load i32, i32* @hIT8out, align 4
  %135 = call i32 @cmsIT8SetDataFormat(i32 %133, i32 %134, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %136

136:                                              ; preds = %150, %124
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* %4, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %136
  %141 = getelementptr inbounds [255 x i8], [255 x i8]* %5, i64 0, i64 0
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* %3, align 4
  %144 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 %142, i32 %143)
  %145 = load i32, i32* %2, align 4
  %146 = load i32, i32* @hIT8out, align 4
  %147 = load i32, i32* %3, align 4
  %148 = getelementptr inbounds [255 x i8], [255 x i8]* %5, i64 0, i64 0
  %149 = call i32 @cmsIT8SetDataFormat(i32 %145, i32 %146, i32 %147, i8* %148)
  br label %150

150:                                              ; preds = %140
  %151 = load i32, i32* %3, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %3, align 4
  br label %136

153:                                              ; preds = %136
  br label %183

154:                                              ; preds = %22
  %155 = load i32, i32* %2, align 4
  %156 = load i32, i32* @OutputColorSpace, align 4
  %157 = call i32 @cmsChannelsOf(i32 %155, i32 %156)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %2, align 4
  %159 = load i32, i32* @hIT8out, align 4
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  %162 = call i32 @cmsIT8SetPropertyDbl(i32 %158, i32 %159, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %2, align 4
  %164 = load i32, i32* @hIT8out, align 4
  %165 = call i32 @cmsIT8SetDataFormat(i32 %163, i32 %164, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %166

166:                                              ; preds = %179, %154
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp sle i32 %167, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %166
  %171 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %172 = load i32, i32* %6, align 4
  %173 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %2, align 4
  %175 = load i32, i32* @hIT8out, align 4
  %176 = load i32, i32* %6, align 4
  %177 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %178 = call i32 @cmsIT8SetDataFormat(i32 %174, i32 %175, i32 %176, i8* %177)
  br label %179

179:                                              ; preds = %170
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %6, align 4
  br label %166

182:                                              ; preds = %166
  br label %183

183:                                              ; preds = %182, %153, %108, %89, %79, %63, %47, %31
  ret void
}

declare dso_local i32 @cmsIT8DefineDblFormat(i32, i32, i8*) #1

declare dso_local i32 @cmsIT8SetPropertyStr(i32, i32, i8*, i8*) #1

declare dso_local i32 @cmsIT8SetComment(i32, i32, i8*) #1

declare dso_local i32 @cmsIT8SetPropertyDbl(i32, i32, i8*, i32) #1

declare dso_local i32 @cmsIT8SetDataFormat(i32, i32, i32, i8*) #1

declare dso_local i32 @cmsChannelsOf(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
