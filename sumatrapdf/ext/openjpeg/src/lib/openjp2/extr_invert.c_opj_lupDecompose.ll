; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_invert.c_opj_lupDecompose.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_invert.c_opj_lupDecompose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPJ_FALSE = common dso_local global i32 0, align 4
@OPJ_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double*, i32*, double*, i32)* @opj_lupDecompose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_lupDecompose(double* %0, i32* %1, double* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double*, align 8
  %22 = alloca double*, align 8
  %23 = alloca double*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store double* %0, double** %6, align 8
  store i32* %1, i32** %7, align 8
  store double* %2, double** %8, align 8
  store i32 %3, i32* %9, align 4
  %26 = load i32*, i32** %7, align 8
  store i32* %26, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %9, align 4
  %30 = mul nsw i32 %29, 8
  store i32 %30, i32* %20, align 4
  %31 = load double*, double** %6, align 8
  store double* %31, double** %21, align 8
  store i32 1, i32* %24, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %25, align 4
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %42, %4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32, i32* %15, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  br label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %15, align 4
  br label %34

45:                                               ; preds = %34
  %46 = load i32*, i32** %7, align 8
  store i32* %46, i32** %10, align 8
  store i32 0, i32* %17, align 4
  br label %47

47:                                               ; preds = %200, %45
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %19, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %203

51:                                               ; preds = %47
  store double 0.000000e+00, double* %18, align 8
  %52 = load double*, double** %21, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %52, i64 %54
  store double* %55, double** %22, align 8
  %56 = load i32, i32* %17, align 4
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %85, %51
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %57
  %62 = load double*, double** %22, align 8
  %63 = load double, double* %62, align 8
  %64 = fcmp ogt double %63, 0.000000e+00
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load double*, double** %22, align 8
  %67 = load double, double* %66, align 8
  br label %72

68:                                               ; preds = %61
  %69 = load double*, double** %22, align 8
  %70 = load double, double* %69, align 8
  %71 = fneg double %70
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi double [ %67, %65 ], [ %71, %68 ]
  store double %73, double* %14, align 8
  %74 = load double, double* %14, align 8
  %75 = load double, double* %18, align 8
  %76 = fcmp ogt double %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load double, double* %14, align 8
  store double %78, double* %18, align 8
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* %9, align 4
  %82 = load double*, double** %22, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds double, double* %82, i64 %83
  store double* %84, double** %22, align 8
  br label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %15, align 4
  br label %57

88:                                               ; preds = %57
  %89 = load double, double* %18, align 8
  %90 = fcmp oeq double %89, 0.000000e+00
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %92, i32* %5, align 4
  br label %205

93:                                               ; preds = %88
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %133

97:                                               ; preds = %93
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = sub i64 0, %103
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  store i32* %105, i32** %11, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %13, align 4
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %10, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32*, i32** %11, align 8
  store i32 %111, i32* %112, align 4
  %113 = load double*, double** %21, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %17, align 4
  %116 = sub nsw i32 %114, %115
  %117 = load i32, i32* %9, align 4
  %118 = mul nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %113, i64 %119
  store double* %120, double** %22, align 8
  %121 = load double*, double** %8, align 8
  %122 = load double*, double** %22, align 8
  %123 = load i32, i32* %20, align 4
  %124 = call i32 @memcpy(double* %121, double* %122, i32 %123)
  %125 = load double*, double** %22, align 8
  %126 = load double*, double** %21, align 8
  %127 = load i32, i32* %20, align 4
  %128 = call i32 @memcpy(double* %125, double* %126, i32 %127)
  %129 = load double*, double** %21, align 8
  %130 = load double*, double** %8, align 8
  %131 = load i32, i32* %20, align 4
  %132 = call i32 @memcpy(double* %129, double* %130, i32 %131)
  br label %133

133:                                              ; preds = %97, %93
  %134 = load double*, double** %21, align 8
  %135 = load i32, i32* %17, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds double, double* %134, i64 %136
  store double* %137, double** %23, align 8
  %138 = load double*, double** %23, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds double, double* %138, i64 %140
  store double* %141, double** %22, align 8
  %142 = load double*, double** %23, align 8
  %143 = getelementptr inbounds double, double* %142, i32 1
  store double* %143, double** %23, align 8
  %144 = load double, double* %142, align 8
  store double %144, double* %14, align 8
  %145 = load i32, i32* %24, align 4
  store i32 %145, i32* %15, align 4
  br label %146

146:                                              ; preds = %186, %133
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %189

150:                                              ; preds = %146
  %151 = load double*, double** %22, align 8
  %152 = load double, double* %151, align 8
  %153 = load double, double* %14, align 8
  %154 = fdiv double %152, %153
  store double %154, double* %18, align 8
  %155 = load double, double* %18, align 8
  %156 = load double*, double** %22, align 8
  %157 = getelementptr inbounds double, double* %156, i32 1
  store double* %157, double** %22, align 8
  store double %155, double* %156, align 8
  %158 = load i32, i32* %24, align 4
  store i32 %158, i32* %16, align 4
  br label %159

159:                                              ; preds = %173, %150
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %176

163:                                              ; preds = %159
  %164 = load double, double* %18, align 8
  %165 = load double*, double** %23, align 8
  %166 = getelementptr inbounds double, double* %165, i32 1
  store double* %166, double** %23, align 8
  %167 = load double, double* %165, align 8
  %168 = fmul double %164, %167
  %169 = load double*, double** %22, align 8
  %170 = getelementptr inbounds double, double* %169, i32 1
  store double* %170, double** %22, align 8
  %171 = load double, double* %169, align 8
  %172 = fsub double %171, %168
  store double %172, double* %169, align 8
  br label %173

173:                                              ; preds = %163
  %174 = load i32, i32* %16, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %16, align 4
  br label %159

176:                                              ; preds = %159
  %177 = load i32, i32* %25, align 4
  %178 = load double*, double** %23, align 8
  %179 = sext i32 %177 to i64
  %180 = sub i64 0, %179
  %181 = getelementptr inbounds double, double* %178, i64 %180
  store double* %181, double** %23, align 8
  %182 = load i32, i32* %17, align 4
  %183 = load double*, double** %22, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds double, double* %183, i64 %184
  store double* %185, double** %22, align 8
  br label %186

186:                                              ; preds = %176
  %187 = load i32, i32* %15, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %15, align 4
  br label %146

189:                                              ; preds = %146
  %190 = load i32, i32* %24, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %24, align 4
  %192 = load i32, i32* %25, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %25, align 4
  %194 = load i32, i32* %9, align 4
  %195 = load double*, double** %21, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds double, double* %195, i64 %196
  store double* %197, double** %21, align 8
  %198 = load i32*, i32** %10, align 8
  %199 = getelementptr inbounds i32, i32* %198, i32 1
  store i32* %199, i32** %10, align 8
  br label %200

200:                                              ; preds = %189
  %201 = load i32, i32* %17, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %17, align 4
  br label %47

203:                                              ; preds = %47
  %204 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %204, i32* %5, align 4
  br label %205

205:                                              ; preds = %203, %91
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local i32 @memcpy(double*, double*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
