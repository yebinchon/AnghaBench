; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_stroke_lineto.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_stroke_lineto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i64, i32 }
%struct.TYPE_10__ = type { float, float }
%struct.TYPE_9__ = type { float, float }

@ONLY_MOVES = common dso_local global i64 0, align 8
@FZ_LINECAP_ROUND = common dso_local global i64 0, align 8
@NULL_LINE = common dso_local global i64 0, align 8
@NON_NULL_LINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, float, float, i32)* @fz_stroke_lineto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_stroke_lineto(i32* %0, %struct.TYPE_11__* %1, float %2, float %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 4
  store float %27, float* %11, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load float, float* %37, align 4
  store float %38, float* %12, align 4
  %39 = load float, float* %8, align 4
  %40 = load float, float* %11, align 4
  %41 = fsub float %39, %40
  store float %41, float* %13, align 4
  %42 = load float, float* %9, align 4
  %43 = load float, float* %12, align 4
  %44 = fsub float %42, %43
  store float %44, float* %14, align 4
  %45 = load float, float* %13, align 4
  %46 = load float, float* %14, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @find_normal_vectors(float %45, float %46, i32 %49, float* %15, float* %16)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %5
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ONLY_MOVES, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %52
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FZ_LINECAP_ROUND, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64, %58
  %70 = load i64, i64* @NULL_LINE, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %69, %64, %52
  br label %210

74:                                               ; preds = %5
  %75 = load i64, i64* @NON_NULL_LINE, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %107

82:                                               ; preds = %74
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 5
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load float, float* %89, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load float, float* %95, align 4
  %97 = load float, float* %11, align 4
  %98 = load float, float* %12, align 4
  %99 = load float, float* %8, align 4
  %100 = load float, float* %9, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = and i32 %103, %104
  %106 = call i32 @fz_add_line_join(i32* %83, %struct.TYPE_11__* %84, float %90, float %96, float %97, float %98, float %99, float %100, i32 %105)
  br label %107

107:                                              ; preds = %82, %74
  %108 = load float, float* %14, align 4
  %109 = fcmp oeq float %108, 0.000000e+00
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load i32*, i32** %6, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %113 = load float, float* %11, align 4
  %114 = load float, float* %12, align 4
  %115 = load float, float* %16, align 4
  %116 = fsub float %114, %115
  %117 = load float, float* %8, align 4
  %118 = load float, float* %9, align 4
  %119 = load float, float* %16, align 4
  %120 = fadd float %118, %119
  %121 = call i32 @fz_add_horiz_rect(i32* %111, %struct.TYPE_11__* %112, float %113, float %116, float %117, float %120)
  br label %153

122:                                              ; preds = %107
  %123 = load i32*, i32** %6, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %125 = load float, float* %11, align 4
  %126 = load float, float* %15, align 4
  %127 = fsub float %125, %126
  %128 = load float, float* %12, align 4
  %129 = load float, float* %16, align 4
  %130 = fsub float %128, %129
  %131 = load float, float* %8, align 4
  %132 = load float, float* %15, align 4
  %133 = fsub float %131, %132
  %134 = load float, float* %9, align 4
  %135 = load float, float* %16, align 4
  %136 = fsub float %134, %135
  %137 = call i32 @fz_add_line(i32* %123, %struct.TYPE_11__* %124, float %127, float %130, float %133, float %136, i32 0)
  %138 = load i32*, i32** %6, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %140 = load float, float* %8, align 4
  %141 = load float, float* %15, align 4
  %142 = fadd float %140, %141
  %143 = load float, float* %9, align 4
  %144 = load float, float* %16, align 4
  %145 = fadd float %143, %144
  %146 = load float, float* %11, align 4
  %147 = load float, float* %15, align 4
  %148 = fadd float %146, %147
  %149 = load float, float* %12, align 4
  %150 = load float, float* %16, align 4
  %151 = fadd float %149, %150
  %152 = call i32 @fz_add_line(i32* %138, %struct.TYPE_11__* %139, float %142, float %145, float %148, float %151, i32 1)
  br label %153

153:                                              ; preds = %122, %110
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 2
  br i1 %157, label %158, label %181

158:                                              ; preds = %153
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 5
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i64 0
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 5
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i64 1
  %167 = bitcast %struct.TYPE_9__* %162 to i8*
  %168 = bitcast %struct.TYPE_9__* %166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %167, i8* align 4 %168, i64 8, i1 false)
  %169 = load float, float* %8, align 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 5
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i64 1
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  store float %169, float* %174, align 4
  %175 = load float, float* %9, align 4
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 5
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i64 1
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  store float %175, float* %180, align 4
  br label %206

181:                                              ; preds = %153
  %182 = load float, float* %8, align 4
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 4
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i64 1
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  store float %182, float* %187, align 4
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 5
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i64 1
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  store float %182, float* %192, align 4
  %193 = load float, float* %9, align 4
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 4
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i64 1
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  store float %193, float* %198, align 4
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 5
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i64 1
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  store float %193, float* %203, align 4
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  store i32 2, i32* %205, align 8
  br label %206

206:                                              ; preds = %181, %158
  %207 = load i32, i32* %10, align 4
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 8
  br label %210

210:                                              ; preds = %206, %73
  ret void
}

declare dso_local i64 @find_normal_vectors(float, float, i32, float*, float*) #1

declare dso_local i32 @fz_add_line_join(i32*, %struct.TYPE_11__*, float, float, float, float, float, float, i32) #1

declare dso_local i32 @fz_add_horiz_rect(i32*, %struct.TYPE_11__*, float, float, float, float) #1

declare dso_local i32 @fz_add_line(i32*, %struct.TYPE_11__*, float, float, float, float, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
