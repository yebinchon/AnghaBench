; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GSUB_apply_ContextSubst.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GSUB_apply_ContextSubst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32*, i32 }
%struct.TYPE_21__ = type { i32*, i32 }
%struct.TYPE_20__ = type { i32, i32*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32*, i32, i32 }
%struct.TYPE_22__ = type { i32*, i32 }
%struct.TYPE_24__ = type { i32, i32*, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Context Substitution Subtable\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Context Substitution Subtable: Class 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"  Coverage index %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"  SubRuleSet has %i members\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"   SubRule has %i glyphs\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"   Rule does not match\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"   Rule matches\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"Invalid sequence index %u (glyph index %u, write dir %d).\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"   SUBST: %u -> %u %u.\0A\00", align 1
@GSUB_E_NOGLYPH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"   Chain failed to generate a glyph\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Context Substitution Subtable: Class 2\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"  No class rule table for class %i\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"  SubClassSet has %i members\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"   SubClassRule has %i glyphs classes\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Unhandled Context Substitution Format %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_18__*, i32*, i64, i64, i64*)* @GSUB_apply_ContextSubst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GSUB_apply_ContextSubst(i32* %0, %struct.TYPE_18__* %1, i32* %2, i64 %3, i64 %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_21__*, align 8
  %21 = alloca %struct.TYPE_20__*, align 8
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_14__*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_22__*, align 8
  %37 = alloca %struct.TYPE_24__*, align 8
  %38 = alloca %struct.TYPE_23__*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %46 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %509, %6
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @GET_BE_WORD(i32 %51)
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %512

54:                                               ; preds = %47
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call i64 @GSUB_get_subtable(%struct.TYPE_18__* %55, i32 %56)
  %58 = inttoptr i64 %57 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %15, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @GET_BE_WORD(i32 %61)
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %266

64:                                               ; preds = %54
  %65 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @GET_BE_WORD(i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %71 = bitcast %struct.TYPE_15__* %70 to i32*
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32*, i32** %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @GSUB_is_glyph_covered(i32* %74, i32 %78)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %265

84:                                               ; preds = %64
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @GET_BE_WORD(i32 %91)
  store i32 %92, i32* %16, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %94 = bitcast %struct.TYPE_15__* %93 to i32*
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = bitcast i32* %97 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %98, %struct.TYPE_21__** %20, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @GET_BE_WORD(i32 %101)
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %19, align 4
  %104 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  store i32 0, i32* %18, align 4
  br label %105

105:                                              ; preds = %261, %84
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %19, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %264

109:                                              ; preds = %105
  %110 = load i64, i64* %11, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %26, align 4
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @GET_BE_WORD(i32 %118)
  store i32 %119, i32* %16, align 4
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %121 = bitcast %struct.TYPE_21__* %120 to i32*
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = bitcast i32* %124 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %125, %struct.TYPE_20__** %21, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @GET_BE_WORD(i32 %128)
  store i32 %129, i32* %24, align 4
  %130 = load i32, i32* %24, align 4
  %131 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* %12, align 8
  %134 = load i32, i32* %24, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = mul i64 %133, %136
  %138 = add i64 %132, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %23, align 4
  %140 = load i32, i32* %23, align 4
  %141 = zext i32 %140 to i64
  %142 = load i64*, i64** %13, align 8
  %143 = load i64, i64* %142, align 8
  %144 = icmp uge i64 %141, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %109
  br label %261

146:                                              ; preds = %109
  store i32 0, i32* %25, align 4
  br label %147

147:                                              ; preds = %174, %146
  %148 = load i32, i32* %25, align 4
  %149 = load i32, i32* %24, align 4
  %150 = sub nsw i32 %149, 1
  %151 = icmp slt i32 %148, %150
  br i1 %151, label %152, label %177

152:                                              ; preds = %147
  %153 = load i32*, i32** %10, align 8
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* %12, align 8
  %156 = load i32, i32* %25, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = mul i64 %155, %158
  %160 = add i64 %154, %159
  %161 = getelementptr inbounds i32, i32* %153, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %25, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @GET_BE_WORD(i32 %169)
  %171 = icmp ne i32 %162, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %152
  br label %177

173:                                              ; preds = %152
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %25, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %25, align 4
  br label %147

177:                                              ; preds = %172, %147
  %178 = load i32, i32* %25, align 4
  %179 = load i32, i32* %24, align 4
  %180 = sub nsw i32 %179, 1
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %261

184:                                              ; preds = %177
  %185 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %24, align 4
  %190 = sub nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  %193 = bitcast i32* %192 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %193, %struct.TYPE_19__** %22, align 8
  store i32 0, i32* %25, align 4
  br label %194

194:                                              ; preds = %255, %184
  %195 = load i32, i32* %25, align 4
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @GET_BE_WORD(i32 %198)
  %200 = icmp slt i32 %195, %199
  br i1 %200, label %201, label %258

201:                                              ; preds = %194
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %203, align 8
  %205 = load i32, i32* %25, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @GET_BE_WORD(i32 %209)
  store i32 %210, i32* %27, align 4
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %212, align 8
  %214 = load i32, i32* %25, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @GET_BE_WORD(i32 %218)
  store i32 %219, i32* %28, align 4
  %220 = load i64, i64* %11, align 8
  %221 = load i64, i64* %12, align 8
  %222 = load i32, i32* %28, align 4
  %223 = zext i32 %222 to i64
  %224 = mul i64 %221, %223
  %225 = add i64 %220, %224
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %23, align 4
  %227 = load i32, i32* %23, align 4
  %228 = zext i32 %227 to i64
  %229 = load i64*, i64** %13, align 8
  %230 = load i64, i64* %229, align 8
  %231 = icmp uge i64 %228, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %201
  %233 = load i32, i32* %28, align 4
  %234 = load i64, i64* %11, align 8
  %235 = load i64, i64* %12, align 8
  %236 = call i32 @WARN(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %233, i64 %234, i64 %235)
  br label %255

237:                                              ; preds = %201
  %238 = load i32, i32* %25, align 4
  %239 = load i32, i32* %28, align 4
  %240 = load i32, i32* %27, align 4
  %241 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %238, i32 %239, i32 %240)
  %242 = load i32*, i32** %8, align 8
  %243 = load i32, i32* %27, align 4
  %244 = load i32*, i32** %10, align 8
  %245 = load i32, i32* %23, align 4
  %246 = load i64, i64* %12, align 8
  %247 = load i64*, i64** %13, align 8
  %248 = call i32 @GSUB_apply_lookup(i32* %242, i32 %243, i32* %244, i32 %245, i64 %246, i64* %247)
  store i32 %248, i32* %26, align 4
  %249 = load i32, i32* %26, align 4
  %250 = load i32, i32* @GSUB_E_NOGLYPH, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %254

252:                                              ; preds = %237
  %253 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %255

254:                                              ; preds = %237
  br label %255

255:                                              ; preds = %254, %252, %232
  %256 = load i32, i32* %25, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %25, align 4
  br label %194

258:                                              ; preds = %194
  %259 = load i32, i32* %26, align 4
  %260 = sext i32 %259 to i64
  store i64 %260, i64* %7, align 8
  br label %515

261:                                              ; preds = %182, %145
  %262 = load i32, i32* %18, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %18, align 4
  br label %105

264:                                              ; preds = %105
  br label %265

265:                                              ; preds = %264, %64
  br label %508

266:                                              ; preds = %54
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @GET_BE_WORD(i32 %269)
  %271 = icmp eq i32 %270, 2
  br i1 %271, label %272, label %501

272:                                              ; preds = %266
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %274 = bitcast %struct.TYPE_15__* %273 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %274, %struct.TYPE_14__** %29, align 8
  %275 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @GET_BE_WORD(i32 %278)
  store i32 %279, i32* %31, align 4
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %281 = bitcast %struct.TYPE_14__* %280 to i32*
  %282 = load i32, i32* %31, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32*, i32** %10, align 8
  %286 = load i64, i64* %11, align 8
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @GSUB_is_glyph_covered(i32* %284, i32 %288)
  store i32 %289, i32* %32, align 4
  %290 = load i32, i32* %32, align 4
  %291 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %290)
  %292 = load i32, i32* %32, align 4
  %293 = icmp ne i32 %292, -1
  br i1 %293, label %294, label %500

