; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-sgi.c_sgilog24val.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-sgi.c_sgilog24val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_LN2 = common dso_local global i32 0, align 4
@U_NEU = common dso_local global float 0.000000e+00, align 4
@V_NEU = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64*)* @sgilog24val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgilog24val(i32* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @fz_read_byte(i32* %24, i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %192

31:                                               ; preds = %3
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @fz_read_byte(i32* %32, i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %192

39:                                               ; preds = %31
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @fz_read_byte(i32* %40, i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %192

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 %48, 16
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 %50, 8
  %52 = or i32 %49, %51
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = ashr i32 %55, 14
  %57 = and i32 %56, 1023
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %75

61:                                               ; preds = %47
  %62 = load i32, i32* @FZ_LN2, align 4
  %63 = sdiv i32 %62, 64
  %64 = sitofp i32 %63 to float
  %65 = load i32, i32* %12, align 4
  %66 = sitofp i32 %65 to float
  %67 = fadd float %66, 5.000000e-01
  %68 = fmul float %64, %67
  %69 = load i32, i32* @FZ_LN2, align 4
  %70 = mul nsw i32 %69, 12
  %71 = sitofp i32 %70 to float
  %72 = fsub float %68, %71
  %73 = fptosi float %72 to i32
  %74 = call float @expf(i32 %73)
  br label %75

75:                                               ; preds = %61, %60
  %76 = phi float [ 0.000000e+00, %60 ], [ %74, %61 ]
  store float %76, float* %19, align 4
  %77 = load float, float* %19, align 4
  %78 = fcmp ole float %77, 0.000000e+00
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store float 0.000000e+00, float* %20, align 4
  store float 0.000000e+00, float* %19, align 4
  store float 0.000000e+00, float* %18, align 4
  br label %113

80:                                               ; preds = %75
  %81 = load i32, i32* %11, align 4
  %82 = and i32 %81, 16383
  %83 = call i64 @uv_decode(float* %13, float* %14, i32 %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load float, float* @U_NEU, align 4
  store float %86, float* %13, align 4
  %87 = load float, float* @V_NEU, align 4
  store float %87, float* %14, align 4
  br label %88

88:                                               ; preds = %85, %80
  %89 = load float, float* %13, align 4
  %90 = fmul float 6.000000e+00, %89
  %91 = load float, float* %14, align 4
  %92 = fmul float 1.600000e+01, %91
  %93 = fsub float %90, %92
  %94 = fadd float %93, 1.200000e+01
  store float %94, float* %15, align 4
  %95 = load float, float* %13, align 4
  %96 = fmul float 9.000000e+00, %95
  store float %96, float* %16, align 4
  %97 = load float, float* %14, align 4
  %98 = fmul float 4.000000e+00, %97
  store float %98, float* %17, align 4
  %99 = load float, float* %16, align 4
  %100 = load float, float* %17, align 4
  %101 = fdiv float %99, %100
  %102 = load float, float* %19, align 4
  %103 = fmul float %101, %102
  store float %103, float* %18, align 4
  %104 = load float, float* %15, align 4
  %105 = load float, float* %16, align 4
  %106 = fsub float %104, %105
  %107 = load float, float* %17, align 4
  %108 = fsub float %106, %107
  %109 = load float, float* %17, align 4
  %110 = fdiv float %108, %109
  %111 = load float, float* %19, align 4
  %112 = fmul float %110, %111
  store float %112, float* %20, align 4
  br label %113

113:                                              ; preds = %88, %79
  %114 = load float, float* %18, align 4
  %115 = fmul float 0x4005851EC0000000, %114
  %116 = load float, float* %19, align 4
  %117 = fmul float 0xBFF46A7F00000000, %116
  %118 = fadd float %115, %117
  %119 = load float, float* %20, align 4
  %120 = fmul float 0xBFDA7EF9E0000000, %119
  %121 = fadd float %118, %120
  store float %121, float* %21, align 4
  %122 = load float, float* %18, align 4
  %123 = fmul float 0xBFF05A1CA0000000, %122
  %124 = load float, float* %19, align 4
  %125 = fmul float 0x3FFFA5E360000000, %124
  %126 = fadd float %123, %125
  %127 = load float, float* %20, align 4
  %128 = fmul float 0x3FA6872B00000000, %127
  %129 = fadd float %126, %128
  store float %129, float* %22, align 4
  %130 = load float, float* %18, align 4
  %131 = fmul float 0x3FAF3B6460000000, %130
  %132 = load float, float* %19, align 4
  %133 = fmul float 0xBFCCAC0840000000, %132
  %134 = fadd float %131, %133
  %135 = load float, float* %20, align 4
  %136 = fmul float 0x3FF29BA5E0000000, %135
  %137 = fadd float %134, %136
  store float %137, float* %23, align 4
  %138 = load float, float* %21, align 4
  %139 = fcmp ole float %138, 0.000000e+00
  br i1 %139, label %140, label %141

140:                                              ; preds = %113
  br label %151

141:                                              ; preds = %113
  %142 = load float, float* %21, align 4
  %143 = fcmp oge float %142, 1.000000e+00
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %149

145:                                              ; preds = %141
  %146 = load float, float* %21, align 4
  %147 = call i32 @sqrtf(float %146)
  %148 = mul nsw i32 256, %147
  br label %149

149:                                              ; preds = %145, %144
  %150 = phi i32 [ 255, %144 ], [ %148, %145 ]
  br label %151

151:                                              ; preds = %149, %140
  %152 = phi i32 [ 0, %140 ], [ %150, %149 ]
  %153 = sext i32 %152 to i64
  %154 = load i64*, i64** %7, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 0
  store i64 %153, i64* %155, align 8
  %156 = load float, float* %22, align 4
  %157 = fcmp ole float %156, 0.000000e+00
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %169

159:                                              ; preds = %151
  %160 = load float, float* %22, align 4
  %161 = fcmp oge float %160, 1.000000e+00
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  br label %167

163:                                              ; preds = %159
  %164 = load float, float* %22, align 4
  %165 = call i32 @sqrtf(float %164)
  %166 = mul nsw i32 256, %165
  br label %167

167:                                              ; preds = %163, %162
  %168 = phi i32 [ 255, %162 ], [ %166, %163 ]
  br label %169

169:                                              ; preds = %167, %158
  %170 = phi i32 [ 0, %158 ], [ %168, %167 ]
  %171 = sext i32 %170 to i64
  %172 = load i64*, i64** %7, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 1
  store i64 %171, i64* %173, align 8
  %174 = load float, float* %23, align 4
  %175 = fcmp ole float %174, 0.000000e+00
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  br label %187

177:                                              ; preds = %169
  %178 = load float, float* %23, align 4
  %179 = fcmp oge float %178, 1.000000e+00
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  br label %185

181:                                              ; preds = %177
  %182 = load float, float* %23, align 4
  %183 = call i32 @sqrtf(float %182)
  %184 = mul nsw i32 256, %183
  br label %185

185:                                              ; preds = %181, %180
  %186 = phi i32 [ 255, %180 ], [ %184, %181 ]
  br label %187

187:                                              ; preds = %185, %176
  %188 = phi i32 [ 0, %176 ], [ %186, %185 ]
  %189 = sext i32 %188 to i64
  %190 = load i64*, i64** %7, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 2
  store i64 %189, i64* %191, align 8
  store i32 0, i32* %4, align 4
  br label %192

192:                                              ; preds = %187, %45, %37, %29
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i32 @fz_read_byte(i32*, i32*) #1

declare dso_local float @expf(i32) #1

declare dso_local i64 @uv_decode(float*, float*, i32) #1

declare dso_local i32 @sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
