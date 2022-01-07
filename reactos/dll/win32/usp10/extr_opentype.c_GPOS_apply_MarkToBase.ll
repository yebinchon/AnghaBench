; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GPOS_apply_MarkToBase.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GPOS_apply_MarkToBase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32* }

@.str = private unnamed_addr constant [44 x i8] c"MarkToBase Attachment Positioning Subtable\0A\00", align 1
@MarkGlyph = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Mark %x(%i) and base %x(%i)\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Mark index exceeded mark count\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Mark Class %i total classes %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Offset on base is %s design units\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Offset on mark is %s design units\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Resulting cumulative offset is %s design units\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Unhandled Mark To Base Format %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_20__*, %struct.TYPE_18__*, i32*, i32, i32, i32, %struct.TYPE_19__*)* @GPOS_apply_MarkToBase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GPOS_apply_MarkToBase(%struct.TYPE_17__* %0, %struct.TYPE_20__* %1, %struct.TYPE_18__* %2, i32* %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_19__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_25__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_22__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_23__*, align 8
  %30 = alloca %struct.TYPE_21__*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca %struct.TYPE_24__*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_19__, align 8
  %37 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %11, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.TYPE_19__* %7, %struct.TYPE_19__** %17, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %42, %8
  %49 = phi i1 [ false, %8 ], [ %47, %42 ]
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 -1, i32 1
  store i32 %51, i32* %19, align 4
  store i8* null, i8** %20, align 8
  store i32 -1, i32* %21, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %53, align 8
  %55 = icmp ne %struct.TYPE_25__* %54, null
  br i1 %55, label %56, label %76

56:                                               ; preds = %48
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %58, align 8
  store %struct.TYPE_25__* %59, %struct.TYPE_25__** %22, align 8
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @GET_BE_WORD(i32 %62)
  store i32 %63, i32* %23, align 4
  %64 = load i32, i32* %23, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %56
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %68, align 8
  %70 = bitcast %struct.TYPE_25__* %69 to i32*
  %71 = load i32, i32* %23, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = bitcast i32* %73 to i8*
  store i8* %74, i8** %20, align 8
  br label %75

75:                                               ; preds = %66, %56
  br label %76

76:                                               ; preds = %75, %48
  %77 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %18, align 4
  br label %78

78:                                               ; preds = %293, %76
  %79 = load i32, i32* %18, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @GET_BE_WORD(i32 %82)
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %85, label %296

85:                                               ; preds = %78
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %87 = load i32, i32* %18, align 4
  %88 = call i64 @GPOS_get_subtable(%struct.TYPE_20__* %86, i32 %87)
  %89 = inttoptr i64 %88 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %89, %struct.TYPE_22__** %24, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @GET_BE_WORD(i32 %92)
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %286

95:                                               ; preds = %85
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @GET_BE_WORD(i32 %98)
  store i32 %99, i32* %25, align 4
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %101 = bitcast %struct.TYPE_22__* %100 to i32*
  %102 = load i32, i32* %25, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32*, i32** %13, align 8
  %106 = load i32, i32* %14, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @GSUB_is_glyph_covered(i32* %104, i32 %109)
  store i32 %110, i32* %26, align 4
  %111 = load i32, i32* %26, align 4
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %113, label %285

113:                                              ; preds = %95
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %19, align 4
  %116 = sub i32 %114, %115
  store i32 %116, i32* %28, align 4
  %117 = load i8*, i8** %20, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %144

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %139, %119
  %121 = load i8*, i8** %20, align 8
  %122 = load i32*, i32** %13, align 8
  %123 = load i32, i32* %28, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @OT_get_glyph_class(i8* %121, i32 %126)
  %128 = load i64, i64* @MarkGlyph, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %120
  %131 = load i32, i32* %28, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i32, i32* %28, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp ult i32 %134, %135
  br label %137

137:                                              ; preds = %133, %130, %120
  %138 = phi i1 [ false, %130 ], [ false, %120 ], [ %136, %133 ]
  br i1 %138, label %139, label %143

139:                                              ; preds = %137
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* %28, align 4
  %142 = sub nsw i32 %141, %140
  store i32 %142, i32* %28, align 4
  br label %120

143:                                              ; preds = %137
  br label %144

144:                                              ; preds = %143, %113
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @GET_BE_WORD(i32 %147)
  store i32 %148, i32* %25, align 4
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %150 = bitcast %struct.TYPE_22__* %149 to i32*
  %151 = load i32, i32* %25, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32*, i32** %13, align 8
  %155 = load i32, i32* %28, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @GSUB_is_glyph_covered(i32* %153, i32 %158)
  store i32 %159, i32* %27, align 4
  %160 = load i32, i32* %27, align 4
  %161 = icmp ne i32 %160, -1
  br i1 %161, label %162, label %284

162:                                              ; preds = %144
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @GET_BE_WORD(i32 %165)
  store i32 %166, i32* %34, align 4
  %167 = load i32*, i32** %13, align 8
  %168 = load i32, i32* %14, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %26, align 4
  %173 = load i32*, i32** %13, align 8
  %174 = load i32, i32* %28, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %27, align 4
  %179 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %171, i32 %172, i32 %177, i32 %178)
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @GET_BE_WORD(i32 %182)
  store i32 %183, i32* %25, align 4
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %185 = bitcast %struct.TYPE_22__* %184 to i32*
  %186 = load i32, i32* %25, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = bitcast i32* %188 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %189, %struct.TYPE_23__** %29, align 8
  %190 = load i32, i32* %26, align 4
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @GET_BE_WORD(i32 %193)
  %195 = icmp sgt i32 %190, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %162
  %197 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %298

