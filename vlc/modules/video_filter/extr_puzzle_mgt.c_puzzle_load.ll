; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_mgt.c_puzzle_load.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_mgt.c_puzzle_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_15__*, %struct.TYPE_17__, %struct.TYPE_18__*, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { i64, i64, i32, i32, i32, i32, i64, i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i32 }
%struct.TYPE_18__ = type { i32, i32, i64, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i64, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, float, float, i32, i32, i32, i32, i32, i32 }

@SHAPES_QTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @puzzle_load(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %5, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %47, label %29

29:                                               ; preds = %2
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %47, label %38

38:                                               ; preds = %29
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38, %29, %2
  br label %694

48:                                               ; preds = %38
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %6, align 4
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %61

61:                                               ; preds = %336, %48
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %62, %66
  br i1 %67, label %68, label %339

68:                                               ; preds = %61
  store i64 0, i64* %9, align 8
  br label %69

69:                                               ; preds = %332, %68
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %70, %74
  br i1 %75, label %76, label %335

76:                                               ; preds = %69
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %83, %90
  br i1 %91, label %92, label %331

92:                                               ; preds = %76
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = load i64, i64* %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %99, %106
  br i1 %107, label %108, label %331

108:                                              ; preds = %92
  %109 = load i32, i32* %6, align 4
  %110 = sitofp i32 %109 to float
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = sitofp i64 %116 to float
  %118 = load i32, i32* %6, align 4
  %119 = mul nsw i32 2, %118
  %120 = sitofp i32 %119 to float
  %121 = fsub float %117, %120
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = load float, float* %127, align 8
  %129 = fmul float %121, %128
  %130 = fadd float %110, %129
  %131 = fptosi float %130 to i32
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = load i64, i64* %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  store i32 %131, i32* %140, align 4
  %141 = load i32, i32* %7, align 4
  %142 = sitofp i32 %141 to float
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = sitofp i64 %148 to float
  %150 = load i32, i32* %7, align 4
  %151 = mul nsw i32 2, %150
  %152 = sitofp i32 %151 to float
  %153 = fsub float %149, %152
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = load i64, i64* %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 3
  %160 = load float, float* %159, align 4
  %161 = fmul float %153, %160
  %162 = fadd float %142, %161
  %163 = fptosi float %162 to i32
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = load i64, i64* %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  store i32 %163, i32* %172, align 4
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = load i64, i64* %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  %183 = load i64, i64* %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 2
  store i32 %179, i32* %185, align 8
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = load i64, i64* %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %194, align 8
  %196 = load i64, i64* %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 3
  store i32 %192, i32* %198, align 4
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 3
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %200, align 8
  %202 = load i64, i64* %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %207, align 8
  %209 = load i64, i64* %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 4
  store i32 %205, i32* %211, align 8
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 3
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %213, align 8
  %215 = load i64, i64* %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %220, align 8
  %222 = load i64, i64* %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 5
  store i32 %218, i32* %224, align 4
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 3
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %226, align 8
  %228 = load i64, i64* %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 9
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %233, align 8
  %235 = load i64, i64* %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 10
  store i32 %231, i32* %237, align 4
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 3
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %239, align 8
  %241 = load i64, i64* %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 8
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %246, align 8
  %248 = load i64, i64* %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 9
  store i32 %244, i32* %250, align 8
  %251 = load i64, i64* %8, align 8
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %253, align 8
  %255 = load i64, i64* %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 6
  store i64 %251, i64* %257, align 8
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %259, align 8
  %261 = load i64, i64* %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 7
  store i32 0, i32* %263, align 8
  %264 = load i32, i32* %6, align 4
  %265 = sitofp i32 %264 to float
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 2
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i64 0
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = sitofp i64 %271 to float
  %273 = load i32, i32* %6, align 4
  %274 = mul nsw i32 2, %273
  %275 = sitofp i32 %274 to float
  %276 = fsub float %272, %275
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 3
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %278, align 8
  %280 = load i64, i64* %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 2
  %283 = load float, float* %282, align 8
  %284 = fmul float %276, %283
  %285 = fadd float %265, %284
  %286 = fptosi float %285 to i32
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %288, align 8
  %290 = load i64, i64* %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 8
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i64 0
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  store i32 %286, i32* %295, align 4
  %296 = load i32, i32* %7, align 4
  %297 = sitofp i32 %296 to float
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 2
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i64 0
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = sitofp i64 %303 to float
  %305 = load i32, i32* %7, align 4
  %306 = mul nsw i32 2, %305
  %307 = sitofp i32 %306 to float
  %308 = fsub float %304, %307
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 3
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %310, align 8
  %312 = load i64, i64* %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 3
  %315 = load float, float* %314, align 4
  %316 = fmul float %308, %315
  %317 = fadd float %297, %316
  %318 = fptosi float %317 to i32
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_15__*, %struct.TYPE_15__** %320, align 8
  %322 = load i64, i64* %9, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 8
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i64 0
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 1
  store i32 %318, i32* %327, align 4
  %328 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %329 = load i64, i64* %9, align 8
  %330 = call i32 @puzzle_calculate_corners(%struct.TYPE_20__* %328, i64 %329)
  br label %335

331:                                              ; preds = %92, %76
  br label %332

332:                                              ; preds = %331
  %333 = load i64, i64* %9, align 8
  %334 = add i64 %333, 1
  store i64 %334, i64* %9, align 8
  br label %69

335:                                              ; preds = %108, %69
  br label %336

336:                                              ; preds = %335
  %337 = load i64, i64* %8, align 8
  %338 = add i64 %337, 1
  store i64 %338, i64* %8, align 8
  br label %61

339:                                              ; preds = %61
  store i64 0, i64* %10, align 8
  br label %340

340:                                              ; preds = %691, %339
  %341 = load i64, i64* %10, align 8
  %342 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 2
  %345 = load i64, i64* %344, align 8
  %346 = icmp ult i64 %341, %345
  br i1 %346, label %347, label %694

347:                                              ; preds = %340
  store i64 0, i64* %11, align 8
  store i64 6, i64* %12, align 8
  store i64 2, i64* %13, align 8
  store i64 4, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  br label %348

348:                                              ; preds = %484, %347
  %349 = load i32, i32* %16, align 4
  %350 = sext i32 %349 to i64
  %351 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = icmp slt i64 %350, %354
  br i1 %355, label %356, label %487

356:                                              ; preds = %348
  store i32 0, i32* %17, align 4
  br label %357

357:                                              ; preds = %480, %356
  %358 = load i32, i32* %17, align 4
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 8
  %363 = icmp slt i32 %358, %362
  br i1 %363, label %364, label %483

364:                                              ; preds = %357
  %365 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %365, i32 0, i32 0
  %367 = load %struct.TYPE_15__*, %struct.TYPE_15__** %366, align 8
  %368 = load i64, i64* %10, align 8
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_15__*, %struct.TYPE_15__** %373, align 8
  %375 = load i64, i64* %15, align 8
  %376 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %374, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = icmp eq i64 %371, %378
  br i1 %379, label %380, label %420

380:                                              ; preds = %364
  %381 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %381, i32 0, i32 0
  %383 = load %struct.TYPE_15__*, %struct.TYPE_15__** %382, align 8
  %384 = load i64, i64* %10, align 8
  %385 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %383, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %388, i32 0, i32 0
  %390 = load %struct.TYPE_15__*, %struct.TYPE_15__** %389, align 8
  %391 = load i64, i64* %15, align 8
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %390, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %392, i32 0, i32 1
  %394 = load i64, i64* %393, align 8
  %395 = sub nsw i64 %394, 1
  %396 = icmp eq i64 %387, %395
  br i1 %396, label %397, label %399

397:                                              ; preds = %380
  %398 = load i64, i64* %15, align 8
  store i64 %398, i64* %12, align 8
  br label %419

399:                                              ; preds = %380
  %400 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %400, i32 0, i32 0
  %402 = load %struct.TYPE_15__*, %struct.TYPE_15__** %401, align 8
  %403 = load i64, i64* %10, align 8
  %404 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %404, i32 0, i32 1
  %406 = load i64, i64* %405, align 8
  %407 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %407, i32 0, i32 0
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %408, align 8
  %410 = load i64, i64* %15, align 8
  %411 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %409, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %411, i32 0, i32 1
  %413 = load i64, i64* %412, align 8
  %414 = add nsw i64 %413, 1
  %415 = icmp eq i64 %406, %414
  br i1 %415, label %416, label %418

416:                                              ; preds = %399
  %417 = load i64, i64* %15, align 8
  store i64 %417, i64* %11, align 8
  br label %418

418:                                              ; preds = %416, %399
  br label %419

419:                                              ; preds = %418, %397
  br label %477

420:                                              ; preds = %364
  %421 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %421, i32 0, i32 0
  %423 = load %struct.TYPE_15__*, %struct.TYPE_15__** %422, align 8
  %424 = load i64, i64* %10, align 8
  %425 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i64 %424
  %426 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %429 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %428, i32 0, i32 0
  %430 = load %struct.TYPE_15__*, %struct.TYPE_15__** %429, align 8
  %431 = load i64, i64* %15, align 8
  %432 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %430, i64 %431
  %433 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %432, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  %435 = icmp eq i64 %427, %434
  br i1 %435, label %436, label %476

436:                                              ; preds = %420
  %437 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %437, i32 0, i32 0
  %439 = load %struct.TYPE_15__*, %struct.TYPE_15__** %438, align 8
  %440 = load i64, i64* %10, align 8
  %441 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %439, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %445 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %444, i32 0, i32 0
  %446 = load %struct.TYPE_15__*, %struct.TYPE_15__** %445, align 8
  %447 = load i64, i64* %15, align 8
  %448 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %446, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %448, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = sub nsw i64 %450, 1
  %452 = icmp eq i64 %443, %451
  br i1 %452, label %453, label %455

453:                                              ; preds = %436
  %454 = load i64, i64* %15, align 8
  store i64 %454, i64* %14, align 8
  br label %475

455:                                              ; preds = %436
  %456 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %456, i32 0, i32 0
  %458 = load %struct.TYPE_15__*, %struct.TYPE_15__** %457, align 8
  %459 = load i64, i64* %10, align 8
  %460 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %458, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %460, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %464 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %463, i32 0, i32 0
  %465 = load %struct.TYPE_15__*, %struct.TYPE_15__** %464, align 8
  %466 = load i64, i64* %15, align 8
  %467 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %465, i64 %466
  %468 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = add nsw i64 %469, 1
  %471 = icmp eq i64 %462, %470
  br i1 %471, label %472, label %474

472:                                              ; preds = %455
  %473 = load i64, i64* %15, align 8
  store i64 %473, i64* %13, align 8
  br label %474

474:                                              ; preds = %472, %455
  br label %475

475:                                              ; preds = %474, %453
  br label %476

476:                                              ; preds = %475, %420
  br label %477

477:                                              ; preds = %476, %419
  %478 = load i64, i64* %15, align 8
  %479 = add i64 %478, 1
  store i64 %479, i64* %15, align 8
  br label %480

480:                                              ; preds = %477
  %481 = load i32, i32* %17, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %17, align 4
  br label %357

483:                                              ; preds = %357
  br label %484

484:                                              ; preds = %483
  %485 = load i32, i32* %16, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %16, align 4
  br label %348

487:                                              ; preds = %348
  %488 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %489 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %488, i32 0, i32 0
  %490 = load %struct.TYPE_15__*, %struct.TYPE_15__** %489, align 8
  %491 = load i64, i64* %10, align 8
  %492 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %490, i64 %491
  %493 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %492, i32 0, i32 5
  %494 = load i32, i32* %493, align 4
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %535

496:                                              ; preds = %487
  %497 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %498 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %497, i32 0, i32 0
  %499 = load %struct.TYPE_15__*, %struct.TYPE_15__** %498, align 8
  %500 = load i64, i64* %10, align 8
  %501 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %499, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %501, i32 0, i32 1
  %503 = load i64, i64* %502, align 8
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %505, label %535

505:                                              ; preds = %496
  %506 = call i32 (...) @vlc_mrand48()
  %507 = load i32, i32* @SHAPES_QTY, align 4
  %508 = urem i32 %506, %507
  %509 = mul i32 8, %508
  %510 = add i32 14, %509
  %511 = call i32 (...) @vlc_mrand48()
  %512 = and i32 %511, 1
  %513 = add i32 %510, %512
  %514 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %515 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %514, i32 0, i32 0
  %516 = load %struct.TYPE_15__*, %struct.TYPE_15__** %515, align 8
  %517 = load i64, i64* %11, align 8
  %518 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %516, i64 %517
  %519 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %518, i32 0, i32 4
  store i32 %513, i32* %519, align 8
  %520 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %521 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %520, i32 0, i32 0
  %522 = load %struct.TYPE_15__*, %struct.TYPE_15__** %521, align 8
  %523 = load i64, i64* %11, align 8
  %524 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %522, i64 %523
  %525 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %524, i32 0, i32 4
  %526 = load i32, i32* %525, align 8
  %527 = sub nsw i32 %526, 6
  %528 = xor i32 %527, 1
  %529 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %530 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %529, i32 0, i32 0
  %531 = load %struct.TYPE_15__*, %struct.TYPE_15__** %530, align 8
  %532 = load i64, i64* %10, align 8
  %533 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %531, i64 %532
  %534 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %533, i32 0, i32 5
  store i32 %528, i32* %534, align 4
  br label %535

535:                                              ; preds = %505, %496, %487
  %536 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %537 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %536, i32 0, i32 0
  %538 = load %struct.TYPE_15__*, %struct.TYPE_15__** %537, align 8
  %539 = load i64, i64* %10, align 8
  %540 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %538, i64 %539
  %541 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %540, i32 0, i32 4
  %542 = load i32, i32* %541, align 8
  %543 = icmp eq i32 %542, 6
  br i1 %543, label %544, label %589

544:                                              ; preds = %535
  %545 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %546 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %545, i32 0, i32 0
  %547 = load %struct.TYPE_15__*, %struct.TYPE_15__** %546, align 8
  %548 = load i64, i64* %10, align 8
  %549 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %547, i64 %548
  %550 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %549, i32 0, i32 1
  %551 = load i64, i64* %550, align 8
  %552 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %553 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %552, i32 0, i32 1
  %554 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %553, i32 0, i32 3
  %555 = load i32, i32* %554, align 8
  %556 = sub nsw i32 %555, 1
  %557 = sext i32 %556 to i64
  %558 = icmp ne i64 %551, %557
  br i1 %558, label %559, label %589

559:                                              ; preds = %544
  %560 = call i32 (...) @vlc_mrand48()
  %561 = load i32, i32* @SHAPES_QTY, align 4
  %562 = urem i32 %560, %561
  %563 = mul i32 8, %562
  %564 = add i32 14, %563
  %565 = call i32 (...) @vlc_mrand48()
  %566 = and i32 %565, 1
  %567 = add i32 %564, %566
  %568 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %569 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %568, i32 0, i32 0
  %570 = load %struct.TYPE_15__*, %struct.TYPE_15__** %569, align 8
  %571 = load i64, i64* %10, align 8
  %572 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %570, i64 %571
  %573 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %572, i32 0, i32 4
  store i32 %567, i32* %573, align 8
  %574 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %575 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %574, i32 0, i32 0
  %576 = load %struct.TYPE_15__*, %struct.TYPE_15__** %575, align 8
  %577 = load i64, i64* %10, align 8
  %578 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %576, i64 %577
  %579 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %578, i32 0, i32 4
  %580 = load i32, i32* %579, align 8
  %581 = sub nsw i32 %580, 6
  %582 = xor i32 %581, 1
  %583 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %584 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %583, i32 0, i32 0
  %585 = load %struct.TYPE_15__*, %struct.TYPE_15__** %584, align 8
  %586 = load i64, i64* %12, align 8
  %587 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %585, i64 %586
  %588 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %587, i32 0, i32 5
  store i32 %582, i32* %588, align 4
  br label %589

589:                                              ; preds = %559, %544, %535
  %590 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %591 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %590, i32 0, i32 0
  %592 = load %struct.TYPE_15__*, %struct.TYPE_15__** %591, align 8
  %593 = load i64, i64* %10, align 8
  %594 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %592, i64 %593
  %595 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %594, i32 0, i32 2
  %596 = load i32, i32* %595, align 8
  %597 = icmp eq i32 %596, 2
  br i1 %597, label %598, label %637

598:                                              ; preds = %589
  %599 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %600 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %599, i32 0, i32 0
  %601 = load %struct.TYPE_15__*, %struct.TYPE_15__** %600, align 8
  %602 = load i64, i64* %10, align 8
  %603 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %601, i64 %602
  %604 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %603, i32 0, i32 0
  %605 = load i64, i64* %604, align 8
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %607, label %637

607:                                              ; preds = %598
  %608 = call i32 (...) @vlc_mrand48()
  %609 = load i32, i32* @SHAPES_QTY, align 4
  %610 = urem i32 %608, %609
  %611 = mul i32 8, %610
  %612 = add i32 12, %611
  %613 = call i32 (...) @vlc_mrand48()
  %614 = and i32 %613, 1
  %615 = add i32 %612, %614
  %616 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %617 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %616, i32 0, i32 0
  %618 = load %struct.TYPE_15__*, %struct.TYPE_15__** %617, align 8
  %619 = load i64, i64* %13, align 8
  %620 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %618, i64 %619
  %621 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %620, i32 0, i32 3
  store i32 %615, i32* %621, align 4
  %622 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %623 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %622, i32 0, i32 0
  %624 = load %struct.TYPE_15__*, %struct.TYPE_15__** %623, align 8
  %625 = load i64, i64* %13, align 8
  %626 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %624, i64 %625
  %627 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %626, i32 0, i32 3
  %628 = load i32, i32* %627, align 4
  %629 = sub nsw i32 %628, 2
  %630 = xor i32 %629, 1
  %631 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %632 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %631, i32 0, i32 0
  %633 = load %struct.TYPE_15__*, %struct.TYPE_15__** %632, align 8
  %634 = load i64, i64* %10, align 8
  %635 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %633, i64 %634
  %636 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %635, i32 0, i32 2
  store i32 %630, i32* %636, align 8
  br label %637

637:                                              ; preds = %607, %598, %589
  %638 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %639 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %638, i32 0, i32 0
  %640 = load %struct.TYPE_15__*, %struct.TYPE_15__** %639, align 8
  %641 = load i64, i64* %10, align 8
  %642 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %640, i64 %641
  %643 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %642, i32 0, i32 3
  %644 = load i32, i32* %643, align 4
  %645 = icmp eq i32 %644, 4
  br i1 %645, label %646, label %690

646:                                              ; preds = %637
  %647 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %648 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %647, i32 0, i32 0
  %649 = load %struct.TYPE_15__*, %struct.TYPE_15__** %648, align 8
  %650 = load i64, i64* %10, align 8
  %651 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %649, i64 %650
  %652 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %651, i32 0, i32 0
  %653 = load i64, i64* %652, align 8
  %654 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %655 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %654, i32 0, i32 1
  %656 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %655, i32 0, i32 0
  %657 = load i64, i64* %656, align 8
  %658 = sub nsw i64 %657, 1
  %659 = icmp ne i64 %653, %658
  br i1 %659, label %660, label %690

660:                                              ; preds = %646
  %661 = call i32 (...) @vlc_mrand48()
  %662 = load i32, i32* @SHAPES_QTY, align 4
  %663 = urem i32 %661, %662
  %664 = mul i32 8, %663
  %665 = add i32 12, %664
  %666 = call i32 (...) @vlc_mrand48()
  %667 = and i32 %666, 1
  %668 = add i32 %665, %667
  %669 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %670 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %669, i32 0, i32 0
  %671 = load %struct.TYPE_15__*, %struct.TYPE_15__** %670, align 8
  %672 = load i64, i64* %10, align 8
  %673 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %671, i64 %672
  %674 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %673, i32 0, i32 3
  store i32 %668, i32* %674, align 4
  %675 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %676 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %675, i32 0, i32 0
  %677 = load %struct.TYPE_15__*, %struct.TYPE_15__** %676, align 8
  %678 = load i64, i64* %10, align 8
  %679 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %677, i64 %678
  %680 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %679, i32 0, i32 3
  %681 = load i32, i32* %680, align 4
  %682 = sub nsw i32 %681, 2
  %683 = xor i32 %682, 1
  %684 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %685 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %684, i32 0, i32 0
  %686 = load %struct.TYPE_15__*, %struct.TYPE_15__** %685, align 8
  %687 = load i64, i64* %14, align 8
  %688 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %686, i64 %687
  %689 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %688, i32 0, i32 2
  store i32 %683, i32* %689, align 8
  br label %690

690:                                              ; preds = %660, %646, %637
  br label %691

691:                                              ; preds = %690
  %692 = load i64, i64* %10, align 8
  %693 = add i64 %692, 1
  store i64 %693, i64* %10, align 8
  br label %340

694:                                              ; preds = %47, %340
  ret void
}

declare dso_local i32 @puzzle_calculate_corners(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @vlc_mrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
