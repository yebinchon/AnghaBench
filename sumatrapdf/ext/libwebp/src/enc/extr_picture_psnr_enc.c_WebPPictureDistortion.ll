; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_psnr_enc.c_WebPPictureDistortion.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_psnr_enc.c_WebPPictureDistortion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i64, i64 }

@BLUE_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WebPPictureDistortion(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i32 %2, float* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__, align 8
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca float, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32 %2, i32* %8, align 4
  store float* %3, float** %9, align 8
  store i32 0, i32* %13, align 4
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %17, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = icmp eq %struct.TYPE_9__* %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = icmp eq %struct.TYPE_9__* %25, null
  br i1 %26, label %46, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %27
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load float*, float** %9, align 8
  %45 = icmp eq float* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %35, %27, %24, %4
  store i32 0, i32* %5, align 4
  br label %164

47:                                               ; preds = %43
  %48 = call i32 (...) @VP8SSIMDspInit()
  %49 = call i32 @WebPPictureInit(%struct.TYPE_9__* %14)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = call i32 @WebPPictureInit(%struct.TYPE_9__* %15)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51, %47
  store i32 0, i32* %5, align 4
  br label %164

55:                                               ; preds = %51
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %10, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @WebPPictureView(%struct.TYPE_9__* %62, i32 0, i32 0, i32 %63, i32 %64, %struct.TYPE_9__* %14)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %55
  br label %160

68:                                               ; preds = %55
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @WebPPictureView(%struct.TYPE_9__* %69, i32 0, i32 0, i32 %70, i32 %71, %struct.TYPE_9__* %15)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  br label %160

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = call i32 @WebPPictureYUVAToARGB(%struct.TYPE_9__* %14)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  br label %160

83:                                               ; preds = %79, %75
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = call i32 @WebPPictureYUVAToARGB(%struct.TYPE_9__* %15)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  br label %160

91:                                               ; preds = %87, %83
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %140, %91
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %143

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = mul i64 4, %97
  store i64 %98, i64* %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = mul i64 4, %100
  store i64 %101, i64* %20, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @BLUE_OFFSET, align 4
  %104 = xor i32 %102, %103
  store i32 %104, i32* %21, align 4
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i32*
  %108 = load i32, i32* %21, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i64, i64* %19, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i32*
  %115 = load i32, i32* %21, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i64, i64* %20, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load float*, float** %9, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %122, i64 %124
  %126 = call i32 @WebPPlaneDistortion(i32* %110, i64 %111, i32* %117, i64 %118, i32 %119, i32 %120, i32 4, i32 %121, float* %18, float* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %95
  br label %160

129:                                              ; preds = %95
  %130 = load float, float* %18, align 4
  %131 = fpext float %130 to double
  %132 = load double, double* %17, align 8
  %133 = fadd double %132, %131
  store double %133, double* %17, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = mul nsw i32 %134, %135
  %137 = sitofp i32 %136 to double
  %138 = load double, double* %16, align 8
  %139 = fadd double %138, %137
  store double %139, double* %16, align 8
  br label %140

140:                                              ; preds = %129
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %92

143:                                              ; preds = %92
  %144 = load i32, i32* %8, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load double, double* %17, align 8
  %148 = load double, double* %16, align 8
  %149 = call i64 @GetLogSSIM(double %147, double %148)
  %150 = sitofp i64 %149 to float
  br label %156

151:                                              ; preds = %143
  %152 = load double, double* %17, align 8
  %153 = load double, double* %16, align 8
  %154 = call i64 @GetPSNR(double %152, double %153)
  %155 = sitofp i64 %154 to float
  br label %156

156:                                              ; preds = %151, %146
  %157 = phi float [ %150, %146 ], [ %155, %151 ]
  %158 = load float*, float** %9, align 8
  %159 = getelementptr inbounds float, float* %158, i64 4
  store float %157, float* %159, align 4
  store i32 1, i32* %13, align 4
  br label %160

160:                                              ; preds = %156, %128, %90, %82, %74, %67
  %161 = call i32 @WebPPictureFree(%struct.TYPE_9__* %14)
  %162 = call i32 @WebPPictureFree(%struct.TYPE_9__* %15)
  %163 = load i32, i32* %13, align 4
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %160, %54, %46
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @VP8SSIMDspInit(...) #1

declare dso_local i32 @WebPPictureInit(%struct.TYPE_9__*) #1

declare dso_local i32 @WebPPictureView(%struct.TYPE_9__*, i32, i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @WebPPictureYUVAToARGB(%struct.TYPE_9__*) #1

declare dso_local i32 @WebPPlaneDistortion(i32*, i64, i32*, i64, i32, i32, i32, i32, float*, float*) #1

declare dso_local i64 @GetLogSSIM(double, double) #1

declare dso_local i64 @GetPSNR(double, double) #1

declare dso_local i32 @WebPPictureFree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
