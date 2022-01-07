; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_shade.c_fz_bound_mesh_type3.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_shade.c_fz_bound_mesh_type3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { float, float, float, float }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { float**, i64* }
%struct.TYPE_13__ = type { float, float }

@fz_infinite_rect = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ <2 x float>, <2 x float> } (i32*, %struct.TYPE_11__*)* @fz_bound_mesh_type3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { <2 x float>, <2 x float> } @fz_bound_mesh_type3(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__, align 4
  %7 = alloca %struct.TYPE_13__, align 4
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load float**, float*** %14, align 8
  %16 = getelementptr inbounds float*, float** %15, i64 0
  %17 = load float*, float** %16, align 8
  %18 = getelementptr inbounds float, float* %17, i64 2
  %19 = load float, float* %18, align 4
  store float %19, float* %9, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load float**, float*** %23, align 8
  %25 = getelementptr inbounds float*, float** %24, i64 1
  %26 = load float*, float** %25, align 8
  %27 = getelementptr inbounds float, float* %26, i64 2
  %28 = load float, float* %27, align 4
  store float %28, float* %10, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load float, float* %9, align 4
  %39 = load float, float* %10, align 4
  %40 = fcmp oge float %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 bitcast (%struct.TYPE_12__* @fz_infinite_rect to i8*), i64 16, i1 false)
  br label %179

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load float, float* %9, align 4
  %55 = load float, float* %10, align 4
  %56 = fcmp ole float %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = bitcast %struct.TYPE_12__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 bitcast (%struct.TYPE_12__* @fz_infinite_rect to i8*), i64 16, i1 false)
  br label %179

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %44
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load float**, float*** %64, align 8
  %66 = getelementptr inbounds float*, float** %65, i64 0
  %67 = load float*, float** %66, align 8
  %68 = getelementptr inbounds float, float* %67, i64 0
  %69 = load float, float* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store float %69, float* %70, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load float**, float*** %74, align 8
  %76 = getelementptr inbounds float*, float** %75, i64 0
  %77 = load float*, float** %76, align 8
  %78 = getelementptr inbounds float, float* %77, i64 1
  %79 = load float, float* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  store float %79, float* %80, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load float**, float*** %84, align 8
  %86 = getelementptr inbounds float*, float** %85, i64 1
  %87 = load float*, float** %86, align 8
  %88 = getelementptr inbounds float, float* %87, i64 0
  %89 = load float, float* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store float %89, float* %90, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load float**, float*** %94, align 8
  %96 = getelementptr inbounds float*, float** %95, i64 1
  %97 = load float*, float** %96, align 8
  %98 = getelementptr inbounds float, float* %97, i64 1
  %99 = load float, float* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store float %99, float* %100, align 4
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %102 = load float, float* %101, align 4
  %103 = load float, float* %9, align 4
  %104 = fsub float %102, %103
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  store float %104, float* %105, align 4
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %107 = load float, float* %106, align 4
  %108 = load float, float* %9, align 4
  %109 = fsub float %107, %108
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  store float %109, float* %110, align 4
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %112 = load float, float* %111, align 4
  %113 = load float, float* %9, align 4
  %114 = fadd float %112, %113
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  store float %114, float* %115, align 4
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %117 = load float, float* %116, align 4
  %118 = load float, float* %9, align 4
  %119 = fadd float %117, %118
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  store float %119, float* %120, align 4
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %122 = load float, float* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %124 = load float, float* %123, align 4
  %125 = load float, float* %10, align 4
  %126 = fsub float %124, %125
  %127 = fcmp ogt float %122, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %60
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %130 = load float, float* %129, align 4
  %131 = load float, float* %10, align 4
  %132 = fsub float %130, %131
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  store float %132, float* %133, align 4
  br label %134

134:                                              ; preds = %128, %60
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %136 = load float, float* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %138 = load float, float* %137, align 4
  %139 = load float, float* %10, align 4
  %140 = fadd float %138, %139
  %141 = fcmp olt float %136, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %144 = load float, float* %143, align 4
  %145 = load float, float* %10, align 4
  %146 = fadd float %144, %145
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  store float %146, float* %147, align 4
  br label %148

148:                                              ; preds = %142, %134
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %150 = load float, float* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %152 = load float, float* %151, align 4
  %153 = load float, float* %10, align 4
  %154 = fsub float %152, %153
  %155 = fcmp ogt float %150, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %148
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %158 = load float, float* %157, align 4
  %159 = load float, float* %10, align 4
  %160 = fsub float %158, %159
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  store float %160, float* %161, align 4
  br label %162

162:                                              ; preds = %156, %148
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  %164 = load float, float* %163, align 4
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %166 = load float, float* %165, align 4
  %167 = load float, float* %10, align 4
  %168 = fadd float %166, %167
  %169 = fcmp olt float %164, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %172 = load float, float* %171, align 4
  %173 = load float, float* %10, align 4
  %174 = fadd float %172, %173
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  store float %174, float* %175, align 4
  br label %176

176:                                              ; preds = %170, %162
  %177 = bitcast %struct.TYPE_12__* %3 to i8*
  %178 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %177, i8* align 4 %178, i64 16, i1 false)
  br label %179

179:                                              ; preds = %176, %57, %41
  %180 = bitcast %struct.TYPE_12__* %3 to { <2 x float>, <2 x float> }*
  %181 = load { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %180, align 4
  ret { <2 x float>, <2 x float> } %181
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
