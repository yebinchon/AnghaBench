; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_decode_tiles.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_decode_tiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_18__*, %struct.TYPE_21__*, %struct.TYPE_20__*, i64 }
%struct.TYPE_31__ = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64, i64, i64 }
%struct.TYPE_21__ = type { i64, i64, i64, i64, i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_28__*, %struct.TYPE_25__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }

@OPJ_TRUE = common dso_local global i32 0, align 4
@OPJ_FALSE = common dso_local global i32 0, align 4
@EVT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to decode tile 1/1\0A\00", align 1
@J2K_STATE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to decode tile %d/%d\0A\00", align 1
@EVT_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Tile %d/%d has been decoded.\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Image data has been updated with tile %d.\0A\0A\00", align 1
@J2K_STATE_NEOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32*, i32*)* @opj_j2k_decode_tiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_j2k_decode_tiles(%struct.TYPE_19__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %17, i32* %8, align 4
  store i64 0, i64* %15, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %174

23:                                               ; preds = %3
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %174

29:                                               ; preds = %23
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %174

35:                                               ; preds = %29
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %174

41:                                               ; preds = %35
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %174

48:                                               ; preds = %41
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %174

55:                                               ; preds = %48
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %60, %64
  br i1 %65, label %66, label %174

66:                                               ; preds = %55
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %71, %75
  br i1 %76, label %77, label %174

77:                                               ; preds = %66
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @opj_j2k_read_tile_header(%struct.TYPE_19__* %78, i64* %9, i32* null, i32* %10, i32* %11, i32* %12, i32* %13, i64* %14, i32* %8, i32* %79, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %84, i32* %4, align 4
  br label %372

85:                                               ; preds = %77
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @opj_j2k_decode_tile(%struct.TYPE_19__* %86, i64 %87, i32* null, i32 0, i32* %88, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %85
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* @EVT_ERROR, align 4
  %95 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %93, i32 %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %96, i32* %4, align 4
  br label %372

97:                                               ; preds = %85
  store i64 0, i64* %16, align 8
  br label %98

98:                                               ; preds = %169, %97
  %99 = load i64, i64* %16, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %99, %104
  br i1 %105, label %106, label %172

106:                                              ; preds = %98
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %110, align 8
  %112 = load i64, i64* %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @opj_image_data_free(i32* %115)
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %124, align 8
  %126 = load i64, i64* %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %133, align 8
  %135 = load i64, i64* %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 1
  store i32* %129, i32** %137, align 8
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %143, align 8
  %145 = load i64, i64* %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 5
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %152, align 8
  %154 = load i64, i64* %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 0
  store i32 %148, i32* %156, align 8
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %164, align 8
  %166 = load i64, i64* %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 0
  store i32* null, i32** %168, align 8
  br label %169

169:                                              ; preds = %106
  %170 = load i64, i64* %16, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %16, align 8
  br label %98

172:                                              ; preds = %98
  %173 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %173, i32* %4, align 4
  br label %372

174:                                              ; preds = %66, %55, %48, %41, %35, %29, %23, %3
  br label %175

175:                                              ; preds = %369, %174
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %206

181:                                              ; preds = %175
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %206

187:                                              ; preds = %181
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %189, i32 0, i32 6
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i64 0
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %206

196:                                              ; preds = %187
  store i64 0, i64* %9, align 8
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 5
  store i64 0, i64* %198, align 8
  %199 = load i32, i32* @J2K_STATE_DATA, align 4
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %199
  store i32 %205, i32* %203, align 8
  br label %219

206:                                              ; preds = %187, %181, %175
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %208 = load i32*, i32** %6, align 8
  %209 = load i32*, i32** %7, align 8
  %210 = call i32 @opj_j2k_read_tile_header(%struct.TYPE_19__* %207, i64* %9, i32* null, i32* %10, i32* %11, i32* %12, i32* %13, i64* %14, i32* %8, i32* %208, i32* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %206
  %213 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %213, i32* %4, align 4
  br label %372

214:                                              ; preds = %206
  %215 = load i32, i32* %8, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %214
  br label %370

218:                                              ; preds = %214
  br label %219

219:                                              ; preds = %218, %196
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %221 = load i64, i64* %9, align 8
  %222 = load i32*, i32** %6, align 8
  %223 = load i32*, i32** %7, align 8
  %224 = call i32 @opj_j2k_decode_tile(%struct.TYPE_19__* %220, i64 %221, i32* null, i32 0, i32* %222, i32* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %242, label %226

226:                                              ; preds = %219
  %227 = load i32*, i32** %7, align 8
  %228 = load i32, i32* @EVT_ERROR, align 4
  %229 = load i64, i64* %9, align 8
  %230 = add i64 %229, 1
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = mul nsw i32 %234, %238
  %240 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %227, i32 %228, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %230, i32 %239)
  %241 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %241, i32* %4, align 4
  br label %372

242:                                              ; preds = %219
  %243 = load i32*, i32** %7, align 8
  %244 = load i32, i32* @EVT_INFO, align 4
  %245 = load i64, i64* %9, align 8
  %246 = add i64 %245, 1
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = mul nsw i32 %250, %254
  %256 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %243, i32 %244, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %246, i32 %255)
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 4
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %258, align 8
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 3
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %261, align 8
  %263 = call i32 @opj_j2k_update_image_data(%struct.TYPE_20__* %259, %struct.TYPE_21__* %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %242
  %266 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %266, i32* %4, align 4
  br label %372

267:                                              ; preds = %242
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %273, label %328

273:                                              ; preds = %267
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = icmp eq i32 %277, 1
  br i1 %278, label %279, label %328

279:                                              ; preds = %273
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 3
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = icmp eq i64 %284, %289
  br i1 %290, label %291, label %327

291:                                              ; preds = %279
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %292, i32 0, i32 3
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 2
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = icmp eq i64 %296, %301
  br i1 %302, label %303, label %327

303:                                              ; preds = %291
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 3
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 2
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 2
  %313 = load i64, i64* %312, align 8
  %314 = icmp eq i64 %308, %313
  br i1 %314, label %315, label %327

315:                                              ; preds = %303
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i32 0, i32 3
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 2
  %323 = load %struct.TYPE_18__*, %struct.TYPE_18__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %323, i32 0, i32 3
  %325 = load i64, i64* %324, align 8
  %326 = icmp eq i64 %320, %325
  br i1 %326, label %328, label %327

327:                                              ; preds = %315, %303, %291, %279
  br label %336

328:                                              ; preds = %315, %273, %267
  %329 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %330, i32 0, i32 6
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** %331, align 8
  %333 = load i64, i64* %9, align 8
  %334 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i64 %333
  %335 = call i32 @opj_j2k_tcp_data_destroy(%struct.TYPE_22__* %334)
  br label %336

336:                                              ; preds = %328, %327
  %337 = load i32*, i32** %7, align 8
  %338 = load i32, i32* @EVT_INFO, align 4
  %339 = load i64, i64* %9, align 8
  %340 = add i64 %339, 1
  %341 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %337, i32 %338, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %340)
  %342 = load i32*, i32** %6, align 8
  %343 = call i64 @opj_stream_get_number_byte_left(i32* %342)
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %345, label %354

345:                                              ; preds = %336
  %346 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @J2K_STATE_NEOC, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %354

353:                                              ; preds = %345
  br label %370

354:                                              ; preds = %345, %336
  %355 = load i64, i64* %15, align 8
  %356 = add i64 %355, 1
  store i64 %356, i64* %15, align 8
  %357 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = mul nsw i32 %360, %364
  %366 = sext i32 %365 to i64
  %367 = icmp eq i64 %356, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %354
  br label %370

369:                                              ; preds = %354
  br label %175

370:                                              ; preds = %368, %353, %217
  %371 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %371, i32* %4, align 4
  br label %372

372:                                              ; preds = %370, %265, %226, %212, %172, %92, %83
  %373 = load i32, i32* %4, align 4
  ret i32 %373
}

declare dso_local i32 @opj_j2k_read_tile_header(%struct.TYPE_19__*, i64*, i32*, i32*, i32*, i32*, i32*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @opj_j2k_decode_tile(%struct.TYPE_19__*, i64, i32*, i32, i32*, i32*) #1

declare dso_local i32 @opj_event_msg(i32*, i32, i8*, ...) #1

declare dso_local i32 @opj_image_data_free(i32*) #1

declare dso_local i32 @opj_j2k_update_image_data(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @opj_j2k_tcp_data_destroy(%struct.TYPE_22__*) #1

declare dso_local i64 @opj_stream_get_number_byte_left(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
