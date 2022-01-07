; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GPOS_apply_ContextPos.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GPOS_apply_ContextPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32*, i32, i32 }
%struct.TYPE_15__ = type { i32*, i32 }
%struct.TYPE_17__ = type { i32, i32*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Contextual Positioning Subtable\0A\00", align 1
@GPOS_apply_ContextPos.once = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"  TODO: subtype 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Contextual Positioning Subtable: Format 2\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Coverage index %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"No class rule table for class %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"PosClassSet has %i members\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"PosClassRule has %i glyphs classes\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Rule does not match\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Rule matches\0A\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"Invalid sequence index %u (glyph index %u, write dir %d).\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Position: %u -> %u %u.\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Not covered\0A\00", align 1
@GPOS_apply_ContextPos.once.12 = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"  TODO: subtype 3\0A\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"Unhandled Contextual Positioning Format %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_13__*, i32*, i32*, %struct.TYPE_14__*, i32*, i32, i32, i32*)* @GPOS_apply_ContextPos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GPOS_apply_ContextPos(i32* %0, i32* %1, i32* %2, %struct.TYPE_13__* %3, i32* %4, i32* %5, %struct.TYPE_14__* %6, i32* %7, i32 %8, i32 %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_18__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_15__*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca %struct.TYPE_17__*, align 8
  %35 = alloca %struct.TYPE_16__*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %11
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %46, %11
  %53 = phi i1 [ false, %11 ], [ %51, %46 ]
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 -1, i32 1
  store i32 %55, i32* %25, align 4
  %56 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %24, align 4
  br label %57

57:                                               ; preds = %326, %52
  %58 = load i32, i32* %24, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @GET_BE_WORD(i32 %61)
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %329

64:                                               ; preds = %57
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %66 = load i32, i32* %24, align 4
  %67 = call i64 @GPOS_get_subtable(%struct.TYPE_14__* %65, i32 %66)
  %68 = inttoptr i64 %67 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %68, %struct.TYPE_18__** %26, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @GET_BE_WORD(i32 %71)
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load i32, i32* @GPOS_apply_ContextPos.once, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @GPOS_apply_ContextPos.once, align 4
  %77 = icmp ne i32 %75, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %74
  br label %326

81:                                               ; preds = %64
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @GET_BE_WORD(i32 %84)
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %304

87:                                               ; preds = %81
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @GET_BE_WORD(i32 %90)
  store i32 %91, i32* %27, align 4
  %92 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %94 = bitcast %struct.TYPE_18__* %93 to i32*
  %95 = load i32, i32* %27, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32*, i32** %20, align 8
  %99 = load i32, i32* %21, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @GSUB_is_glyph_covered(i32* %97, i32 %102)
  store i32 %103, i32* %28, align 4
  %104 = load i32, i32* %28, align 4
  %105 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %28, align 4
  %107 = icmp ne i32 %106, -1
  br i1 %107, label %108, label %302

108:                                              ; preds = %87
  store i8* null, i8** %33, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @GET_BE_WORD(i32 %111)
  store i32 %112, i32* %27, align 4
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %114 = bitcast %struct.TYPE_18__* %113 to i32*
  %115 = load i32, i32* %27, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = bitcast i32* %117 to i8*
  store i8* %118, i8** %33, align 8
  %119 = load i8*, i8** %33, align 8
  %120 = load i32*, i32** %20, align 8
  %121 = load i32, i32* %21, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @OT_get_glyph_class(i8* %119, i32 %124)
  store i32 %125, i32* %31, align 4
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %31, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @GET_BE_WORD(i32 %132)
  store i32 %133, i32* %27, align 4
  %134 = load i32, i32* %27, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %108
  %137 = load i32, i32* %31, align 4
  %138 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  br label %326

139:                                              ; preds = %108
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %141 = bitcast %struct.TYPE_18__* %140 to i32*
  %142 = load i32, i32* %27, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = bitcast i32* %144 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %145, %struct.TYPE_15__** %32, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @GET_BE_WORD(i32 %148)
  store i32 %149, i32* %30, align 4
  %150 = load i32, i32* %30, align 4
  %151 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %150)
  store i32 0, i32* %29, align 4
  br label %152

152:                                              ; preds = %298, %139
  %153 = load i32, i32* %29, align 4
  %154 = load i32, i32* %30, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %301

156:                                              ; preds = %152
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %29, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @GET_BE_WORD(i32 %163)
  store i32 %164, i32* %27, align 4
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %166 = bitcast %struct.TYPE_15__* %165 to i32*
  %167 = load i32, i32* %27, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = bitcast i32* %169 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %170, %struct.TYPE_17__** %34, align 8
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @GET_BE_WORD(i32 %173)
  store i32 %174, i32* %37, align 4
  %175 = load i32, i32* %37, align 4
  %176 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %21, align 4
  %178 = load i32, i32* %25, align 4
  %179 = load i32, i32* %37, align 4
  %180 = sub nsw i32 %179, 1
  %181 = mul nsw i32 %178, %180
  %182 = add i32 %177, %181
  store i32 %182, i32* %36, align 4
  %183 = load i32, i32* %36, align 4
  %184 = load i32, i32* %22, align 4
  %185 = icmp uge i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %156
  br label %298

187:                                              ; preds = %156
  store i32 0, i32* %38, align 4
  br label %188

188:                                              ; preds = %218, %187
  %189 = load i32, i32* %38, align 4
  %190 = load i32, i32* %37, align 4
  %191 = sub nsw i32 %190, 1
  %192 = icmp slt i32 %189, %191
  br i1 %192, label %193, label %221