198:                                              ; preds = %162
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %200, align 8
  %202 = load i32, i32* %26, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i64 %203
  store %struct.TYPE_21__* %204, %struct.TYPE_21__** %30, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @GET_BE_WORD(i32 %207)
  store i32 %208, i32* %33, align 4
  %209 = load i32, i32* %33, align 4
  %210 = load i32, i32* %34, align 4
  %211 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %209, i32 %210)
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @GET_BE_WORD(i32 %214)
  store i32 %215, i32* %25, align 4
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %217 = bitcast %struct.TYPE_22__* %216 to i32*
  %218 = load i32, i32* %25, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32* %220, i32** %31, align 8
  %221 = load i32, i32* %34, align 4
  %222 = sext i32 %221 to i64
  %223 = mul i64 %222, 4
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %35, align 4
  %225 = load i32*, i32** %31, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 4
  %227 = load i32, i32* %35, align 4
  %228 = load i32, i32* %27, align 4
  %229 = mul nsw i32 %227, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %226, i64 %230
  %232 = bitcast i32* %231 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %232, %struct.TYPE_24__** %32, align 8
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %33, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @GET_BE_WORD(i32 %239)
  store i32 %240, i32* %25, align 4
  %241 = load i32*, i32** %31, align 8
  %242 = load i32, i32* %25, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %16, align 4
  %246 = call i32 @GPOS_get_anchor_values(i32* %244, %struct.TYPE_19__* %36, i32 %245)
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @GET_BE_WORD(i32 %249)
  store i32 %250, i32* %25, align 4
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %252 = bitcast %struct.TYPE_23__* %251 to i32*
  %253 = load i32, i32* %25, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %16, align 4
  %257 = call i32 @GPOS_get_anchor_values(i32* %255, %struct.TYPE_19__* %37, i32 %256)
  %258 = call i32 @wine_dbgstr_point(%struct.TYPE_19__* %36)
  %259 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %258)
  %260 = call i32 @wine_dbgstr_point(%struct.TYPE_19__* %37)
  %261 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %260)
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = sub nsw i64 %263, %265
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = add nsw i64 %269, %266
  store i64 %270, i64* %268, align 8
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = sub nsw i64 %272, %274
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %278, %275
  store i64 %279, i64* %277, align 8
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %281 = call i32 @wine_dbgstr_point(%struct.TYPE_19__* %280)
  %282 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %281)
  %283 = load i32, i32* %28, align 4
  store i32 %283, i32* %21, align 4
  br label %284

284:                                              ; preds = %198, %144
  br label %285

285:                                              ; preds = %284, %95
  br label %292

286:                                              ; preds = %85
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @GET_BE_WORD(i32 %289)
  %291 = call i32 @FIXME(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %290)
  br label %292

292:                                              ; preds = %286, %285
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %18, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %18, align 4
  br label %78

296:                                              ; preds = %78
  %297 = load i32, i32* %21, align 4
  store i32 %297, i32* %9, align 4
  br label %298

298:                                              ; preds = %296, %196
  %299 = load i32, i32* %9, align 4
  ret i32 %299
}

declare dso_local i32 @GET_BE_WORD(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @GPOS_get_subtable(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @GSUB_is_glyph_covered(i32*, i32) #1

declare dso_local i64 @OT_get_glyph_class(i8*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @GPOS_get_anchor_values(i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @wine_dbgstr_point(%struct.TYPE_19__*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
