; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_TakeCGATSValues.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_TakeCGATSValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hIT8in = common dso_local global i32 0, align 4
@CGATSPatch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Sorry, I need 'SAMPLE_ID' on input CGATS to operate.\00", align 1
@InputNamedColor = common dso_local global i64 0, align 8
@hTrans = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Malformed named color profile\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Named color '%s' not found in the profile\00", align 1
@InputColorSpace = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"XYZ_X\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"XYZ_Y\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"XYZ_Z\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"LAB_L\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"LAB_A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"LAB_B\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"RGB_R\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"RGB_G\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"RGB_B\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"GRAY\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"CMYK_C\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"CMYK_M\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"CMYK_Y\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"CMYK_K\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"CMY_C\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"CMY_M\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"CMY_Y\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"%uCLR_%u\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"CHAN_%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, double*)* @TakeCGATSValues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TakeCGATSValues(i32 %0, i32 %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [255 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [255 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store double* %2, double** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @hIT8in, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @CGATSPatch, align 4
  %19 = call i32* @cmsIT8GetPatchName(i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %3
  %24 = load i64, i64* @InputNamedColor, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  %27 = load i32, i32* @hTrans, align 4
  %28 = call i32* @cmsGetNamedColorList(i32 %27)
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32, i32* %4, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @CGATSPatch, align 4
  %37 = call i32 @cmsNamedColorIndex(i32 %34, i32* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @CGATSPatch, align 4
  %42 = call i32 (i8*, ...) @FatalError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %33
  %44 = load i32, i32* %8, align 4
  %45 = sitofp i32 %44 to double
  %46 = load double*, double** %6, align 8
  %47 = getelementptr inbounds double, double* %46, i64 0
  store double %45, double* %47, align 8
  br label %188

48:                                               ; preds = %23
  %49 = load i32, i32* @InputColorSpace, align 4
  switch i32 %49, label %164 [
    i32 128, label %50
    i32 130, label %72
    i32 129, label %91
    i32 131, label %104
    i32 132, label %109
    i32 133, label %126
    i32 142, label %139
    i32 141, label %139
    i32 140, label %139
    i32 139, label %139
    i32 138, label %139
    i32 137, label %139
    i32 136, label %139
    i32 135, label %139
    i32 134, label %139
    i32 148, label %139
    i32 147, label %139
    i32 146, label %139
    i32 145, label %139
    i32 144, label %139
    i32 143, label %139
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @hIT8in, align 4
  %53 = load i32, i32* @CGATSPatch, align 4
  %54 = call double @cmsIT8GetDataDbl(i32 %51, i32 %52, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %55 = fdiv double %54, 1.000000e+02
  %56 = load double*, double** %6, align 8
  %57 = getelementptr inbounds double, double* %56, i64 0
  store double %55, double* %57, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @hIT8in, align 4
  %60 = load i32, i32* @CGATSPatch, align 4
  %61 = call double @cmsIT8GetDataDbl(i32 %58, i32 %59, i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %62 = fdiv double %61, 1.000000e+02
  %63 = load double*, double** %6, align 8
  %64 = getelementptr inbounds double, double* %63, i64 1
  store double %62, double* %64, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @hIT8in, align 4
  %67 = load i32, i32* @CGATSPatch, align 4
  %68 = call double @cmsIT8GetDataDbl(i32 %65, i32 %66, i32 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %69 = fdiv double %68, 1.000000e+02
  %70 = load double*, double** %6, align 8
  %71 = getelementptr inbounds double, double* %70, i64 2
  store double %69, double* %71, align 8
  br label %188

72:                                               ; preds = %48
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @hIT8in, align 4
  %75 = load i32, i32* @CGATSPatch, align 4
  %76 = call double @cmsIT8GetDataDbl(i32 %73, i32 %74, i32 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %77 = load double*, double** %6, align 8
  %78 = getelementptr inbounds double, double* %77, i64 0
  store double %76, double* %78, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @hIT8in, align 4
  %81 = load i32, i32* @CGATSPatch, align 4
  %82 = call double @cmsIT8GetDataDbl(i32 %79, i32 %80, i32 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %83 = load double*, double** %6, align 8
  %84 = getelementptr inbounds double, double* %83, i64 1
  store double %82, double* %84, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @hIT8in, align 4
  %87 = load i32, i32* @CGATSPatch, align 4
  %88 = call double @cmsIT8GetDataDbl(i32 %85, i32 %86, i32 %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %89 = load double*, double** %6, align 8
  %90 = getelementptr inbounds double, double* %89, i64 2
  store double %88, double* %90, align 8
  br label %188

91:                                               ; preds = %48
  %92 = load i32, i32* %4, align 4
  %93 = call double @GetIT8Val(i32 %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), double 2.550000e+02)
  %94 = load double*, double** %6, align 8
  %95 = getelementptr inbounds double, double* %94, i64 0
  store double %93, double* %95, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call double @GetIT8Val(i32 %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), double 2.550000e+02)
  %98 = load double*, double** %6, align 8
  %99 = getelementptr inbounds double, double* %98, i64 1
  store double %97, double* %99, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call double @GetIT8Val(i32 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), double 2.550000e+02)
  %102 = load double*, double** %6, align 8
  %103 = getelementptr inbounds double, double* %102, i64 2
  store double %101, double* %103, align 8
  br label %188

104:                                              ; preds = %48
  %105 = load i32, i32* %4, align 4
  %106 = call double @GetIT8Val(i32 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), double 2.550000e+02)
  %107 = load double*, double** %6, align 8
  %108 = getelementptr inbounds double, double* %107, i64 0
  store double %106, double* %108, align 8
  br label %188

109:                                              ; preds = %48
  %110 = load i32, i32* %4, align 4
  %111 = call double @GetIT8Val(i32 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), double 1.000000e+00)
  %112 = load double*, double** %6, align 8
  %113 = getelementptr inbounds double, double* %112, i64 0
  store double %111, double* %113, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call double @GetIT8Val(i32 %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), double 1.000000e+00)
  %116 = load double*, double** %6, align 8
  %117 = getelementptr inbounds double, double* %116, i64 1
  store double %115, double* %117, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call double @GetIT8Val(i32 %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), double 1.000000e+00)
  %120 = load double*, double** %6, align 8
  %121 = getelementptr inbounds double, double* %120, i64 2
  store double %119, double* %121, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call double @GetIT8Val(i32 %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), double 1.000000e+00)
  %124 = load double*, double** %6, align 8
  %125 = getelementptr inbounds double, double* %124, i64 3
  store double %123, double* %125, align 8
  br label %188

126:                                              ; preds = %48
  %127 = load i32, i32* %4, align 4
  %128 = call double @GetIT8Val(i32 %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), double 1.000000e+00)
  %129 = load double*, double** %6, align 8
  %130 = getelementptr inbounds double, double* %129, i64 0
  store double %128, double* %130, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call double @GetIT8Val(i32 %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), double 1.000000e+00)
  %133 = load double*, double** %6, align 8
  %134 = getelementptr inbounds double, double* %133, i64 1
  store double %132, double* %134, align 8
  %135 = load i32, i32* %4, align 4
  %136 = call double @GetIT8Val(i32 %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), double 1.000000e+00)
  %137 = load double*, double** %6, align 8
  %138 = getelementptr inbounds double, double* %137, i64 2
  store double %136, double* %138, align 8
  br label %188

