; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_mgt.c_puzzle_save.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_mgt.c_puzzle_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_13__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { float, float }
%struct.TYPE_14__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @puzzle_save(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %4, align 8
  %12 = call i8* @calloc(i32 1, i32 24)
  %13 = bitcast i8* %12 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %5, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = icmp ne %struct.TYPE_17__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %250

17:                                               ; preds = %1
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = call i8* @calloc(i32 %42, i32 40)
  %44 = bitcast i8* %43 to %struct.TYPE_15__*
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %46, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = icmp ne %struct.TYPE_15__* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %17
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %53 = call i32 @free(%struct.TYPE_17__* %52)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %250

54:                                               ; preds = %17
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %6, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %67

67:                                               ; preds = %245, %54
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %71, %74
  %76 = sext i32 %75 to i64
  %77 = icmp ult i64 %68, %76
  br i1 %77, label %78, label %248

78:                                               ; preds = %67
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 9
  store i32 %85, i32* %91, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 8
  store i32 %98, i32* %104, align 4
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = load i64, i64* %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 7
  store i32 %111, i32* %117, align 4
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = load i64, i64* %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = load i64, i64* %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 6
  store i32 %124, i32* %130, align 4
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = load i64, i64* %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 5
  store i32 %137, i32* %143, align 4
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %145, align 8
  %147 = load i64, i64* %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = load i64, i64* %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 4
  store i32 %150, i32* %156, align 4
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = load i64, i64* %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load float, float* %165, align 4
  %167 = load i64, i64* %6, align 8
  %168 = uitofp i64 %167 to float
  %169 = fsub float %166, %168
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = sitofp i64 %175 to float
  %177 = load i64, i64* %6, align 8
  %178 = mul i64 2, %177
  %179 = uitofp i64 %178 to float
  %180 = fsub float %176, %179
  %181 = fdiv float %169, %180
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %183, align 8
  %185 = load i64, i64* %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  store float %181, float* %187, align 4
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %189, align 8
  %191 = load i64, i64* %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i64 0
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load float, float* %196, align 4
  %198 = load i64, i64* %7, align 8
  %199 = uitofp i64 %198 to float
  %200 = fsub float %197, %199
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i64 0
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = sitofp i64 %206 to float
  %208 = load i64, i64* %7, align 8
  %209 = mul i64 2, %208
  %210 = uitofp i64 %209 to float
  %211 = fsub float %207, %210
  %212 = fdiv float %200, %211
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %214, align 8
  %216 = load i64, i64* %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 1
  store float %212, float* %218, align 4
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 8
  %222 = load i64, i64* %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %227, align 8
  %229 = load i64, i64* %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 3
  store i32 %225, i32* %231, align 4
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %233, align 8
  %235 = load i64, i64* %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %240, align 8
  %242 = load i64, i64* %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 2
  store i32 %238, i32* %244, align 4
  br label %245

245:                                              ; preds = %78
  %246 = load i64, i64* %8, align 8
  %247 = add i64 %246, 1
  store i64 %247, i64* %8, align 8
  br label %67

248:                                              ; preds = %67
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %249, %struct.TYPE_17__** %2, align 8
  br label %250

250:                                              ; preds = %248, %51, %16
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  ret %struct.TYPE_17__* %251
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
