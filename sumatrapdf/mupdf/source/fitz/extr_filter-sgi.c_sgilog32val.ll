; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-sgi.c_sgilog32val.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-sgi.c_sgilog32val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_LN2 = common dso_local global i32 0, align 4
@UVSCALE = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i64*)* @sgilog32val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgilog32val(i32* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 31
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store float 0.000000e+00, float* %17, align 4
  store float 0.000000e+00, float* %16, align 4
  store float 0.000000e+00, float* %15, align 4
  br label %85

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 16
  %26 = and i32 %25, 32767
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %18, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %44

30:                                               ; preds = %23
  %31 = load i32, i32* @FZ_LN2, align 4
  %32 = sdiv i32 %31, 256
  %33 = sitofp i32 %32 to float
  %34 = load i32, i32* %18, align 4
  %35 = sitofp i32 %34 to float
  %36 = fadd float %35, 5.000000e-01
  %37 = fmul float %33, %36
  %38 = load i32, i32* @FZ_LN2, align 4
  %39 = mul nsw i32 %38, 64
  %40 = sitofp i32 %39 to float
  %41 = fsub float %37, %40
  %42 = fptosi float %41 to i32
  %43 = call float @expf(i32 %42)
  br label %44

44:                                               ; preds = %30, %29
  %45 = phi float [ 0.000000e+00, %29 ], [ %43, %30 ]
  store float %45, float* %16, align 4
  %46 = load float, float* @UVSCALE, align 4
  %47 = fdiv float 1.000000e+00, %46
  %48 = load i32, i32* %5, align 4
  %49 = ashr i32 %48, 8
  %50 = and i32 %49, 255
  %51 = sitofp i32 %50 to float
  %52 = fadd float %51, 5.000000e-01
  %53 = fmul float %47, %52
  store float %53, float* %10, align 4
  %54 = load float, float* @UVSCALE, align 4
  %55 = fdiv float 1.000000e+00, %54
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 255
  %58 = sitofp i32 %57 to float
  %59 = fadd float %58, 5.000000e-01
  %60 = fmul float %55, %59
  store float %60, float* %11, align 4
  %61 = load float, float* %10, align 4
  %62 = fmul float 6.000000e+00, %61
  %63 = load float, float* %11, align 4
  %64 = fmul float 1.600000e+01, %63
  %65 = fsub float %62, %64
  %66 = fadd float %65, 1.200000e+01
  store float %66, float* %12, align 4
  %67 = load float, float* %10, align 4
  %68 = fmul float 9.000000e+00, %67
  store float %68, float* %13, align 4
  %69 = load float, float* %11, align 4
  %70 = fmul float 4.000000e+00, %69
  store float %70, float* %14, align 4
  %71 = load float, float* %13, align 4
  %72 = load float, float* %14, align 4
  %73 = fdiv float %71, %72
  %74 = load float, float* %16, align 4
  %75 = fmul float %73, %74
  store float %75, float* %15, align 4
  %76 = load float, float* %12, align 4
  %77 = load float, float* %13, align 4
  %78 = fsub float %76, %77
  %79 = load float, float* %14, align 4
  %80 = fsub float %78, %79
  %81 = load float, float* %14, align 4
  %82 = fdiv float %80, %81
  %83 = load float, float* %16, align 4
  %84 = fmul float %82, %83
  store float %84, float* %17, align 4
  br label %85

85:                                               ; preds = %44, %22
  %86 = load float, float* %15, align 4
  %87 = fmul float 0x4005851EC0000000, %86
  %88 = load float, float* %16, align 4
  %89 = fmul float 0xBFF46A7F00000000, %88
  %90 = fadd float %87, %89
  %91 = load float, float* %17, align 4
  %92 = fmul float 0xBFDA7EF9E0000000, %91
  %93 = fadd float %90, %92
  store float %93, float* %7, align 4
  %94 = load float, float* %15, align 4
  %95 = fmul float 0xBFF05A1CA0000000, %94
  %96 = load float, float* %16, align 4
  %97 = fmul float 0x3FFFA5E360000000, %96
  %98 = fadd float %95, %97
  %99 = load float, float* %17, align 4
  %100 = fmul float 0x3FA6872B00000000, %99
  %101 = fadd float %98, %100
  store float %101, float* %8, align 4
  %102 = load float, float* %15, align 4
  %103 = fmul float 0x3FAF3B6460000000, %102
  %104 = load float, float* %16, align 4
  %105 = fmul float 0xBFCCAC0840000000, %104
  %106 = fadd float %103, %105
  %107 = load float, float* %17, align 4
  %108 = fmul float 0x3FF29BA5E0000000, %107
  %109 = fadd float %106, %108
  store float %109, float* %9, align 4
  %110 = load float, float* %7, align 4
  %111 = fcmp ole float %110, 0.000000e+00
  br i1 %111, label %112, label %113

112:                                              ; preds = %85
  br label %123

113:                                              ; preds = %85
  %114 = load float, float* %7, align 4
  %115 = fcmp oge float %114, 1.000000e+00
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %121

117:                                              ; preds = %113
  %118 = load float, float* %7, align 4
  %119 = call i32 @sqrtf(float %118)
  %120 = mul nsw i32 256, %119
  br label %121

121:                                              ; preds = %117, %116
  %122 = phi i32 [ 255, %116 ], [ %120, %117 ]
  br label %123

123:                                              ; preds = %121, %112
  %124 = phi i32 [ 0, %112 ], [ %122, %121 ]
  %125 = sext i32 %124 to i64
  %126 = load i64*, i64** %6, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 0
  store i64 %125, i64* %127, align 8
  %128 = load float, float* %8, align 4
  %129 = fcmp ole float %128, 0.000000e+00
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %141

131:                                              ; preds = %123
  %132 = load float, float* %8, align 4
  %133 = fcmp oge float %132, 1.000000e+00
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %139

135:                                              ; preds = %131
  %136 = load float, float* %8, align 4
  %137 = call i32 @sqrtf(float %136)
  %138 = mul nsw i32 256, %137
  br label %139

139:                                              ; preds = %135, %134
  %140 = phi i32 [ 255, %134 ], [ %138, %135 ]
  br label %141

141:                                              ; preds = %139, %130
  %142 = phi i32 [ 0, %130 ], [ %140, %139 ]
  %143 = sext i32 %142 to i64
  %144 = load i64*, i64** %6, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 1
  store i64 %143, i64* %145, align 8
  %146 = load float, float* %9, align 4
  %147 = fcmp ole float %146, 0.000000e+00
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %159

149:                                              ; preds = %141
  %150 = load float, float* %9, align 4
  %151 = fcmp oge float %150, 1.000000e+00
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %157

153:                                              ; preds = %149
  %154 = load float, float* %9, align 4
  %155 = call i32 @sqrtf(float %154)
  %156 = mul nsw i32 256, %155
  br label %157

157:                                              ; preds = %153, %152
  %158 = phi i32 [ 255, %152 ], [ %156, %153 ]
  br label %159

159:                                              ; preds = %157, %148
  %160 = phi i32 [ 0, %148 ], [ %158, %157 ]
  %161 = sext i32 %160 to i64
  %162 = load i64*, i64** %6, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 2
  store i64 %161, i64* %163, align 8
  ret void
}

declare dso_local float @expf(i32) #1

declare dso_local i32 @sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
