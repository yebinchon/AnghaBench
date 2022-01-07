; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GPOS_apply_MarkToLigature.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GPOS_apply_MarkToLigature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32*, i32 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_24__ = type { i32* }

@.str = private unnamed_addr constant [48 x i8] c"MarkToLigature Attachment Positioning Subtable\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Mark %x(%i) and ligature %x(%i)\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Mark index exceeded mark count\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Mark Class %i total classes %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Ligature index exceeded ligature count\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Failed to find available ligature connection point\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Offset on ligature is %s design units\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Offset on mark is %s design units\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Resulting cumulative offset is %s design units\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Unhandled Mark To Ligature Format %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_16__*, i32*, i32, i32, i32, %struct.TYPE_17__*)* @GPOS_apply_MarkToLigature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GPOS_apply_MarkToLigature(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1, i32* %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_17__* %6) #0 {
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_21__*, align 8
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca %struct.TYPE_23__*, align 8
  %24 = alloca %struct.TYPE_22__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_17__, align 8
  %31 = alloca %struct.TYPE_17__, align 8
  %32 = alloca i32, align 4
  %33 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_17__* %6, %struct.TYPE_17__** %14, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %7
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %38, %7
  %45 = phi i1 [ false, %7 ], [ %43, %38 ]
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 -1, i32 1
  store i32 %47, i32* %16, align 4
  %48 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %308, %44
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @GET_BE_WORD(i32 %53)
  %55 = icmp slt i32 %50, %54
  br i1 %55, label %56, label %311

56:                                               ; preds = %49
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %58 = load i32, i32* %15, align 4
  %59 = call i64 @GPOS_get_subtable(%struct.TYPE_18__* %57, i32 %58)
  %60 = inttoptr i64 %59 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %60, %struct.TYPE_20__** %17, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @GET_BE_WORD(i32 %63)
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %301

66:                                               ; preds = %56
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @GET_BE_WORD(i32 %69)
  store i32 %70, i32* %18, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %72 = bitcast %struct.TYPE_20__* %71 to i32*
  %73 = load i32, i32* %18, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @GSUB_is_glyph_covered(i32* %75, i32 %80)
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %19, align 4
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %300

84:                                               ; preds = %66
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @GET_BE_WORD(i32 %87)
  store i32 %88, i32* %18, align 4
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %90 = bitcast %struct.TYPE_20__* %89 to i32*
  %91 = load i32, i32* %18, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %16, align 4
  %97 = sub i32 %95, %96
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @GSUB_is_glyph_covered(i32* %93, i32 %100)
  store i32 %101, i32* %20, align 4
  %102 = load i32, i32* %20, align 4
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %299

104:                                              ; preds = %84
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @GET_BE_WORD(i32 %107)
  store i32 %108, i32* %26, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %11, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %19, align 4
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %16, align 4
  %118 = sub i32 %116, %117
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %20, align 4
  %123 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %114, i32 %121, i32 %122)
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @GET_BE_WORD(i32 %126)
  store i32 %127, i32* %18, align 4
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %129 = bitcast %struct.TYPE_20__* %128 to i32*
  %130 = load i32, i32* %18, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = bitcast i32* %132 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %133, %struct.TYPE_21__** %21, align 8
  %134 = load i32, i32* %19, align 4
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @GET_BE_WORD(i32 %137)
  %139 = icmp sgt i32 %134, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %104
  %141 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %311

142:                                              ; preds = %104
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %144, align 8
  %146 = load i32, i32* %19, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i64 %147
  store %struct.TYPE_19__* %148, %struct.TYPE_19__** %22, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @GET_BE_WORD(i32 %151)
  store i32 %152, i32* %25, align 4
  %153 = load i32, i32* %25, align 4
  %154 = load i32, i32* %26, align 4
  %155 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %153, i32 %154)
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @GET_BE_WORD(i32 %158)
  store i32 %159, i32* %18, align 4
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %161 = bitcast %struct.TYPE_20__* %160 to i32*
  %162 = load i32, i32* %18, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = bitcast i32* %164 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %165, %struct.TYPE_23__** %23, align 8
  %166 = load i32, i32* %20, align 4
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @GET_BE_WORD(i32 %169)
  %171 = icmp sgt i32 %166, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %142
  %173 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %311

