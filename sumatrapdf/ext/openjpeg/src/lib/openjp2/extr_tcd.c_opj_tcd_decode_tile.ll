; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_decode_tile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_decode_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_24__*, i64 }
%struct.TYPE_24__ = type { i64*, i64*, i32*, i32*, i32* }
%struct.TYPE_31__ = type { i64, i64, i64, i64, i64, i8**, %struct.TYPE_27__*, %struct.TYPE_26__*, i8*, %struct.TYPE_28__*, %struct.TYPE_29__* }
%struct.TYPE_27__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i32, i64, i64, i64, i64, i64, i32*, %struct.TYPE_32__*, i64, i64, i64, i64 }
%struct.TYPE_32__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32*, i32* }

@OPJ_TRUE = common dso_local global i8* null, align 8
@OPJ_FALSE = common dso_local global i8* null, align 8
@SIZE_MAX = common dso_local global i32 0, align 4
@EVT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Size of tile data exceeds system limits\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid tilec->win_xxx values\0A\00", align 1
@p_cstr_info = common dso_local global %struct.TYPE_23__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @opj_tcd_decode_tile(%struct.TYPE_31__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64* %6, i32* %7, i64 %8, i64 %9, i32* %10, i32* %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_31__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8**, align 8
  %29 = alloca %struct.TYPE_30__*, align 8
  %30 = alloca %struct.TYPE_32__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca %struct.TYPE_30__*, align 8
  %36 = alloca %struct.TYPE_22__*, align 8
  %37 = alloca %struct.TYPE_32__*, align 8
  %38 = alloca %struct.TYPE_30__*, align 8
  %39 = alloca %struct.TYPE_22__*, align 8
  %40 = alloca %struct.TYPE_32__*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %14, align 8
  store i64 %1, i64* %15, align 8
  store i64 %2, i64* %16, align 8
  store i64 %3, i64* %17, align 8
  store i64 %4, i64* %18, align 8
  store i64 %5, i64* %19, align 8
  store i64* %6, i64** %20, align 8
  store i32* %7, i32** %21, align 8
  store i64 %8, i64* %22, align 8
  store i64 %9, i64* %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %44 = load i64, i64* %23, align 8
  %45 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %47, i32 0, i32 9
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %50, align 8
  %52 = load i64, i64* %23, align 8
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i64 %52
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 10
  store %struct.TYPE_29__* %53, %struct.TYPE_29__** %55, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* %16, align 8
  %60 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %17, align 8
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %18, align 8
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 4
  store i64 %65, i64* %67, align 8
  %68 = load i8*, i8** @OPJ_TRUE, align 8
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %69, i32 0, i32 8
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 5
  %73 = load i8**, i8*** %72, align 8
  %74 = call i32 @opj_free(i8** %73)
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 5
  store i8** null, i8*** %76, align 8
  %77 = load i64, i64* %19, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %111

79:                                               ; preds = %12
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %80, i32 0, i32 6
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @opj_calloc(i32 8, i64 %84)
  %86 = inttoptr i64 %85 to i8**
  store i8** %86, i8*** %28, align 8
  %87 = load i8**, i8*** %28, align 8
  %88 = icmp eq i8** %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %90, i8** %13, align 8
  br label %619

91:                                               ; preds = %79
  store i64 0, i64* %27, align 8
  br label %92

92:                                               ; preds = %104, %91
  %93 = load i64, i64* %27, align 8
  %94 = load i64, i64* %19, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load i8*, i8** @OPJ_TRUE, align 8
  %98 = load i8**, i8*** %28, align 8
  %99 = load i64*, i64** %20, align 8
  %100 = load i64, i64* %27, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i8*, i8** %98, i64 %102
  store i8* %97, i8** %103, align 8
  br label %104

104:                                              ; preds = %96
  %105 = load i64, i64* %27, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %27, align 8
  br label %92

107:                                              ; preds = %92
  %108 = load i8**, i8*** %28, align 8
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 5
  store i8** %108, i8*** %110, align 8
  br label %111

111:                                              ; preds = %107, %12
  store i64 0, i64* %27, align 8
  br label %112

112:                                              ; preds = %144, %111
  %113 = load i64, i64* %27, align 8
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 6
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ult i64 %113, %118
  br i1 %119, label %120, label %147

120:                                              ; preds = %112
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i32 0, i32 5
  %123 = load i8**, i8*** %122, align 8
  %124 = icmp ne i8** %123, null
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 5
  %128 = load i8**, i8*** %127, align 8
  %129 = load i64, i64* %27, align 8
  %130 = getelementptr inbounds i8*, i8** %128, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %125
  br label %144

134:                                              ; preds = %125, %120
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %136 = load i64, i64* %27, align 8
  %137 = call i32 @opj_tcd_is_whole_tilecomp_decoding(%struct.TYPE_31__* %135, i64 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  %140 = load i8*, i8** @OPJ_FALSE, align 8
  %141 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i32 0, i32 8
  store i8* %140, i8** %142, align 8
  br label %147

143:                                              ; preds = %134
  br label %144

144:                                              ; preds = %143, %133
  %145 = load i64, i64* %27, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %27, align 8
  br label %112

147:                                              ; preds = %139, %112
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %148, i32 0, i32 8
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %259

152:                                              ; preds = %147
  store i64 0, i64* %27, align 8
  br label %153

153:                                              ; preds = %255, %152
  %154 = load i64, i64* %27, align 8
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %155, i32 0, i32 6
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ult i64 %154, %159
  br i1 %160, label %161, label %258

161:                                              ; preds = %153
  %162 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 7
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %167, align 8
  %169 = load i64, i64* %27, align 8
  %170 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i64 %169
  store %struct.TYPE_30__* %170, %struct.TYPE_30__** %29, align 8
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %29, align 8
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 8
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %172, align 8
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %29, align 8
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %173, i64 %178
  store %struct.TYPE_32__* %179, %struct.TYPE_32__** %30, align 8
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %30, align 8
  %181 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %180, i32 0, i32 9
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_32__*, %struct.TYPE_32__** %30, align 8
  %184 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %183, i32 0, i32 8
  %185 = load i64, i64* %184, align 8
  %186 = sub nsw i64 %182, %185
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %32, align 4
  %188 = load %struct.TYPE_32__*, %struct.TYPE_32__** %30, align 8
  %189 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %188, i32 0, i32 7
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_32__*, %struct.TYPE_32__** %30, align 8
  %192 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %191, i32 0, i32 6
  %193 = load i64, i64* %192, align 8
  %194 = sub nsw i64 %190, %193
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %33, align 4
  %196 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %196, i32 0, i32 5
  %198 = load i8**, i8*** %197, align 8
  %199 = icmp ne i8** %198, null
  br i1 %199, label %200, label %209

200:                                              ; preds = %161
  %201 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %201, i32 0, i32 5
  %203 = load i8**, i8*** %202, align 8
  %204 = load i64, i64* %27, align 8
  %205 = getelementptr inbounds i8*, i8** %203, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %200
  br label %255

209:                                              ; preds = %200, %161
  %210 = load i32, i32* %33, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %209
  %213 = load i32, i32* %32, align 4
  %214 = load i32, i32* @SIZE_MAX, align 4
  %215 = load i32, i32* %33, align 4
  %216 = sdiv i32 %214, %215
  %217 = icmp sgt i32 %213, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %212
  %219 = load i32*, i32** %25, align 8
  %220 = load i32, i32* @EVT_ERROR, align 4
  %221 = call i32 @opj_event_msg(i32* %219, i32 %220, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %222 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %222, i8** %13, align 8
  br label %619

223:                                              ; preds = %212, %209
  %224 = load i32, i32* %32, align 4
  %225 = load i32, i32* %33, align 4
  %226 = mul nsw i32 %224, %225
  store i32 %226, i32* %31, align 4
  %227 = load i32, i32* @SIZE_MAX, align 4
  %228 = sext i32 %227 to i64
  %229 = udiv i64 %228, 8
  %230 = load i32, i32* %31, align 4
  %231 = sext i32 %230 to i64
  %232 = icmp ult i64 %229, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %223
  %234 = load i32*, i32** %25, align 8
  %235 = load i32, i32* @EVT_ERROR, align 4
  %236 = call i32 @opj_event_msg(i32* %234, i32 %235, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %237 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %237, i8** %13, align 8
  br label %619

238:                                              ; preds = %223
  %239 = load i32, i32* %31, align 4
  %240 = sext i32 %239 to i64
  %241 = mul i64 %240, 8
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %31, align 4
  %243 = load i32, i32* %31, align 4
  %244 = load %struct.TYPE_30__*, %struct.TYPE_30__** %29, align 8
  %245 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** %29, align 8
  %247 = call i32 @opj_alloc_tile_component_data(%struct.TYPE_30__* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %238
  %250 = load i32*, i32** %25, align 8
  %251 = load i32, i32* @EVT_ERROR, align 4
  %252 = call i32 @opj_event_msg(i32* %250, i32 %251, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %253 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %253, i8** %13, align 8
  br label %619

254:                                              ; preds = %238
  br label %255

255:                                              ; preds = %254, %208
  %256 = load i64, i64* %27, align 8
  %257 = add i64 %256, 1
  store i64 %257, i64* %27, align 8
  br label %153

258:                                              ; preds = %153
  br label %452

259:                                              ; preds = %147
  store i64 0, i64* %27, align 8
  br label %260

260:                                              ; preds = %448, %259
  %261 = load i64, i64* %27, align 8
  %262 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %262, i32 0, i32 6
  %264 = load %struct.TYPE_27__*, %struct.TYPE_27__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp ult i64 %261, %266
  br i1 %267, label %268, label %451

268:                                              ; preds = %260
  %269 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %270 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %269, i32 0, i32 7
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_30__*, %struct.TYPE_30__** %274, align 8
  %276 = load i64, i64* %27, align 8
  %277 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %275, i64 %276
  store %struct.TYPE_30__* %277, %struct.TYPE_30__** %35, align 8
  %278 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %278, i32 0, i32 6
  %280 = load %struct.TYPE_27__*, %struct.TYPE_27__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %281, align 8
  %283 = load i64, i64* %27, align 8
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i64 %283
  store %struct.TYPE_22__* %284, %struct.TYPE_22__** %36, align 8
  %285 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %285, i32 0, i32 5
  %287 = load i8**, i8*** %286, align 8
  %288 = icmp ne i8** %287, null
  br i1 %288, label %289, label %298

289:                                              ; preds = %268
  %290 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %291 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %290, i32 0, i32 5
  %292 = load i8**, i8*** %291, align 8
  %293 = load i64, i64* %27, align 8
  %294 = getelementptr inbounds i8*, i8** %292, i64 %293
  %295 = load i8*, i8** %294, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %298, label %297

297:                                              ; preds = %289
  br label %448

298:                                              ; preds = %289, %268
  %299 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %300 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %299, i32 0, i32 12
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %303 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @opj_uint_ceildiv(i64 %304, i32 %307)
  %309 = call i8* @opj_uint_max(i64 %301, i32 %308)
  %310 = ptrtoint i8* %309 to i64
  %311 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %312 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %311, i32 0, i32 2
  store i64 %310, i64* %312, align 8
  %313 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %314 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %313, i32 0, i32 11
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %317 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @opj_uint_ceildiv(i64 %318, i32 %321)
  %323 = call i8* @opj_uint_max(i64 %315, i32 %322)
  %324 = ptrtoint i8* %323 to i64
  %325 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %326 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %325, i32 0, i32 3
  store i64 %324, i64* %326, align 8
  %327 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %328 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %327, i32 0, i32 10
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %331 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %330, i32 0, i32 3
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %334 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @opj_uint_ceildiv(i64 %332, i32 %335)
  %337 = call i8* @opj_uint_min(i64 %329, i32 %336)
  %338 = ptrtoint i8* %337 to i64
  %339 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %340 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %339, i32 0, i32 4
  store i64 %338, i64* %340, align 8
  %341 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %342 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %341, i32 0, i32 9
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %345 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %344, i32 0, i32 4
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @opj_uint_ceildiv(i64 %346, i32 %349)
  %351 = call i8* @opj_uint_min(i64 %343, i32 %350)
  %352 = ptrtoint i8* %351 to i64
  %353 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %354 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %353, i32 0, i32 5
  store i64 %352, i64* %354, align 8
  %355 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %356 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %355, i32 0, i32 4
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %359 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = icmp slt i64 %357, %360
  br i1 %361, label %370, label %362

362:                                              ; preds = %298
  %363 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %364 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %363, i32 0, i32 5
  %365 = load i64, i64* %364, align 8
  %366 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %367 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %366, i32 0, i32 3
  %368 = load i64, i64* %367, align 8
  %369 = icmp slt i64 %365, %368
  br i1 %369, label %370, label %375

370:                                              ; preds = %362, %298
  %371 = load i32*, i32** %25, align 8
  %372 = load i32, i32* @EVT_ERROR, align 4
  %373 = call i32 @opj_event_msg(i32* %371, i32 %372, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %374 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %374, i8** %13, align 8
  br label %619

375:                                              ; preds = %362
  store i64 0, i64* %34, align 8
  br label %376

376:                                              ; preds = %444, %375
  %377 = load i64, i64* %34, align 8
  %378 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %379 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %378, i32 0, i32 6
  %380 = load i64, i64* %379, align 8
  %381 = icmp ult i64 %377, %380
  br i1 %381, label %382, label %447

382:                                              ; preds = %376
  %383 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %384 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %383, i32 0, i32 8
  %385 = load %struct.TYPE_32__*, %struct.TYPE_32__** %384, align 8
  %386 = load i64, i64* %34, align 8
  %387 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %385, i64 %386
  store %struct.TYPE_32__* %387, %struct.TYPE_32__** %37, align 8
  %388 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %389 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %388, i32 0, i32 2
  %390 = load i64, i64* %389, align 8
  %391 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %392 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %391, i32 0, i32 6
  %393 = load i64, i64* %392, align 8
  %394 = sub i64 %393, 1
  %395 = load i64, i64* %34, align 8
  %396 = sub i64 %394, %395
  %397 = trunc i64 %396 to i32
  %398 = call i8* @opj_uint_ceildivpow2(i64 %390, i32 %397)
  %399 = ptrtoint i8* %398 to i32
  %400 = load %struct.TYPE_32__*, %struct.TYPE_32__** %37, align 8
  %401 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %400, i32 0, i32 0
  store i32 %399, i32* %401, align 8
  %402 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %403 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %402, i32 0, i32 3
  %404 = load i64, i64* %403, align 8
  %405 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %406 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %405, i32 0, i32 6
  %407 = load i64, i64* %406, align 8
  %408 = sub i64 %407, 1
  %409 = load i64, i64* %34, align 8
  %410 = sub i64 %408, %409
  %411 = trunc i64 %410 to i32
  %412 = call i8* @opj_uint_ceildivpow2(i64 %404, i32 %411)
  %413 = ptrtoint i8* %412 to i32
  %414 = load %struct.TYPE_32__*, %struct.TYPE_32__** %37, align 8
  %415 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %414, i32 0, i32 1
  store i32 %413, i32* %415, align 4
  %416 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %417 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %416, i32 0, i32 4
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %420 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %419, i32 0, i32 6
  %421 = load i64, i64* %420, align 8
  %422 = sub i64 %421, 1
  %423 = load i64, i64* %34, align 8
  %424 = sub i64 %422, %423
  %425 = trunc i64 %424 to i32
  %426 = call i8* @opj_uint_ceildivpow2(i64 %418, i32 %425)
  %427 = ptrtoint i8* %426 to i32
  %428 = load %struct.TYPE_32__*, %struct.TYPE_32__** %37, align 8
  %429 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %428, i32 0, i32 2
  store i32 %427, i32* %429, align 8
  %430 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %431 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %430, i32 0, i32 5
  %432 = load i64, i64* %431, align 8
  %433 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  %434 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %433, i32 0, i32 6
  %435 = load i64, i64* %434, align 8
  %436 = sub i64 %435, 1
  %437 = load i64, i64* %34, align 8
  %438 = sub i64 %436, %437
  %439 = trunc i64 %438 to i32
  %440 = call i8* @opj_uint_ceildivpow2(i64 %432, i32 %439)
  %441 = ptrtoint i8* %440 to i32
  %442 = load %struct.TYPE_32__*, %struct.TYPE_32__** %37, align 8
  %443 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %442, i32 0, i32 3
  store i32 %441, i32* %443, align 4
  br label %444

444:                                              ; preds = %382
  %445 = load i64, i64* %34, align 8
  %446 = add i64 %445, 1
  store i64 %446, i64* %34, align 8
  br label %376

447:                                              ; preds = %376
  br label %448

448:                                              ; preds = %447, %297
  %449 = load i64, i64* %27, align 8
  %450 = add i64 %449, 1
  store i64 %450, i64* %27, align 8
  br label %260

451:                                              ; preds = %260
  br label %452

452:                                              ; preds = %451, %258
  store i64 0, i64* %26, align 8
  %453 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %454 = load i32*, i32** %21, align 8
  %455 = load i64, i64* %22, align 8
  %456 = load i32*, i32** %24, align 8
  %457 = load i32*, i32** %25, align 8
  %458 = call i32 @opj_tcd_t2_decode(%struct.TYPE_31__* %453, i32* %454, i64* %26, i64 %455, i32* %456, i32* %457)
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %462, label %460

460:                                              ; preds = %452
  %461 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %461, i8** %13, align 8
  br label %619

462:                                              ; preds = %452
  %463 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %464 = load i32*, i32** %25, align 8
  %465 = call i32 @opj_tcd_t1_decode(%struct.TYPE_31__* %463, i32* %464)
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %469, label %467

467:                                              ; preds = %462
  %468 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %468, i8** %13, align 8
  br label %619

469:                                              ; preds = %462
  %470 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %471 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %470, i32 0, i32 8
  %472 = load i8*, i8** %471, align 8
  %473 = icmp ne i8* %472, null
  br i1 %473, label %598, label %474

474:                                              ; preds = %469
  store i64 0, i64* %27, align 8
  br label %475

475:                                              ; preds = %594, %474
  %476 = load i64, i64* %27, align 8
  %477 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %478 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %477, i32 0, i32 6
  %479 = load %struct.TYPE_27__*, %struct.TYPE_27__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %479, i32 0, i32 0
  %481 = load i64, i64* %480, align 8
  %482 = icmp ult i64 %476, %481
  br i1 %482, label %483, label %597

483:                                              ; preds = %475
  %484 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %485 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %484, i32 0, i32 7
  %486 = load %struct.TYPE_26__*, %struct.TYPE_26__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %486, i32 0, i32 0
  %488 = load %struct.TYPE_25__*, %struct.TYPE_25__** %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %488, i32 0, i32 0
  %490 = load %struct.TYPE_30__*, %struct.TYPE_30__** %489, align 8
  %491 = load i64, i64* %27, align 8
  %492 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %490, i64 %491
  store %struct.TYPE_30__* %492, %struct.TYPE_30__** %38, align 8
  %493 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %494 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %493, i32 0, i32 6
  %495 = load %struct.TYPE_27__*, %struct.TYPE_27__** %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %495, i32 0, i32 1
  %497 = load %struct.TYPE_22__*, %struct.TYPE_22__** %496, align 8
  %498 = load i64, i64* %27, align 8
  %499 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %497, i64 %498
  store %struct.TYPE_22__* %499, %struct.TYPE_22__** %39, align 8
  %500 = load %struct.TYPE_30__*, %struct.TYPE_30__** %38, align 8
  %501 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %500, i32 0, i32 8
  %502 = load %struct.TYPE_32__*, %struct.TYPE_32__** %501, align 8
  %503 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %504 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %502, i64 %506
  store %struct.TYPE_32__* %507, %struct.TYPE_32__** %40, align 8
  %508 = load %struct.TYPE_32__*, %struct.TYPE_32__** %40, align 8
  %509 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %508, i32 0, i32 2
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.TYPE_32__*, %struct.TYPE_32__** %40, align 8
  %512 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = sub nsw i32 %510, %513
  store i32 %514, i32* %41, align 4
  %515 = load %struct.TYPE_32__*, %struct.TYPE_32__** %40, align 8
  %516 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %515, i32 0, i32 3
  %517 = load i32, i32* %516, align 4
  %518 = load %struct.TYPE_32__*, %struct.TYPE_32__** %40, align 8
  %519 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = sub nsw i32 %517, %520
  store i32 %521, i32* %42, align 4
  %522 = load %struct.TYPE_30__*, %struct.TYPE_30__** %38, align 8
  %523 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %522, i32 0, i32 7
  %524 = load i32*, i32** %523, align 8
  %525 = call i32 @opj_image_data_free(i32* %524)
  %526 = load %struct.TYPE_30__*, %struct.TYPE_30__** %38, align 8
  %527 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %526, i32 0, i32 7
  store i32* null, i32** %527, align 8
  %528 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %529 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %528, i32 0, i32 5
  %530 = load i8**, i8*** %529, align 8
  %531 = icmp ne i8** %530, null
  br i1 %531, label %532, label %541

532:                                              ; preds = %483
  %533 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %534 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %533, i32 0, i32 5
  %535 = load i8**, i8*** %534, align 8
  %536 = load i64, i64* %27, align 8
  %537 = getelementptr inbounds i8*, i8** %535, i64 %536
  %538 = load i8*, i8** %537, align 8
  %539 = icmp ne i8* %538, null
  br i1 %539, label %541, label %540

540:                                              ; preds = %532
  br label %594

541:                                              ; preds = %532, %483
  %542 = load i32, i32* %41, align 4
  %543 = icmp sgt i32 %542, 0
  br i1 %543, label %544, label %593

544:                                              ; preds = %541
  %545 = load i32, i32* %42, align 4
  %546 = icmp sgt i32 %545, 0
  br i1 %546, label %547, label %593

547:                                              ; preds = %544
  %548 = load i32, i32* %41, align 4
  %549 = load i32, i32* @SIZE_MAX, align 4
  %550 = load i32, i32* %42, align 4
  %551 = sdiv i32 %549, %550
  %552 = icmp sgt i32 %548, %551
  br i1 %552, label %553, label %558

553:                                              ; preds = %547
  %554 = load i32*, i32** %25, align 8
  %555 = load i32, i32* @EVT_ERROR, align 4
  %556 = call i32 @opj_event_msg(i32* %554, i32 %555, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %557 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %557, i8** %13, align 8
  br label %619

558:                                              ; preds = %547
  %559 = load i32, i32* %41, align 4
  %560 = load i32, i32* %42, align 4
  %561 = mul nsw i32 %559, %560
  store i32 %561, i32* %43, align 4
  %562 = load i32, i32* %43, align 4
  %563 = sext i32 %562 to i64
  %564 = load i32, i32* @SIZE_MAX, align 4
  %565 = sext i32 %564 to i64
  %566 = udiv i64 %565, 4
  %567 = icmp ugt i64 %563, %566
  br i1 %567, label %568, label %573

568:                                              ; preds = %558
  %569 = load i32*, i32** %25, align 8
  %570 = load i32, i32* @EVT_ERROR, align 4
  %571 = call i32 @opj_event_msg(i32* %569, i32 %570, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %572 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %572, i8** %13, align 8
  br label %619

573:                                              ; preds = %558
  %574 = load i32, i32* %43, align 4
  %575 = sext i32 %574 to i64
  %576 = mul i64 %575, 4
  %577 = trunc i64 %576 to i32
  store i32 %577, i32* %43, align 4
  %578 = load i32, i32* %43, align 4
  %579 = call i64 @opj_image_data_alloc(i32 %578)
  %580 = inttoptr i64 %579 to i32*
  %581 = load %struct.TYPE_30__*, %struct.TYPE_30__** %38, align 8
  %582 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %581, i32 0, i32 7
  store i32* %580, i32** %582, align 8
  %583 = load %struct.TYPE_30__*, %struct.TYPE_30__** %38, align 8
  %584 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %583, i32 0, i32 7
  %585 = load i32*, i32** %584, align 8
  %586 = icmp eq i32* %585, null
  br i1 %586, label %587, label %592

587:                                              ; preds = %573
  %588 = load i32*, i32** %25, align 8
  %589 = load i32, i32* @EVT_ERROR, align 4
  %590 = call i32 @opj_event_msg(i32* %588, i32 %589, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %591 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %591, i8** %13, align 8
  br label %619

592:                                              ; preds = %573
  br label %593

593:                                              ; preds = %592, %544, %541
  br label %594

594:                                              ; preds = %593, %540
  %595 = load i64, i64* %27, align 8
  %596 = add i64 %595, 1
  store i64 %596, i64* %27, align 8
  br label %475

597:                                              ; preds = %475
  br label %598

598:                                              ; preds = %597, %469
  %599 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %600 = call i32 @opj_tcd_dwt_decode(%struct.TYPE_31__* %599)
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %604, label %602

602:                                              ; preds = %598
  %603 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %603, i8** %13, align 8
  br label %619

604:                                              ; preds = %598
  %605 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %606 = load i32*, i32** %25, align 8
  %607 = call i32 @opj_tcd_mct_decode(%struct.TYPE_31__* %605, i32* %606)
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %611, label %609

609:                                              ; preds = %604
  %610 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %610, i8** %13, align 8
  br label %619

611:                                              ; preds = %604
  %612 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %613 = call i32 @opj_tcd_dc_level_shift_decode(%struct.TYPE_31__* %612)
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %617, label %615

615:                                              ; preds = %611
  %616 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %616, i8** %13, align 8
  br label %619

617:                                              ; preds = %611
  %618 = load i8*, i8** @OPJ_TRUE, align 8
  store i8* %618, i8** %13, align 8
  br label %619

619:                                              ; preds = %617, %615, %609, %602, %587, %568, %553, %467, %460, %370, %249, %233, %218, %89
  %620 = load i8*, i8** %13, align 8
  ret i8* %620
}

declare dso_local i32 @opj_free(i8**) #1

declare dso_local i64 @opj_calloc(i32, i64) #1

declare dso_local i32 @opj_tcd_is_whole_tilecomp_decoding(%struct.TYPE_31__*, i64) #1

declare dso_local i32 @opj_event_msg(i32*, i32, i8*) #1

declare dso_local i32 @opj_alloc_tile_component_data(%struct.TYPE_30__*) #1

declare dso_local i8* @opj_uint_max(i64, i32) #1

declare dso_local i32 @opj_uint_ceildiv(i64, i32) #1

declare dso_local i8* @opj_uint_min(i64, i32) #1

declare dso_local i8* @opj_uint_ceildivpow2(i64, i32) #1

declare dso_local i32 @opj_tcd_t2_decode(%struct.TYPE_31__*, i32*, i64*, i64, i32*, i32*) #1

declare dso_local i32 @opj_tcd_t1_decode(%struct.TYPE_31__*, i32*) #1

declare dso_local i32 @opj_image_data_free(i32*) #1

declare dso_local i64 @opj_image_data_alloc(i32) #1

declare dso_local i32 @opj_tcd_dwt_decode(%struct.TYPE_31__*) #1

declare dso_local i32 @opj_tcd_mct_decode(%struct.TYPE_31__*, i32*) #1

declare dso_local i32 @opj_tcd_dc_level_shift_decode(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
