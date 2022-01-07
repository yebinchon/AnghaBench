; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_psnr_enc.c_AccumulateSSIM.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_psnr_enc.c_AccumulateSSIM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VP8_SSIM_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, i32, i32*, i32, i32, i32)* @AccumulateSSIM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @AccumulateSSIM(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @VP8_SSIM_KERNEL, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %11, align 4
  br label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @VP8_SSIM_KERNEL, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @VP8_SSIM_KERNEL, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @VP8_SSIM_KERNEL, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %12, align 4
  br label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @VP8_SSIM_KERNEL, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @VP8_SSIM_KERNEL, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %16, align 4
  store double 0.000000e+00, double* %19, align 8
  store i32 0, i32* %18, align 4
  br label %48

48:                                               ; preds = %74, %42
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %48
  store i32 0, i32* %17, align 4
  br label %53

53:                                               ; preds = %70, %52
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i64 @VP8SSIMGetClipped(i32* %58, i32 %59, i32* %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = sitofp i64 %66 to double
  %68 = load double, double* %19, align 8
  %69 = fadd double %68, %67
  store double %69, double* %19, align 8
  br label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %17, align 4
  br label %53

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %18, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %18, align 4
  br label %48

77:                                               ; preds = %48
  br label %78

78:                                               ; preds = %166, %77
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %169

82:                                               ; preds = %78
  store i32 0, i32* %17, align 4
  br label %83

83:                                               ; preds = %100, %82
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %83
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i64 @VP8SSIMGetClipped(i32* %88, i32 %89, i32* %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = sitofp i64 %96 to double
  %98 = load double, double* %19, align 8
  %99 = fadd double %98, %97
  store double %99, double* %19, align 8
  br label %100

100:                                              ; preds = %87
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %17, align 4
  br label %83

103:                                              ; preds = %83
  br label %104

104:                                              ; preds = %141, %103
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %144

108:                                              ; preds = %104
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* @VP8_SSIM_KERNEL, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* @VP8_SSIM_KERNEL, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load i32, i32* %8, align 4
  %116 = mul nsw i32 %114, %115
  %117 = add nsw i32 %111, %116
  store i32 %117, i32* %20, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* @VP8_SSIM_KERNEL, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* @VP8_SSIM_KERNEL, align 4
  %123 = sub nsw i32 %121, %122
  %124 = load i32, i32* %10, align 4
  %125 = mul nsw i32 %123, %124
  %126 = add nsw i32 %120, %125
  store i32 %126, i32* %21, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %20, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %8, align 4
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %21, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %10, align 4
  %137 = call i64 @VP8SSIMGet(i32* %130, i32 %131, i32* %135, i32 %136)
  %138 = sitofp i64 %137 to double
  %139 = load double, double* %19, align 8
  %140 = fadd double %139, %138
  store double %140, double* %19, align 8
  br label %141

141:                                              ; preds = %108
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %17, align 4
  br label %104

144:                                              ; preds = %104
  br label %145

145:                                              ; preds = %162, %144
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %145
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load i32*, i32** %9, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %12, align 4
  %158 = call i64 @VP8SSIMGetClipped(i32* %150, i32 %151, i32* %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157)
  %159 = sitofp i64 %158 to double
  %160 = load double, double* %19, align 8
  %161 = fadd double %160, %159
  store double %161, double* %19, align 8
  br label %162

162:                                              ; preds = %149
  %163 = load i32, i32* %17, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %17, align 4
  br label %145

165:                                              ; preds = %145
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %18, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %18, align 4
  br label %78

169:                                              ; preds = %78
  br label %170

170:                                              ; preds = %196, %169
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %199

174:                                              ; preds = %170
  store i32 0, i32* %17, align 4
  br label %175

175:                                              ; preds = %192, %174
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %195

179:                                              ; preds = %175
  %180 = load i32*, i32** %7, align 8
  %181 = load i32, i32* %8, align 4
  %182 = load i32*, i32** %9, align 8
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %12, align 4
  %188 = call i64 @VP8SSIMGetClipped(i32* %180, i32 %181, i32* %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187)
  %189 = sitofp i64 %188 to double
  %190 = load double, double* %19, align 8
  %191 = fadd double %190, %189
  store double %191, double* %19, align 8
  br label %192

192:                                              ; preds = %179
  %193 = load i32, i32* %17, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %17, align 4
  br label %175

195:                                              ; preds = %175
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %18, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %18, align 4
  br label %170

199:                                              ; preds = %170
  %200 = load double, double* %19, align 8
  ret double %200
}

declare dso_local i64 @VP8SSIMGetClipped(i32*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @VP8SSIMGet(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