294:                                              ; preds = %272
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @GET_BE_WORD(i32 %297)
  store i32 %298, i32* %31, align 4
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %300 = bitcast %struct.TYPE_14__* %299 to i32*
  %301 = load i32, i32* %31, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = bitcast i32* %303 to i8*
  store i8* %304, i8** %30, align 8
  %305 = load i8*, i8** %30, align 8
  %306 = load i32*, i32** %10, align 8
  %307 = load i64, i64* %11, align 8
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @OT_get_glyph_class(i8* %305, i32 %309)
  store i32 %310, i32* %35, align 4
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %35, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @GET_BE_WORD(i32 %317)
  store i32 %318, i32* %31, align 4
  %319 = load i32, i32* %31, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %294
  %322 = load i32, i32* %35, align 4
  %323 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %322)
  br label %509

324:                                              ; preds = %294
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %326 = bitcast %struct.TYPE_14__* %325 to i32*
  %327 = load i32, i32* %31, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = bitcast i32* %329 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %330, %struct.TYPE_22__** %36, align 8
  %331 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %332 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @GET_BE_WORD(i32 %333)
  store i32 %334, i32* %34, align 4
  %335 = load i32, i32* %34, align 4
  %336 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %335)
  store i32 0, i32* %33, align 4
  br label %337

