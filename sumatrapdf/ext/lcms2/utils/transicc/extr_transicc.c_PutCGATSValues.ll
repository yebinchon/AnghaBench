; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_PutCGATSValues.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_PutCGATSValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hIT8out = common dso_local global i32 0, align 4
@CGATSPatch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"SAMPLE_ID\00", align 1
@OutputColorSpace = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"XYZ_X\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"XYZ_Y\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"XYZ_Z\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"LAB_L\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"LAB_A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"LAB_B\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"RGB_R\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"RGB_G\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"RGB_B\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"GRAY\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"CMYK_C\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"CMYK_M\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"CMYK_Y\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"CMYK_K\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"CMY_C\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"CMY_M\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"CMY_Y\00", align 1
@InputColorSpace = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"%uCLR_%u\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"CHAN_%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, double*)* @PutCGATSValues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PutCGATSValues(i32 %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [255 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [255 x i8], align 16
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @hIT8out, align 4
  %13 = load i32, i32* @CGATSPatch, align 4
  %14 = load i32, i32* @CGATSPatch, align 4
  %15 = call i32 @cmsIT8SetData(i32 %11, i32 %12, i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @OutputColorSpace, align 4
  switch i32 %16, label %142 [
    i32 128, label %17
    i32 130, label %36
    i32 129, label %52
    i32 131, label %71
    i32 132, label %78
    i32 133, label %99
    i32 142, label %115
    i32 141, label %115
    i32 140, label %115
    i32 139, label %115
    i32 138, label %115
    i32 137, label %115
    i32 136, label %115
    i32 135, label %115
    i32 134, label %115
    i32 148, label %115
    i32 147, label %115
    i32 146, label %115
    i32 145, label %115
    i32 144, label %115
    i32 143, label %115
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = load double*, double** %4, align 8
  %20 = getelementptr inbounds double, double* %19, i64 0
  %21 = load double, double* %20, align 8
  %22 = fmul double %21, 1.000000e+02
  %23 = call i32 @SetCGATSfld(i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), double %22)
  %24 = load i32, i32* %3, align 4
  %25 = load double*, double** %4, align 8
  %26 = getelementptr inbounds double, double* %25, i64 1
  %27 = load double, double* %26, align 8
  %28 = fmul double %27, 1.000000e+02
  %29 = call i32 @SetCGATSfld(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), double %28)
  %30 = load i32, i32* %3, align 4
  %31 = load double*, double** %4, align 8
  %32 = getelementptr inbounds double, double* %31, i64 2
  %33 = load double, double* %32, align 8
  %34 = fmul double %33, 1.000000e+02
  %35 = call i32 @SetCGATSfld(i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), double %34)
  br label %167

36:                                               ; preds = %2
  %37 = load i32, i32* %3, align 4
  %38 = load double*, double** %4, align 8
  %39 = getelementptr inbounds double, double* %38, i64 0
  %40 = load double, double* %39, align 8
  %41 = call i32 @SetCGATSfld(i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), double %40)
  %42 = load i32, i32* %3, align 4
  %43 = load double*, double** %4, align 8
  %44 = getelementptr inbounds double, double* %43, i64 1
  %45 = load double, double* %44, align 8
  %46 = call i32 @SetCGATSfld(i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double %45)
  %47 = load i32, i32* %3, align 4
  %48 = load double*, double** %4, align 8
  %49 = getelementptr inbounds double, double* %48, i64 2
  %50 = load double, double* %49, align 8
  %51 = call i32 @SetCGATSfld(i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), double %50)
  br label %167

52:                                               ; preds = %2
  %53 = load i32, i32* %3, align 4
  %54 = load double*, double** %4, align 8
  %55 = getelementptr inbounds double, double* %54, i64 0
  %56 = load double, double* %55, align 8
  %57 = fmul double %56, 2.550000e+02
  %58 = call i32 @SetCGATSfld(i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %57)
  %59 = load i32, i32* %3, align 4
  %60 = load double*, double** %4, align 8
  %61 = getelementptr inbounds double, double* %60, i64 1
  %62 = load double, double* %61, align 8
  %63 = fmul double %62, 2.550000e+02
  %64 = call i32 @SetCGATSfld(i32 %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), double %63)
  %65 = load i32, i32* %3, align 4
  %66 = load double*, double** %4, align 8
  %67 = getelementptr inbounds double, double* %66, i64 2
  %68 = load double, double* %67, align 8
  %69 = fmul double %68, 2.550000e+02
  %70 = call i32 @SetCGATSfld(i32 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), double %69)
  br label %167