193:                                              ; preds = %188
  %194 = load i8*, i8** %33, align 8
  %195 = load i32*, i32** %20, align 8
  %196 = load i32, i32* %21, align 4
  %197 = load i32, i32* %25, align 4
  %198 = load i32, i32* %38, align 4
  %199 = add nsw i32 %198, 1
  %200 = mul nsw i32 %197, %199
  %201 = add i32 %196, %200
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %195, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @OT_get_glyph_class(i8* %194, i32 %204)
  store i32 %205, i32* %39, align 4
  %206 = load i32, i32* %39, align 4
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %38, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @GET_BE_WORD(i32 %213)
  %215 = icmp ne i32 %206, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %193
  br label %221

217:                                              ; preds = %193
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %38, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %38, align 4
  br label %188

221:                                              ; preds = %216, %188
  %222 = load i32, i32* %38, align 4
  %223 = load i32, i32* %37, align 4
  %224 = sub nsw i32 %223, 1
  %225 = icmp slt i32 %222, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %298

228:                                              ; preds = %221
  %229 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %37, align 4
  %234 = sub nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  %237 = bitcast i32* %236 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %237, %struct.TYPE_16__** %35, align 8
  store i32 0, i32* %38, align 4
  br label %238

238:                                              ; preds = %294, %228
  %239 = load i32, i32* %38, align 4
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @GET_BE_WORD(i32 %242)
  %244 = icmp slt i32 %239, %243
  br i1 %244, label %245, label %297

245:                                              ; preds = %238
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = load i32, i32* %38, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @GET_BE_WORD(i32 %253)
  store i32 %254, i32* %40, align 4
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %256, align 8
  %258 = load i32, i32* %38, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @GET_BE_WORD(i32 %262)
  store i32 %263, i32* %41, align 4
  %264 = load i32, i32* %21, align 4
  %265 = load i32, i32* %25, align 4
  %266 = load i32, i32* %41, align 4
  %267 = mul i32 %265, %266
  %268 = add i32 %264, %267
  store i32 %268, i32* %36, align 4
  %269 = load i32, i32* %36, align 4
  %270 = load i32, i32* %22, align 4
  %271 = icmp uge i32 %269, %270
  br i1 %271, label %272, label %277

272:                                              ; preds = %245
  %273 = load i32, i32* %41, align 4
  %274 = load i32, i32* %21, align 4
  %275 = load i32, i32* %25, align 4
  %276 = call i32 @WARN(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0), i32 %273, i32 %274, i32 %275)
  br label %294

277:                                              ; preds = %245
  %278 = load i32, i32* %38, align 4
  %279 = load i32, i32* %41, align 4
  %280 = load i32, i32* %40, align 4
  %281 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %278, i32 %279, i32 %280)
  %282 = load i32*, i32** %13, align 8
  %283 = load i32*, i32** %14, align 8
  %284 = load i32*, i32** %15, align 8
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %286 = load i32*, i32** %17, align 8
  %287 = load i32*, i32** %18, align 8
  %288 = load i32, i32* %40, align 4
  %289 = load i32*, i32** %20, align 8
  %290 = load i32, i32* %36, align 4
  %291 = load i32, i32* %22, align 4
  %292 = load i32*, i32** %23, align 8
  %293 = call i32 @GPOS_apply_lookup(i32* %282, i32* %283, i32* %284, %struct.TYPE_13__* %285, i32* %286, i32* %287, i32 %288, i32* %289, i32 %290, i32 %291, i32* %292)
  br label %294

294:                                              ; preds = %277, %272
  %295 = load i32, i32* %38, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %38, align 4
  br label %238

297:                                              ; preds = %238
  store i32 1, i32* %12, align 4
  br label %330

298:                                              ; preds = %226, %186
  %299 = load i32, i32* %29, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %29, align 4
  br label %152

301:                                              ; preds = %152
  br label %302

302:                                              ; preds = %301, %87
  %303 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %326

304:                                              ; preds = %81
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @GET_BE_WORD(i32 %307)
  %309 = icmp eq i32 %308, 3
  br i1 %309, label %310, label %317

310:                                              ; preds = %304
  %311 = load i32, i32* @GPOS_apply_ContextPos.once.12, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* @GPOS_apply_ContextPos.once.12, align 4
  %313 = icmp ne i32 %311, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %310
  %315 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  br label %316

316:                                              ; preds = %314, %310
  br label %326

317:                                              ; preds = %304
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @GET_BE_WORD(i32 %320)
  %322 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i32 %321)
  br label %323

323:                                              ; preds = %317
  br label %324

324:                                              ; preds = %323
  br label %325

325:                                              ; preds = %324
  br label %326

326:                                              ; preds = %325, %316, %302, %136, %80
  %327 = load i32, i32* %24, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %24, align 4
  br label %57

329:                                              ; preds = %57
  store i32 1, i32* %12, align 4
  br label %330

330:                                              ; preds = %329, %297
  %331 = load i32, i32* %12, align 4
  ret i32 %331
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @GET_BE_WORD(i32) #1

declare dso_local i64 @GPOS_get_subtable(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @GSUB_is_glyph_covered(i32*, i32) #1

declare dso_local i32 @OT_get_glyph_class(i8*, i32) #1

declare dso_local i32 @WARN(i8*, i32, i32, i32) #1

declare dso_local i32 @GPOS_apply_lookup(i32*, i32*, i32*, %struct.TYPE_13__*, i32*, i32*, i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