139:                                              ; preds = %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @InputColorSpace, align 4
  %142 = call i32 @cmsChannelsOf(i32 %140, i32 %141)
  store i32 %142, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %143

143:                                              ; preds = %160, %139
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %163

147:                                              ; preds = %143
  %148 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  %152 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 %149, i32 %151)
  %153 = load i32, i32* %4, align 4
  %154 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %155 = call double @GetIT8Val(i32 %153, i8* %154, double 1.000000e+02)
  %156 = load double*, double** %6, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double, double* %156, i64 %158
  store double %155, double* %159, align 8
  br label %160

160:                                              ; preds = %147
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %143

163:                                              ; preds = %143
  br label %188

164:                                              ; preds = %48
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @InputColorSpace, align 4
  %167 = call i32 @cmsChannelsOf(i32 %165, i32 %166)
  store i32 %167, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %168

168:                                              ; preds = %184, %164
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %187

172:                                              ; preds = %168
  %173 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, 1
  %176 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %4, align 4
  %178 = getelementptr inbounds [255 x i8], [255 x i8]* %14, i64 0, i64 0
  %179 = call double @GetIT8Val(i32 %177, i8* %178, double 1.000000e+00)
  %180 = load double*, double** %6, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds double, double* %180, i64 %182
  store double %179, double* %183, align 8
  br label %184

184:                                              ; preds = %172
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %12, align 4
  br label %168

187:                                              ; preds = %168
  br label %188

188:                                              ; preds = %43, %187, %163, %126, %109, %104, %91, %72, %50
  ret void
}

declare dso_local i32* @cmsIT8GetPatchName(i32, i32, i32, i32) #1

declare dso_local i32 @FatalError(i8*, ...) #1

declare dso_local i32* @cmsGetNamedColorList(i32) #1

declare dso_local i32 @cmsNamedColorIndex(i32, i32*, i32) #1

declare dso_local double @cmsIT8GetDataDbl(i32, i32, i32, i8*) #1

declare dso_local double @GetIT8Val(i32, i8*, double) #1

declare dso_local i32 @cmsChannelsOf(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