337:                                              ; preds = %496, %324
  %338 = load i32, i32* %33, align 4
  %339 = load i32, i32* %34, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %499

341:                                              ; preds = %337
  %342 = load i64, i64* %11, align 8
  %343 = trunc i64 %342 to i32
  store i32 %343, i32* %42, align 4
  %344 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 0
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* %33, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @GET_BE_WORD(i32 %350)
  store i32 %351, i32* %31, align 4
  %352 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %353 = bitcast %struct.TYPE_22__* %352 to i32*
  %354 = load i32, i32* %31, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %353, i64 %355
  %357 = bitcast i32* %356 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %357, %struct.TYPE_24__** %37, align 8
  %358 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @GET_BE_WORD(i32 %360)
  store i32 %361, i32* %40, align 4
  %362 = load i32, i32* %40, align 4
  %363 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i32 %362)
  %364 = load i64, i64* %11, align 8
  %365 = load i64, i64* %12, align 8
  %366 = load i32, i32* %40, align 4
  %367 = sub nsw i32 %366, 1
  %368 = sext i32 %367 to i64
  %369 = mul i64 %365, %368
  %370 = add i64 %364, %369
  %371 = trunc i64 %370 to i32
  store i32 %371, i32* %39, align 4
  %372 = load i32, i32* %39, align 4
  %373 = zext i32 %372 to i64
  %374 = load i64*, i64** %13, align 8
  %375 = load i64, i64* %374, align 8
  %376 = icmp uge i64 %373, %375
  br i1 %376, label %377, label %378

377:                                              ; preds = %341
  br label %496

378:                                              ; preds = %341
  store i32 0, i32* %41, align 4
  br label %379

379:                                              ; preds = %409, %378
  %380 = load i32, i32* %41, align 4
  %381 = load i32, i32* %40, align 4
  %382 = sub nsw i32 %381, 1
  %383 = icmp slt i32 %380, %382
  br i1 %383, label %384, label %412

384:                                              ; preds = %379
  %385 = load i8*, i8** %30, align 8
  %386 = load i32*, i32** %10, align 8
  %387 = load i64, i64* %11, align 8
  %388 = load i64, i64* %12, align 8
  %389 = load i32, i32* %41, align 4
  %390 = add nsw i32 %389, 1
  %391 = sext i32 %390 to i64
  %392 = mul i64 %388, %391
  %393 = add i64 %387, %392
  %394 = getelementptr inbounds i32, i32* %386, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @OT_get_glyph_class(i8* %385, i32 %395)
  store i32 %396, i32* %43, align 4
  %397 = load i32, i32* %43, align 4
  %398 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %399 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %398, i32 0, i32 1
  %400 = load i32*, i32** %399, align 8
  %401 = load i32, i32* %41, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %400, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = call i32 @GET_BE_WORD(i32 %404)
  %406 = icmp ne i32 %397, %405
  br i1 %406, label %407, label %408

407:                                              ; preds = %384
  br label %412

408:                                              ; preds = %384
  br label %409

409:                                              ; preds = %408
  %410 = load i32, i32* %41, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %41, align 4
  br label %379

412:                                              ; preds = %407, %379
  %413 = load i32, i32* %41, align 4
  %414 = load i32, i32* %40, align 4
  %415 = sub nsw i32 %414, 1
  %416 = icmp slt i32 %413, %415
  br i1 %416, label %417, label %419

417:                                              ; preds = %412
  %418 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %496

419:                                              ; preds = %412
  %420 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %421 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %422 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %421, i32 0, i32 1
  %423 = load i32*, i32** %422, align 8
  %424 = load i32, i32* %40, align 4
  %425 = sub nsw i32 %424, 1
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %423, i64 %426
  %428 = bitcast i32* %427 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %428, %struct.TYPE_23__** %38, align 8
  store i32 0, i32* %41, align 4
  br label %429