71:                                               ; preds = %2
  %72 = load i32, i32* %3, align 4
  %73 = load double*, double** %4, align 8
  %74 = getelementptr inbounds double, double* %73, i64 0
  %75 = load double, double* %74, align 8
  %76 = fmul double %75, 2.550000e+02
  %77 = call i32 @SetCGATSfld(i32 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), double %76)
  br label %167

78:                                               ; preds = %2
  %79 = load i32, i32* %3, align 4
  %80 = load double*, double** %4, align 8
  %81 = getelementptr inbounds double, double* %80, i64 0
  %82 = load double, double* %81, align 8
  %83 = call i32 @SetCGATSfld(i32 %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), double %82)
  %84 = load i32, i32* %3, align 4
  %85 = load double*, double** %4, align 8
  %86 = getelementptr inbounds double, double* %85, i64 1
  %87 = load double, double* %86, align 8
  %88 = call i32 @SetCGATSfld(i32 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), double %87)
  %89 = load i32, i32* %3, align 4
  %90 = load double*, double** %4, align 8
  %91 = getelementptr inbounds double, double* %90, i64 2
  %92 = load double, double* %91, align 8
  %93 = call i32 @SetCGATSfld(i32 %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), double %92)
  %94 = load i32, i32* %3, align 4
  %95 = load double*, double** %4, align 8
  %96 = getelementptr inbounds double, double* %95, i64 3
  %97 = load double, double* %96, align 8
  %98 = call i32 @SetCGATSfld(i32 %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), double %97)
  br label %167

99:                                               ; preds = %2
  %100 = load i32, i32* %3, align 4
  %101 = load double*, double** %4, align 8
  %102 = getelementptr inbounds double, double* %101, i64 0
  %103 = load double, double* %102, align 8
  %104 = call i32 @SetCGATSfld(i32 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), double %103)
  %105 = load i32, i32* %3, align 4
  %106 = load double*, double** %4, align 8
  %107 = getelementptr inbounds double, double* %106, i64 1
  %108 = load double, double* %107, align 8
  %109 = call i32 @SetCGATSfld(i32 %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), double %108)
  %110 = load i32, i32* %3, align 4
  %111 = load double*, double** %4, align 8
  %112 = getelementptr inbounds double, double* %111, i64 2
  %113 = load double, double* %112, align 8
  %114 = call i32 @SetCGATSfld(i32 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), double %113)
  br label %167

115:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @InputColorSpace, align 4
  %118 = call i32 @cmsChannelsOf(i32 %116, i32 %117)
  store i32 %118, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %138, %115
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %119
  %124 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  %128 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 %125, i32 %127)
  %129 = load i32, i32* %3, align 4
  %130 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %131 = load double*, double** %4, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds double, double* %131, i64 %133
  %135 = load double, double* %134, align 8
  %136 = fmul double %135, 1.000000e+02
  %137 = call i32 @SetCGATSfld(i32 %129, i8* %130, double %136)
  br label %138

138:                                              ; preds = %123
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %119

141:                                              ; preds = %119
  br label %167

142:                                              ; preds = %2
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* @InputColorSpace, align 4
  %145 = call i32 @cmsChannelsOf(i32 %143, i32 %144)
  store i32 %145, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %146

146:                                              ; preds = %163, %142
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %146
  %151 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  %154 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* %3, align 4
  %156 = getelementptr inbounds [255 x i8], [255 x i8]* %10, i64 0, i64 0
  %157 = load double*, double** %4, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds double, double* %157, i64 %159
  %161 = load double, double* %160, align 8
  %162 = call i32 @SetCGATSfld(i32 %155, i8* %156, double %161)
  br label %163

163:                                              ; preds = %150
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %146

166:                                              ; preds = %146
  br label %167

167:                                              ; preds = %166, %141, %99, %78, %71, %52, %36, %17
  ret void
}

declare dso_local i32 @cmsIT8SetData(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @SetCGATSfld(i32, i8*, double) #1

declare dso_local i32 @cmsChannelsOf(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
