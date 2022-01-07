; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_mct_decode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_mct_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_14__*, i32*, %struct.TYPE_15__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i64, i64, i64, i64 }

@OPJ_TRUE = common dso_local global i32 0, align 4
@EVT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Tiles don't all have the same dimension. Skip the MCT step.\0A\00", align 1
@OPJ_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Number of components (%d) is inconsistent with a MCT. Skip the MCT step.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32*)* @opj_tcd_mct_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_tcd_mct_decode(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i32**, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %6, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %7, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %8, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %2
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %2
  %39 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %39, i32* %3, align 4
  br label %574

40:                                               ; preds = %33
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %218

45:                                               ; preds = %40
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i64 -1
  store %struct.TYPE_19__* %57, %struct.TYPE_19__** %11, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  %72 = mul nsw i32 %64, %71
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %9, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %76, 3
  br i1 %77, label %78, label %106

78:                                               ; preds = %45
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %81, %87
  br i1 %88, label %100, label %89

89:                                               ; preds = %78
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i64 2
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %92, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %89, %78
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* @EVT_ERROR, align 4
  %103 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %101, i32 %102, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %104, i32* %3, align 4
  br label %574

105:                                              ; preds = %89
  br label %106

106:                                              ; preds = %105, %45
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sge i32 %109, 3
  br i1 %110, label %111, label %217

111:                                              ; preds = %106
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %116, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i64 -1
  store %struct.TYPE_19__* %123, %struct.TYPE_19__** %12, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i64 2
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %128, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i64 -1
  store %struct.TYPE_19__* %135, %struct.TYPE_19__** %13, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i64 1
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %143, %151
  br i1 %152, label %211, label %153

153:                                              ; preds = %111
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i64 2
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %161, %169
  br i1 %170, label %211, label %171

171:                                              ; preds = %153
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %174, %177
  %179 = sext i32 %178 to i64
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = sub nsw i32 %182, %185
  %187 = sext i32 %186 to i64
  %188 = mul i64 %179, %187
  %189 = load i64, i64* %9, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %211, label %191

191:                                              ; preds = %171
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = sub nsw i32 %194, %197
  %199 = sext i32 %198 to i64
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 %202, %205
  %207 = sext i32 %206 to i64
  %208 = mul i64 %199, %207
  %209 = load i64, i64* %9, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %191, %171, %153, %111
  %212 = load i32*, i32** %5, align 8
  %213 = load i32, i32* @EVT_ERROR, align 4
  %214 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %212, i32 %213, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %215 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %215, i32* %3, align 4
  br label %574

216:                                              ; preds = %191
  br label %217

217:                                              ; preds = %216, %106
  br label %362

218:                                              ; preds = %40
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i64 0
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %223, align 8
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i64 0
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i64 %232
  store %struct.TYPE_19__* %233, %struct.TYPE_19__** %14, align 8
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 5
  %239 = load i64, i64* %238, align 8
  %240 = sub i64 %236, %239
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 6
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 7
  %246 = load i64, i64* %245, align 8
  %247 = sub i64 %243, %246
  %248 = mul i64 %240, %247
  store i64 %248, i64* %9, align 8
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp sge i32 %251, 3
  br i1 %252, label %253, label %361

253:                                              ; preds = %218
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i64 1
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 3
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %258, align 8
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i64 1
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i64 %267
  store %struct.TYPE_19__* %268, %struct.TYPE_19__** %15, align 8
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i64 2
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 3
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %273, align 8
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i64 2
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i64 %282
  store %struct.TYPE_19__* %283, %struct.TYPE_19__** %16, align 8
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i64 0
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i64 1
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %291, %299
  br i1 %300, label %355, label %301

301:                                              ; preds = %253
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 1
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i64 0
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i64 2
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %309, %317
  br i1 %318, label %355, label %319

319:                                              ; preds = %301
  %320 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %321 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %320, i32 0, i32 4
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %324 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %323, i32 0, i32 5
  %325 = load i64, i64* %324, align 8
  %326 = sub i64 %322, %325
  %327 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 6
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %331 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %330, i32 0, i32 7
  %332 = load i64, i64* %331, align 8
  %333 = sub i64 %329, %332
  %334 = mul i64 %326, %333
  %335 = load i64, i64* %9, align 8
  %336 = icmp ne i64 %334, %335
  br i1 %336, label %355, label %337

337:                                              ; preds = %319
  %338 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %339 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %338, i32 0, i32 4
  %340 = load i64, i64* %339, align 8
  %341 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %341, i32 0, i32 5
  %343 = load i64, i64* %342, align 8
  %344 = sub i64 %340, %343
  %345 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %346 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %345, i32 0, i32 6
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 7
  %350 = load i64, i64* %349, align 8
  %351 = sub i64 %347, %350
  %352 = mul i64 %344, %351
  %353 = load i64, i64* %9, align 8
  %354 = icmp ne i64 %352, %353
  br i1 %354, label %355, label %360

355:                                              ; preds = %337, %319, %301, %253
  %356 = load i32*, i32** %5, align 8
  %357 = load i32, i32* @EVT_ERROR, align 4
  %358 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %356, i32 %357, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %359 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %359, i32* %3, align 4
  br label %574

360:                                              ; preds = %337
  br label %361

361:                                              ; preds = %360, %218
  br label %362

362:                                              ; preds = %361, %217
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = icmp sge i32 %365, 3
  br i1 %366, label %367, label %565

367:                                              ; preds = %362
  %368 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = icmp eq i32 %370, 2
  br i1 %371, label %372, label %454

372:                                              ; preds = %367
  %373 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %379, label %377

377:                                              ; preds = %372
  %378 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %378, i32* %3, align 4
  br label %574

379:                                              ; preds = %372
  %380 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %381 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = sext i32 %382 to i64
  %384 = mul i64 %383, 8
  %385 = trunc i64 %384 to i32
  %386 = call i64 @opj_malloc(i32 %385)
  %387 = inttoptr i64 %386 to i32**
  store i32** %387, i32*** %17, align 8
  %388 = load i32**, i32*** %17, align 8
  %389 = icmp ne i32** %388, null
  br i1 %389, label %392, label %390

390:                                              ; preds = %379
  %391 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %391, i32* %3, align 4
  br label %574

392:                                              ; preds = %379
  store i64 0, i64* %10, align 8
  br label %393

393:                                              ; preds = %424, %392
  %394 = load i64, i64* %10, align 8
  %395 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = sext i32 %397 to i64
  %399 = icmp ult i64 %394, %398
  br i1 %399, label %400, label %427

400:                                              ; preds = %393
  %401 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %413

405:                                              ; preds = %400
  %406 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %407 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %406, i32 0, i32 2
  %408 = load i64, i64* %407, align 8
  %409 = inttoptr i64 %408 to i32*
  %410 = load i32**, i32*** %17, align 8
  %411 = load i64, i64* %10, align 8
  %412 = getelementptr inbounds i32*, i32** %410, i64 %411
  store i32* %409, i32** %412, align 8
  br label %421

413:                                              ; preds = %400
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 1
  %416 = load i64, i64* %415, align 8
  %417 = inttoptr i64 %416 to i32*
  %418 = load i32**, i32*** %17, align 8
  %419 = load i64, i64* %10, align 8
  %420 = getelementptr inbounds i32*, i32** %418, i64 %419
  store i32* %417, i32** %420, align 8
  br label %421

421:                                              ; preds = %413, %405
  %422 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %423 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %422, i32 1
  store %struct.TYPE_16__* %423, %struct.TYPE_16__** %8, align 8
  br label %424

424:                                              ; preds = %421
  %425 = load i64, i64* %10, align 8
  %426 = add i64 %425, 1
  store i64 %426, i64* %10, align 8
  br label %393

427:                                              ; preds = %393
  %428 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %428, i32 0, i32 2
  %430 = load i64, i64* %429, align 8
  %431 = inttoptr i64 %430 to i32*
  %432 = load i64, i64* %9, align 8
  %433 = load i32**, i32*** %17, align 8
  %434 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %435 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = sext i32 %436 to i64
  %438 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %439 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %438, i32 0, i32 1
  %440 = load %struct.TYPE_14__*, %struct.TYPE_14__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %440, i32 0, i32 0
  %442 = load %struct.TYPE_13__*, %struct.TYPE_13__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 8
  %445 = call i32 @opj_mct_decode_custom(i32* %431, i64 %432, i32** %433, i64 %437, i32 %444)
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %451, label %447

447:                                              ; preds = %427
  %448 = load i32**, i32*** %17, align 8
  %449 = call i32 @opj_free(i32** %448)
  %450 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %450, i32* %3, align 4
  br label %574

451:                                              ; preds = %427
  %452 = load i32**, i32*** %17, align 8
  %453 = call i32 @opj_free(i32** %452)
  br label %564

454:                                              ; preds = %367
  %455 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %456 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %455, i32 0, i32 1
  %457 = load %struct.TYPE_11__*, %struct.TYPE_11__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = icmp eq i32 %459, 1
  br i1 %460, label %461, label %509

461:                                              ; preds = %454
  %462 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %463 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %462, i32 0, i32 0
  %464 = load i64, i64* %463, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %487

466:                                              ; preds = %461
  %467 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %468 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %467, i32 0, i32 1
  %469 = load %struct.TYPE_16__*, %struct.TYPE_16__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %469, i64 0
  %471 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %470, i32 0, i32 2
  %472 = load i64, i64* %471, align 8
  %473 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %473, i32 0, i32 1
  %475 = load %struct.TYPE_16__*, %struct.TYPE_16__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %475, i64 1
  %477 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %476, i32 0, i32 2
  %478 = load i64, i64* %477, align 8
  %479 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %480 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %479, i32 0, i32 1
  %481 = load %struct.TYPE_16__*, %struct.TYPE_16__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %481, i64 2
  %483 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %482, i32 0, i32 2
  %484 = load i64, i64* %483, align 8
  %485 = load i64, i64* %9, align 8
  %486 = call i32 @opj_mct_decode(i64 %472, i64 %478, i64 %484, i64 %485)
  br label %508

487:                                              ; preds = %461
  %488 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %489 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %488, i32 0, i32 1
  %490 = load %struct.TYPE_16__*, %struct.TYPE_16__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %490, i64 0
  %492 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %491, i32 0, i32 1
  %493 = load i64, i64* %492, align 8
  %494 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %495 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %494, i32 0, i32 1
  %496 = load %struct.TYPE_16__*, %struct.TYPE_16__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %496, i64 1
  %498 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %497, i32 0, i32 1
  %499 = load i64, i64* %498, align 8
  %500 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %501 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %500, i32 0, i32 1
  %502 = load %struct.TYPE_16__*, %struct.TYPE_16__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %502, i64 2
  %504 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %503, i32 0, i32 1
  %505 = load i64, i64* %504, align 8
  %506 = load i64, i64* %9, align 8
  %507 = call i32 @opj_mct_decode(i64 %493, i64 %499, i64 %505, i64 %506)
  br label %508

508:                                              ; preds = %487, %466
  br label %563

509:                                              ; preds = %454
  %510 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %511 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %510, i32 0, i32 0
  %512 = load i64, i64* %511, align 8
  %513 = icmp ne i64 %512, 0
  br i1 %513, label %514, label %538

514:                                              ; preds = %509
  %515 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %516 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %515, i32 0, i32 1
  %517 = load %struct.TYPE_16__*, %struct.TYPE_16__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %517, i64 0
  %519 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %518, i32 0, i32 2
  %520 = load i64, i64* %519, align 8
  %521 = inttoptr i64 %520 to i32*
  %522 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %523 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %522, i32 0, i32 1
  %524 = load %struct.TYPE_16__*, %struct.TYPE_16__** %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %524, i64 1
  %526 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %525, i32 0, i32 2
  %527 = load i64, i64* %526, align 8
  %528 = inttoptr i64 %527 to i32*
  %529 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %530 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %529, i32 0, i32 1
  %531 = load %struct.TYPE_16__*, %struct.TYPE_16__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %531, i64 2
  %533 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %532, i32 0, i32 2
  %534 = load i64, i64* %533, align 8
  %535 = inttoptr i64 %534 to i32*
  %536 = load i64, i64* %9, align 8
  %537 = call i32 @opj_mct_decode_real(i32* %521, i32* %528, i32* %535, i64 %536)
  br label %562

538:                                              ; preds = %509
  %539 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %540 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %539, i32 0, i32 1
  %541 = load %struct.TYPE_16__*, %struct.TYPE_16__** %540, align 8
  %542 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %541, i64 0
  %543 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %542, i32 0, i32 1
  %544 = load i64, i64* %543, align 8
  %545 = inttoptr i64 %544 to i32*
  %546 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %547 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %546, i32 0, i32 1
  %548 = load %struct.TYPE_16__*, %struct.TYPE_16__** %547, align 8
  %549 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %548, i64 1
  %550 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %549, i32 0, i32 1
  %551 = load i64, i64* %550, align 8
  %552 = inttoptr i64 %551 to i32*
  %553 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %554 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %553, i32 0, i32 1
  %555 = load %struct.TYPE_16__*, %struct.TYPE_16__** %554, align 8
  %556 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %555, i64 2
  %557 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %556, i32 0, i32 1
  %558 = load i64, i64* %557, align 8
  %559 = inttoptr i64 %558 to i32*
  %560 = load i64, i64* %9, align 8
  %561 = call i32 @opj_mct_decode_real(i32* %545, i32* %552, i32* %559, i64 %560)
  br label %562

562:                                              ; preds = %538, %514
  br label %563

563:                                              ; preds = %562, %508
  br label %564

564:                                              ; preds = %563, %451
  br label %572

565:                                              ; preds = %362
  %566 = load i32*, i32** %5, align 8
  %567 = load i32, i32* @EVT_ERROR, align 4
  %568 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %569 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 8
  %571 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %566, i32 %567, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %570)
  br label %572

572:                                              ; preds = %565, %564
  %573 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %573, i32* %3, align 4
  br label %574

574:                                              ; preds = %572, %447, %390, %377, %355, %211, %100, %38
  %575 = load i32, i32* %3, align 4
  ret i32 %575
}

declare dso_local i32 @opj_event_msg(i32*, i32, i8*, ...) #1

declare dso_local i64 @opj_malloc(i32) #1

declare dso_local i32 @opj_mct_decode_custom(i32*, i64, i32**, i64, i32) #1

declare dso_local i32 @opj_free(i32**) #1

declare dso_local i32 @opj_mct_decode(i64, i64, i64, i64) #1

declare dso_local i32 @opj_mct_decode_real(i32*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
