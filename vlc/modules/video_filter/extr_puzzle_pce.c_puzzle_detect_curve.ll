; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_pce.c_puzzle_detect_curve.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_pce.c_puzzle_detect_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float }

@x = common dso_local global i32 0, align 4
@y = common dso_local global i32 0, align 4
@MAX_SECT = common dso_local global i32 0, align 4
@puzzle_SHAPE_TOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puzzle_detect_curve(i32* %0, i64 %1, float %2, float %3, %struct.TYPE_4__* %4, i32 %5, i32 %6, i32 %7, i64* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i64* %8, i64** %18, align 8
  store i32 0, i32* %19, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load float, float* %31, align 4
  %33 = load float, float* %12, align 4
  %34 = fmul float %32, %33
  store float %34, float* %22, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load float, float* %37, align 4
  %39 = load float, float* %13, align 4
  %40 = fmul float %38, %39
  store float %40, float* %23, align 4
  store i32 0, i32* %24, align 4
  store float 0.000000e+00, float* %25, align 4
  br label %41

41:                                               ; preds = %147, %9
  %42 = load float, float* %25, align 4
  %43 = load i32, i32* %15, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sitofp i32 %44 to float
  %46 = fcmp ole float %42, %45
  br i1 %46, label %47, label %152

47:                                               ; preds = %41
  %48 = load float, float* %25, align 4
  %49 = call i8* @floor(float %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %19, align 4
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* %15, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* %15, align 4
  %57 = sub nsw i32 %56, 2
  store i32 %57, i32* %19, align 4
  br label %58

58:                                               ; preds = %55, %47
  %59 = load float, float* %25, align 4
  %60 = load i32, i32* %19, align 4
  %61 = sitofp i32 %60 to float
  %62 = fsub float %59, %61
  store float %62, float* %26, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %64 = load float, float* %26, align 4
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* @x, align 4
  %67 = call float @bezier_val(%struct.TYPE_4__* %63, float %64, i32 %65, i32 %66)
  %68 = load float, float* %12, align 4
  %69 = fmul float %67, %68
  store float %69, float* %20, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %71 = load float, float* %26, align 4
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* @y, align 4
  %74 = call float @bezier_val(%struct.TYPE_4__* %70, float %71, i32 %72, i32 %73)
  %75 = load float, float* %13, align 4
  %76 = fmul float %74, %75
  store float %76, float* %21, align 4
  %77 = load float, float* %23, align 4
  %78 = fpext float %77 to double
  %79 = load i64, i64* %11, align 8
  %80 = sitofp i64 %79 to float
  %81 = fpext float %80 to double
  %82 = fadd double %81, 5.000000e-01
  %83 = fcmp olt double %78, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %58
  %85 = load float, float* %21, align 4
  %86 = fpext float %85 to double
  %87 = load i64, i64* %11, align 8
  %88 = sitofp i64 %87 to float
  %89 = fpext float %88 to double
  %90 = fadd double %89, 5.000000e-01
  %91 = fcmp oge double %86, %90
  br i1 %91, label %108, label %92

92:                                               ; preds = %84, %58
  %93 = load float, float* %23, align 4
  %94 = fpext float %93 to double
  %95 = load i64, i64* %11, align 8
  %96 = sitofp i64 %95 to float
  %97 = fpext float %96 to double
  %98 = fadd double %97, 5.000000e-01
  %99 = fcmp ogt double %94, %98
  br i1 %99, label %100, label %144

100:                                              ; preds = %92
  %101 = load float, float* %21, align 4
  %102 = fpext float %101 to double
  %103 = load i64, i64* %11, align 8
  %104 = sitofp i64 %103 to float
  %105 = fpext float %104 to double
  %106 = fadd double %105, 5.000000e-01
  %107 = fcmp ole double %102, %106
  br i1 %107, label %108, label %144

108:                                              ; preds = %100, %84
  %109 = load i64, i64* %11, align 8
  %110 = sitofp i64 %109 to float
  %111 = fpext float %110 to double
  %112 = fadd double %111, 5.000000e-01
  %113 = load float, float* %23, align 4
  %114 = fpext float %113 to double
  %115 = fsub double %112, %114
  %116 = load float, float* %20, align 4
  %117 = load float, float* %22, align 4
  %118 = fsub float %116, %117
  %119 = fpext float %118 to double
  %120 = fmul double %115, %119
  %121 = load float, float* %21, align 4
  %122 = load float, float* %23, align 4
  %123 = fsub float %121, %122
  %124 = fpext float %123 to double
  %125 = fdiv double %120, %124
  %126 = load float, float* %22, align 4
  %127 = fpext float %126 to double
  %128 = fadd double %125, %127
  %129 = fptrunc double %128 to float
  %130 = call i8* @floor(float %129)
  %131 = ptrtoint i8* %130 to i64
  %132 = load i64*, i64** %18, align 8
  %133 = load i32, i32* %24, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  store i64 %131, i64* %135, align 8
  %136 = load i32, i32* %24, align 4
  %137 = load i32, i32* @MAX_SECT, align 4
  %138 = sub nsw i32 %137, 1
  %139 = icmp slt i32 %136, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %108
  %141 = load i32, i32* %24, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %24, align 4
  br label %143

143:                                              ; preds = %140, %108
  br label %144

144:                                              ; preds = %143, %100, %92
  %145 = load float, float* %20, align 4
  store float %145, float* %22, align 4
  %146 = load float, float* %21, align 4
  store float %146, float* %23, align 4
  br label %147

147:                                              ; preds = %144
  %148 = load float, float* %25, align 4
  %149 = fpext float %148 to double
  %150 = fadd double %149, 1.000000e-01
  %151 = fptrunc double %150 to float
  store float %151, float* %25, align 4
  br label %41

152:                                              ; preds = %41
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load float, float* %158, align 4
  %160 = load float, float* %12, align 4
  %161 = fmul float %159, %160
  store float %161, float* %20, align 4
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load float, float* %167, align 4
  %169 = load float, float* %13, align 4
  %170 = fmul float %168, %169
  store float %170, float* %21, align 4
  %171 = load i64, i64* %11, align 8
  %172 = icmp sge i64 %171, 0
  br i1 %172, label %173, label %201

173:                                              ; preds = %152
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* @puzzle_SHAPE_TOP, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %173
  %178 = load i32*, i32** %10, align 8
  %179 = load i64, i64* %11, align 8
  %180 = load i32, i32* %17, align 4
  %181 = call i64 @puzzle_diagonal_limit(i32* %178, i64 %179, i32 0, i32 %180)
  br label %187

182:                                              ; preds = %173
  %183 = load i32*, i32** %10, align 8
  %184 = load i64, i64* %11, align 8
  %185 = load i32, i32* %17, align 4
  %186 = call i64 @puzzle_diagonal_limit(i32* %183, i64 %184, i32 1, i32 %185)
  br label %187

187:                                              ; preds = %182, %177
  %188 = phi i64 [ %181, %177 ], [ %186, %182 ]
  %189 = load i64*, i64** %18, align 8
  %190 = load i32, i32* %24, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  store i64 %188, i64* %192, align 8
  %193 = load i32, i32* %24, align 4
  %194 = load i32, i32* @MAX_SECT, align 4
  %195 = sub nsw i32 %194, 1
  %196 = icmp slt i32 %193, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %187
  %198 = load i32, i32* %24, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %24, align 4
  br label %200

200:                                              ; preds = %197, %187
  br label %201

201:                                              ; preds = %200, %152
  store i64 0, i64* %27, align 8
  br label %202

202:                                              ; preds = %240, %201
  %203 = load i64, i64* %27, align 8
  %204 = load i32, i32* %24, align 4
  %205 = sub nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = icmp slt i64 %203, %206
  br i1 %207, label %208, label %241

208:                                              ; preds = %202
  %209 = load i64*, i64** %18, align 8
  %210 = load i64, i64* %27, align 8
  %211 = getelementptr inbounds i64, i64* %209, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = load i64*, i64** %18, align 8
  %214 = load i64, i64* %27, align 8
  %215 = add nsw i64 %214, 1
  %216 = getelementptr inbounds i64, i64* %213, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = icmp sgt i64 %212, %217
  br i1 %218, label %219, label %237

219:                                              ; preds = %208
  %220 = load i64*, i64** %18, align 8
  %221 = load i64, i64* %27, align 8
  %222 = getelementptr inbounds i64, i64* %220, i64 %221
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %28, align 8
  %224 = load i64*, i64** %18, align 8
  %225 = load i64, i64* %27, align 8
  %226 = add nsw i64 %225, 1
  %227 = getelementptr inbounds i64, i64* %224, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = load i64*, i64** %18, align 8
  %230 = load i64, i64* %27, align 8
  %231 = getelementptr inbounds i64, i64* %229, i64 %230
  store i64 %228, i64* %231, align 8
  %232 = load i64, i64* %28, align 8
  %233 = load i64*, i64** %18, align 8
  %234 = load i64, i64* %27, align 8
  %235 = add nsw i64 %234, 1
  %236 = getelementptr inbounds i64, i64* %233, i64 %235
  store i64 %232, i64* %236, align 8
  store i64 0, i64* %27, align 8
  br label %240

237:                                              ; preds = %208
  %238 = load i64, i64* %27, align 8
  %239 = add nsw i64 %238, 1
  store i64 %239, i64* %27, align 8
  br label %240

240:                                              ; preds = %237, %219
  br label %202

241:                                              ; preds = %202
  %242 = load i32, i32* %24, align 4
  ret i32 %242
}

declare dso_local i8* @floor(float) #1

declare dso_local float @bezier_val(%struct.TYPE_4__*, float, i32, i32) #1

declare dso_local i64 @puzzle_diagonal_limit(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