429:                                              ; preds = %490, %419
  %430 = load i32, i32* %41, align 4
  %431 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %432 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = call i32 @GET_BE_WORD(i32 %433)
  %435 = icmp slt i32 %430, %434
  br i1 %435, label %436, label %493

436:                                              ; preds = %429
  %437 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %438 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %437, i32 0, i32 0
  %439 = load %struct.TYPE_16__*, %struct.TYPE_16__** %438, align 8
  %440 = load i32, i32* %41, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %439, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @GET_BE_WORD(i32 %444)
  store i32 %445, i32* %44, align 4
  %446 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %447 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %446, i32 0, i32 0
  %448 = load %struct.TYPE_16__*, %struct.TYPE_16__** %447, align 8
  %449 = load i32, i32* %41, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %448, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @GET_BE_WORD(i32 %453)
  store i32 %454, i32* %45, align 4
  %455 = load i64, i64* %11, align 8
  %456 = load i64, i64* %12, align 8
  %457 = load i32, i32* %45, align 4
  %458 = zext i32 %457 to i64
  %459 = mul i64 %456, %458
  %460 = add i64 %455, %459
  %461 = trunc i64 %460 to i32
  store i32 %461, i32* %39, align 4
  %462 = load i32, i32* %39, align 4
  %463 = zext i32 %462 to i64
  %464 = load i64*, i64** %13, align 8
  %465 = load i64, i64* %464, align 8
  %466 = icmp uge i64 %463, %465
  br i1 %466, label %467, label %472

467:                                              ; preds = %436
  %468 = load i32, i32* %45, align 4
  %469 = load i64, i64* %11, align 8
  %470 = load i64, i64* %12, align 8
  %471 = call i32 @WARN(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %468, i64 %469, i64 %470)
  br label %490

472:                                              ; preds = %436
  %473 = load i32, i32* %41, align 4
  %474 = load i32, i32* %45, align 4
  %475 = load i32, i32* %44, align 4
  %476 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %473, i32 %474, i32 %475)
  %477 = load i32*, i32** %8, align 8
  %478 = load i32, i32* %44, align 4
  %479 = load i32*, i32** %10, align 8
  %480 = load i32, i32* %39, align 4
  %481 = load i64, i64* %12, align 8
  %482 = load i64*, i64** %13, align 8
  %483 = call i32 @GSUB_apply_lookup(i32* %477, i32 %478, i32* %479, i32 %480, i64 %481, i64* %482)
  store i32 %483, i32* %42, align 4
  %484 = load i32, i32* %42, align 4
  %485 = load i32, i32* @GSUB_E_NOGLYPH, align 4
  %486 = icmp eq i32 %484, %485
  br i1 %486, label %487, label %489

487:                                              ; preds = %472
  %488 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %490

489:                                              ; preds = %472
  br label %490

490:                                              ; preds = %489, %487, %467
  %491 = load i32, i32* %41, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %41, align 4
  br label %429

493:                                              ; preds = %429
  %494 = load i32, i32* %42, align 4
  %495 = sext i32 %494 to i64
  store i64 %495, i64* %7, align 8
  br label %515

496:                                              ; preds = %417, %377
  %497 = load i32, i32* %33, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %33, align 4
  br label %337

499:                                              ; preds = %337
  br label %500

500:                                              ; preds = %499, %272
  br label %507

501:                                              ; preds = %266
  %502 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %503 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = call i32 @GET_BE_WORD(i32 %504)
  %506 = call i32 @FIXME(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i32 %505)
  br label %507

507:                                              ; preds = %501, %500
  br label %508

508:                                              ; preds = %507, %265
  br label %509

509:                                              ; preds = %508, %321
  %510 = load i32, i32* %14, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %14, align 4
  br label %47

512:                                              ; preds = %47
  %513 = load i32, i32* @GSUB_E_NOGLYPH, align 4
  %514 = sext i32 %513 to i64
  store i64 %514, i64* %7, align 8
  br label %515

515:                                              ; preds = %512, %493, %258
  %516 = load i64, i64* %7, align 8
  ret i64 %516
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @GET_BE_WORD(i32) #1

declare dso_local i64 @GSUB_get_subtable(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @GSUB_is_glyph_covered(i32*, i32) #1

declare dso_local i32 @WARN(i8*, i32, i64, i64) #1

declare dso_local i32 @GSUB_apply_lookup(i32*, i32, i32*, i32, i64, i64*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @OT_get_glyph_class(i8*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