174:                                              ; preds = %142
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %20, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @GET_BE_WORD(i32 %181)
  store i32 %182, i32* %18, align 4
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %184 = bitcast %struct.TYPE_23__* %183 to i32*
  %185 = load i32, i32* %18, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = bitcast i32* %187 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %188, %struct.TYPE_22__** %24, align 8
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @GET_BE_WORD(i32 %191)
  store i32 %192, i32* %27, align 4
  %193 = load i32, i32* %26, align 4
  %194 = sext i32 %193 to i64
  %195 = mul i64 %194, 4
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %28, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %29, align 4
  br label %197

197:                                              ; preds = %247, %174
  %198 = load i32, i32* %29, align 4
  %199 = load i32, i32* %27, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load i32, i32* %18, align 4
  %203 = icmp ne i32 %202, 0
  %204 = xor i1 %203, true
  br label %205

205:                                              ; preds = %201, %197
  %206 = phi i1 [ false, %197 ], [ %204, %201 ]
  br i1 %206, label %207, label %250

207:                                              ; preds = %205
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = inttoptr i64 %210 to i32*
  %212 = load i32, i32* %28, align 4
  %213 = load i32, i32* %29, align 4
  %214 = mul nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %211, i64 %215
  %217 = bitcast i32* %216 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %217, %struct.TYPE_24__** %33, align 8
  store i32 0, i32* %32, align 4
  br label %218

218:                                              ; preds = %237, %207
  %219 = load i32, i32* %32, align 4
  %220 = load i32, i32* %26, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = load i32, i32* %18, align 4
  %224 = icmp ne i32 %223, 0
  %225 = xor i1 %224, true
  br label %226

226:                                              ; preds = %222, %218
  %227 = phi i1 [ false, %218 ], [ %225, %222 ]
  br i1 %227, label %228, label %240

228:                                              ; preds = %226
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %33, align 8
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %32, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @GET_BE_WORD(i32 %235)
  store i32 %236, i32* %18, align 4
  br label %237

237:                                              ; preds = %228
  %238 = load i32, i32* %32, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %32, align 4
  br label %218

240:                                              ; preds = %226
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %33, align 8
  %242 = bitcast %struct.TYPE_24__* %241 to i32*
  %243 = load i32, i32* %28, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = bitcast i32* %245 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %246, %struct.TYPE_24__** %33, align 8
  br label %247

247:                                              ; preds = %240
  %248 = load i32, i32* %29, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %29, align 4
  br label %197

250:                                              ; preds = %205
  %251 = load i32, i32* %18, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %255, label %253

253:                                              ; preds = %250
  %254 = call i32 @ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  br label %311

255:                                              ; preds = %250
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %257 = bitcast %struct.TYPE_22__* %256 to i32*
  %258 = load i32, i32* %18, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %13, align 4
  %262 = call i32 @GPOS_get_anchor_values(i32* %260, %struct.TYPE_17__* %30, i32 %261)
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @GET_BE_WORD(i32 %265)
  store i32 %266, i32* %18, align 4
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %268 = bitcast %struct.TYPE_21__* %267 to i32*
  %269 = load i32, i32* %18, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %13, align 4
  %273 = call i32 @GPOS_get_anchor_values(i32* %271, %struct.TYPE_17__* %31, i32 %272)
  %274 = call i32 @wine_dbgstr_point(%struct.TYPE_17__* %30)
  %275 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %274)
  %276 = call i32 @wine_dbgstr_point(%struct.TYPE_17__* %31)
  %277 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %276)
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = sub nsw i64 %279, %281
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = add nsw i64 %285, %282
  store i64 %286, i64* %284, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = sub nsw i64 %288, %290
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = add nsw i64 %294, %291
  store i64 %295, i64* %293, align 8
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %297 = call i32 @wine_dbgstr_point(%struct.TYPE_17__* %296)
  %298 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %297)
  br label %299

299:                                              ; preds = %255, %84
  br label %300

300:                                              ; preds = %299, %66
  br label %307

301:                                              ; preds = %56
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @GET_BE_WORD(i32 %304)
  %306 = call i32 @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %305)
  br label %307

307:                                              ; preds = %301, %300
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %15, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %15, align 4
  br label %49

311:                                              ; preds = %140, %172, %253, %49
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @GET_BE_WORD(i32) #1

declare dso_local i64 @GPOS_get_subtable(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @GSUB_is_glyph_covered(i32*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @GPOS_get_anchor_values(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @wine_dbgstr_point(%struct.TYPE_17__*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
