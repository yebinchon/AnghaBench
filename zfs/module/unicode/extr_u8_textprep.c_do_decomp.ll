; ModuleID = '/home/carl/AnghaBench/zfs/module/unicode/extr_u8_textprep.c_do_decomp.c'
source_filename = "/home/carl/AnghaBench/zfs/module/unicode/extr_u8_textprep.c_do_decomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i8 }

@U8_HANGUL_SYL_FIRST = common dso_local global i64 0, align 8
@U8_HANGUL_JAMO_L_FIRST = common dso_local global i8 0, align 1
@U8_HANGUL_VT_COUNT = common dso_local global i8 0, align 1
@U8_HANGUL_JAMO_V_FIRST = common dso_local global i8 0, align 1
@U8_HANGUL_T_COUNT = common dso_local global i8 0, align 1
@U8_HANGUL_JAMO_T_FIRST = common dso_local global i64 0, align 8
@U8_STATE_HANGUL_LVT = common dso_local global i64 0, align 8
@U8_STATE_HANGUL_LV = common dso_local global i64 0, align 8
@U8_STATE_HANGUL_L = common dso_local global i64 0, align 8
@U8_STATE_HANGUL_V = common dso_local global i64 0, align 8
@U8_STATE_HANGUL_T = common dso_local global i64 0, align 8
@U8_STATE_START = common dso_local global i64 0, align 8
@u8_common_b1_tbl = common dso_local global i8** null, align 8
@U8_TBL_ELEMENT_NOT_DEF = common dso_local global i8 0, align 1
@u8_decomp_b2_tbl = common dso_local global i8*** null, align 8
@u8_decomp_b3_tbl = common dso_local global %struct.TYPE_2__*** null, align 8
@U8_16BIT_TABLE_INDICATOR = common dso_local global i8 0, align 1
@u8_decomp_b4_16bit_tbl = common dso_local global i64*** null, align 8
@u8_decomp_b4_tbl = common dso_local global i64*** null, align 8
@u8_decomp_final_tbl = common dso_local global i64** null, align 8
@U8_DECOMP_BOTH = common dso_local global i8 0, align 1
@U8_DECOMP_CANONICAL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*, i8*, i32, i64, i64*)* @do_decomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_decomp(i64 %0, i8* %1, i8* %2, i32 %3, i64 %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8, align 1
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %19, align 1
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %39

26:                                               ; preds = %6
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 %29, i8* %31, align 1
  store i8 %29, i8* %16, align 1
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8 %34, i8* %36, align 1
  store i8 %34, i8* %19, align 1
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8 0, i8* %38, align 1
  br label %211

39:                                               ; preds = %6
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %173

42:                                               ; preds = %39
  %43 = load i8, i8* %23, align 1
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @U8_PUT_3BYTES_INTO_UTF32(i8 signext %43, i8 signext %46, i8 signext %49, i8 signext %52)
  %54 = load i8, i8* %23, align 1
  %55 = call i64 @U8_HANGUL_SYLLABLE(i8 signext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %116

57:                                               ; preds = %42
  %58 = load i64, i64* @U8_HANGUL_SYL_FIRST, align 8
  %59 = load i8, i8* %23, align 1
  %60 = sext i8 %59 to i64
  %61 = sub nsw i64 %60, %58
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %23, align 1
  %63 = load i8, i8* @U8_HANGUL_JAMO_L_FIRST, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* %23, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8, i8* @U8_HANGUL_VT_COUNT, align 1
  %68 = sext i8 %67 to i32
  %69 = sdiv i32 %66, %68
  %70 = add nsw i32 %64, %69
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %14, align 1
  %72 = load i8, i8* @U8_HANGUL_JAMO_V_FIRST, align 1
  %73 = sext i8 %72 to i32
  %74 = load i8, i8* %23, align 1
  %75 = sext i8 %74 to i32
  %76 = load i8, i8* @U8_HANGUL_VT_COUNT, align 1
  %77 = sext i8 %76 to i32
  %78 = srem i32 %75, %77
  %79 = load i8, i8* @U8_HANGUL_T_COUNT, align 1
  %80 = sext i8 %79 to i32
  %81 = sdiv i32 %78, %80
  %82 = add nsw i32 %73, %81
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %15, align 1
  %84 = load i8, i8* %23, align 1
  %85 = sext i8 %84 to i32
  %86 = load i8, i8* @U8_HANGUL_T_COUNT, align 1
  %87 = sext i8 %86 to i32
  %88 = srem i32 %85, %87
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %16, align 1
  %90 = load i8*, i8** %9, align 8
  %91 = load i8, i8* %14, align 1
  %92 = call i32 @U8_SAVE_HANGUL_AS_UTF8(i8* %90, i32 0, i32 1, i32 2, i8 signext %91)
  %93 = load i8*, i8** %9, align 8
  %94 = load i8, i8* %15, align 1
  %95 = call i32 @U8_SAVE_HANGUL_AS_UTF8(i8* %93, i32 3, i32 4, i32 5, i8 signext %94)
  %96 = load i8, i8* %16, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %57
  %99 = load i64, i64* @U8_HANGUL_JAMO_T_FIRST, align 8
  %100 = load i8, i8* %16, align 1
  %101 = sext i8 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i8
  store i8 %103, i8* %16, align 1
  %104 = load i8*, i8** %9, align 8
  %105 = load i8, i8* %16, align 1
  %106 = call i32 @U8_SAVE_HANGUL_AS_UTF8(i8* %104, i32 6, i32 7, i32 8, i8 signext %105)
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 9
  store i8 0, i8* %108, align 1
  %109 = load i64, i64* @U8_STATE_HANGUL_LVT, align 8
  %110 = load i64*, i64** %13, align 8
  store i64 %109, i64* %110, align 8
  store i64 9, i64* %7, align 8
  br label %467

111:                                              ; preds = %57
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 6
  store i8 0, i8* %113, align 1
  %114 = load i64, i64* @U8_STATE_HANGUL_LV, align 8
  %115 = load i64*, i64** %13, align 8
  store i64 %114, i64* %115, align 8
  store i64 6, i64* %7, align 8
  br label %467

116:                                              ; preds = %42
  %117 = load i8*, i8** %10, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = load i8*, i8** %9, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 %119, i8* %121, align 1
  store i8 %119, i8* %15, align 1
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  store i8 %124, i8* %126, align 1
  store i8 %124, i8* %16, align 1
  %127 = load i8*, i8** %10, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 2
  %129 = load i8, i8* %128, align 1
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  store i8 %129, i8* %131, align 1
  store i8 %129, i8* %19, align 1
  %132 = load i8*, i8** %9, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 3
  store i8 0, i8* %133, align 1
  %134 = load i8, i8* %23, align 1
  %135 = call i64 @U8_HANGUL_JAMO_L(i8 signext %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %116
  %138 = load i64, i64* @U8_STATE_HANGUL_L, align 8
  %139 = load i64*, i64** %13, align 8
  store i64 %138, i64* %139, align 8
  store i64 3, i64* %7, align 8
  br label %467

140:                                              ; preds = %116
  %141 = load i8, i8* %23, align 1
  %142 = call i64 @U8_HANGUL_JAMO_V(i8 signext %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %140
  %145 = load i64*, i64** %13, align 8
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @U8_STATE_HANGUL_L, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i64, i64* @U8_STATE_HANGUL_LV, align 8
  %151 = load i64*, i64** %13, align 8
  store i64 %150, i64* %151, align 8
  br label %155

152:                                              ; preds = %144
  %153 = load i64, i64* @U8_STATE_HANGUL_V, align 8
  %154 = load i64*, i64** %13, align 8
  store i64 %153, i64* %154, align 8
  br label %155

155:                                              ; preds = %152, %149
  store i64 3, i64* %7, align 8
  br label %467

156:                                              ; preds = %140
  %157 = load i8, i8* %23, align 1
  %158 = call i64 @U8_HANGUL_JAMO_T(i8 signext %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %156
  %161 = load i64*, i64** %13, align 8
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @U8_STATE_HANGUL_LV, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i64, i64* @U8_STATE_HANGUL_LVT, align 8
  %167 = load i64*, i64** %13, align 8
  store i64 %166, i64* %167, align 8
  br label %171

168:                                              ; preds = %160
  %169 = load i64, i64* @U8_STATE_HANGUL_T, align 8
  %170 = load i64*, i64** %13, align 8
  store i64 %169, i64* %170, align 8
  br label %171

171:                                              ; preds = %168, %165
  store i64 3, i64* %7, align 8
  br label %467

172:                                              ; preds = %156
  br label %210

173:                                              ; preds = %39
  %174 = load i32, i32* %11, align 4
  %175 = icmp eq i32 %174, 4
  br i1 %175, label %176, label %199

176:                                              ; preds = %173
  %177 = load i8*, i8** %10, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  %179 = load i8, i8* %178, align 1
  %180 = load i8*, i8** %9, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 0
  store i8 %179, i8* %181, align 1
  store i8 %179, i8* %14, align 1
  %182 = load i8*, i8** %10, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  %184 = load i8, i8* %183, align 1
  %185 = load i8*, i8** %9, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  store i8 %184, i8* %186, align 1
  store i8 %184, i8* %15, align 1
  %187 = load i8*, i8** %10, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 2
  %189 = load i8, i8* %188, align 1
  %190 = load i8*, i8** %9, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 2
  store i8 %189, i8* %191, align 1
  store i8 %189, i8* %16, align 1
  %192 = load i8*, i8** %10, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 3
  %194 = load i8, i8* %193, align 1
  %195 = load i8*, i8** %9, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 3
  store i8 %194, i8* %196, align 1
  store i8 %194, i8* %19, align 1
  %197 = load i8*, i8** %9, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 4
  store i8 0, i8* %198, align 1
  br label %209

199:                                              ; preds = %173
  %200 = load i8*, i8** %10, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 0
  %202 = load i8, i8* %201, align 1
  %203 = load i8*, i8** %9, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 0
  store i8 %202, i8* %204, align 1
  %205 = load i8*, i8** %9, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 1
  store i8 0, i8* %206, align 1
  %207 = load i64, i64* @U8_STATE_START, align 8
  %208 = load i64*, i64** %13, align 8
  store i64 %207, i64* %208, align 8
  store i64 1, i64* %7, align 8
  br label %467

209:                                              ; preds = %176
  br label %210

210:                                              ; preds = %209, %172
  br label %211

211:                                              ; preds = %210, %26
  %212 = load i64, i64* @U8_STATE_START, align 8
  %213 = load i64*, i64** %13, align 8
  store i64 %212, i64* %213, align 8
  %214 = load i8**, i8*** @u8_common_b1_tbl, align 8
  %215 = load i64, i64* %8, align 8
  %216 = getelementptr inbounds i8*, i8** %214, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = load i8, i8* %14, align 1
  %219 = sext i8 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = load i8, i8* %220, align 1
  store i8 %221, i8* %14, align 1
  %222 = load i8, i8* %14, align 1
  %223 = sext i8 %222 to i32
  %224 = load i8, i8* @U8_TBL_ELEMENT_NOT_DEF, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %223, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %211
  %228 = load i32, i32* %11, align 4
  %229 = sext i32 %228 to i64
  store i64 %229, i64* %7, align 8
  br label %467

230:                                              ; preds = %211
  %231 = load i8***, i8**** @u8_decomp_b2_tbl, align 8
  %232 = load i64, i64* %8, align 8
  %233 = getelementptr inbounds i8**, i8*** %231, i64 %232
  %234 = load i8**, i8*** %233, align 8
  %235 = load i8, i8* %14, align 1
  %236 = sext i8 %235 to i64
  %237 = getelementptr inbounds i8*, i8** %234, i64 %236
  %238 = load i8*, i8** %237, align 8
  %239 = load i8, i8* %15, align 1
  %240 = sext i8 %239 to i64
  %241 = getelementptr inbounds i8, i8* %238, i64 %240
  %242 = load i8, i8* %241, align 1
  store i8 %242, i8* %15, align 1
  %243 = load i8, i8* %15, align 1
  %244 = sext i8 %243 to i32
  %245 = load i8, i8* @U8_TBL_ELEMENT_NOT_DEF, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp eq i32 %244, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %230
  %249 = load i32, i32* %11, align 4
  %250 = sext i32 %249 to i64
  store i64 %250, i64* %7, align 8
  br label %467

251:                                              ; preds = %230
  %252 = load %struct.TYPE_2__***, %struct.TYPE_2__**** @u8_decomp_b3_tbl, align 8
  %253 = load i64, i64* %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %252, i64 %253
  %255 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %254, align 8
  %256 = load i8, i8* %15, align 1
  %257 = sext i8 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %255, i64 %257
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %258, align 8
  %260 = load i8, i8* %16, align 1
  %261 = sext i8 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 0
  %264 = load i8, i8* %263, align 1
  store i8 %264, i8* %17, align 1
  %265 = load i8, i8* %17, align 1
  %266 = sext i8 %265 to i32
  %267 = load i8, i8* @U8_TBL_ELEMENT_NOT_DEF, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %266, %268
  br i1 %269, label %270, label %273

270:                                              ; preds = %251
  %271 = load i32, i32* %11, align 4
  %272 = sext i32 %271 to i64
  store i64 %272, i64* %7, align 8
  br label %467

273:                                              ; preds = %251
  %274 = load i8, i8* %17, align 1
  %275 = sext i8 %274 to i32
  %276 = load i8, i8* @U8_16BIT_TABLE_INDICATOR, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp sge i32 %275, %277
  br i1 %278, label %279, label %312

279:                                              ; preds = %273
  %280 = load i8, i8* @U8_16BIT_TABLE_INDICATOR, align 1
  %281 = sext i8 %280 to i32
  %282 = load i8, i8* %17, align 1
  %283 = sext i8 %282 to i32
  %284 = sub nsw i32 %283, %281
  %285 = trunc i32 %284 to i8
  store i8 %285, i8* %17, align 1
  %286 = load i64***, i64**** @u8_decomp_b4_16bit_tbl, align 8
  %287 = load i64, i64* %8, align 8
  %288 = getelementptr inbounds i64**, i64*** %286, i64 %287
  %289 = load i64**, i64*** %288, align 8
  %290 = load i8, i8* %17, align 1
  %291 = sext i8 %290 to i64
  %292 = getelementptr inbounds i64*, i64** %289, i64 %291
  %293 = load i64*, i64** %292, align 8
  %294 = load i8, i8* %19, align 1
  %295 = sext i8 %294 to i64
  %296 = getelementptr inbounds i64, i64* %293, i64 %295
  %297 = load i64, i64* %296, align 8
  store i64 %297, i64* %20, align 8
  %298 = load i64***, i64**** @u8_decomp_b4_16bit_tbl, align 8
  %299 = load i64, i64* %8, align 8
  %300 = getelementptr inbounds i64**, i64*** %298, i64 %299
  %301 = load i64**, i64*** %300, align 8
  %302 = load i8, i8* %17, align 1
  %303 = sext i8 %302 to i64
  %304 = getelementptr inbounds i64*, i64** %301, i64 %303
  %305 = load i64*, i64** %304, align 8
  %306 = load i8, i8* %19, align 1
  %307 = sext i8 %306 to i32
  %308 = add nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i64, i64* %305, i64 %309
  %311 = load i64, i64* %310, align 8
  store i64 %311, i64* %21, align 8
  br label %339

312:                                              ; preds = %273
  %313 = load i64***, i64**** @u8_decomp_b4_tbl, align 8
  %314 = load i64, i64* %8, align 8
  %315 = getelementptr inbounds i64**, i64*** %313, i64 %314
  %316 = load i64**, i64*** %315, align 8
  %317 = load i8, i8* %17, align 1
  %318 = sext i8 %317 to i64
  %319 = getelementptr inbounds i64*, i64** %316, i64 %318
  %320 = load i64*, i64** %319, align 8
  %321 = load i8, i8* %19, align 1
  %322 = sext i8 %321 to i64
  %323 = getelementptr inbounds i64, i64* %320, i64 %322
  %324 = load i64, i64* %323, align 8
  store i64 %324, i64* %20, align 8
  %325 = load i64***, i64**** @u8_decomp_b4_tbl, align 8
  %326 = load i64, i64* %8, align 8
  %327 = getelementptr inbounds i64**, i64*** %325, i64 %326
  %328 = load i64**, i64*** %327, align 8
  %329 = load i8, i8* %17, align 1
  %330 = sext i8 %329 to i64
  %331 = getelementptr inbounds i64*, i64** %328, i64 %330
  %332 = load i64*, i64** %331, align 8
  %333 = load i8, i8* %19, align 1
  %334 = sext i8 %333 to i32
  %335 = add nsw i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i64, i64* %332, i64 %336
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %21, align 8
  br label %339

339:                                              ; preds = %312, %279
  %340 = load i64, i64* %20, align 8
  %341 = load i64, i64* %21, align 8
  %342 = icmp uge i64 %340, %341
  br i1 %342, label %343, label %346

343:                                              ; preds = %339
  %344 = load i32, i32* %11, align 4
  %345 = sext i32 %344 to i64
  store i64 %345, i64* %7, align 8
  br label %467

346:                                              ; preds = %339
  %347 = load %struct.TYPE_2__***, %struct.TYPE_2__**** @u8_decomp_b3_tbl, align 8
  %348 = load i64, i64* %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %347, i64 %348
  %350 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %349, align 8
  %351 = load i8, i8* %15, align 1
  %352 = sext i8 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %350, i64 %352
  %354 = load %struct.TYPE_2__*, %struct.TYPE_2__** %353, align 8
  %355 = load i8, i8* %16, align 1
  %356 = sext i8 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i32 0, i32 1
  %359 = load i8, i8* %358, align 1
  store i8 %359, i8* %18, align 1
  %360 = load i64**, i64*** @u8_decomp_final_tbl, align 8
  %361 = load i64, i64* %8, align 8
  %362 = getelementptr inbounds i64*, i64** %360, i64 %361
  %363 = load i64*, i64** %362, align 8
  %364 = load i8, i8* %18, align 1
  %365 = sext i8 %364 to i64
  %366 = load i64, i64* %20, align 8
  %367 = add i64 %365, %366
  %368 = getelementptr inbounds i64, i64* %363, i64 %367
  %369 = load i64, i64* %368, align 8
  %370 = trunc i64 %369 to i8
  store i8 %370, i8* %14, align 1
  %371 = load i64, i64* %12, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %406

373:                                              ; preds = %346
  %374 = load i8, i8* %14, align 1
  %375 = sext i8 %374 to i32
  %376 = load i8, i8* @U8_DECOMP_BOTH, align 1
  %377 = sext i8 %376 to i32
  %378 = icmp slt i32 %375, %377
  br i1 %378, label %379, label %382

379:                                              ; preds = %373
  %380 = load i32, i32* %11, align 4
  %381 = sext i32 %380 to i64
  store i64 %381, i64* %7, align 8
  br label %467

382:                                              ; preds = %373
  %383 = load i64, i64* %20, align 8
  %384 = add i64 %383, 1
  store i64 %384, i64* %20, align 8
  %385 = load i8, i8* %14, align 1
  %386 = sext i8 %385 to i32
  %387 = load i8, i8* @U8_DECOMP_BOTH, align 1
  %388 = sext i8 %387 to i32
  %389 = icmp eq i32 %386, %388
  br i1 %389, label %390, label %405

390:                                              ; preds = %382
  %391 = load i64, i64* %20, align 8
  %392 = load i64**, i64*** @u8_decomp_final_tbl, align 8
  %393 = load i64, i64* %8, align 8
  %394 = getelementptr inbounds i64*, i64** %392, i64 %393
  %395 = load i64*, i64** %394, align 8
  %396 = load i8, i8* %18, align 1
  %397 = sext i8 %396 to i64
  %398 = load i64, i64* %20, align 8
  %399 = add i64 %397, %398
  %400 = getelementptr inbounds i64, i64* %395, i64 %399
  %401 = load i64, i64* %400, align 8
  %402 = add i64 %391, %401
  store i64 %402, i64* %21, align 8
  %403 = load i64, i64* %20, align 8
  %404 = add i64 %403, 1
  store i64 %404, i64* %20, align 8
  br label %405

405:                                              ; preds = %390, %382
  br label %438

406:                                              ; preds = %346
  %407 = load i8, i8* %14, align 1
  %408 = sext i8 %407 to i32
  %409 = load i8, i8* @U8_DECOMP_BOTH, align 1
  %410 = sext i8 %409 to i32
  %411 = icmp eq i32 %408, %410
  br i1 %411, label %412, label %427

412:                                              ; preds = %406
  %413 = load i64, i64* %20, align 8
  %414 = add i64 %413, 1
  store i64 %414, i64* %20, align 8
  %415 = load i64**, i64*** @u8_decomp_final_tbl, align 8
  %416 = load i64, i64* %8, align 8
  %417 = getelementptr inbounds i64*, i64** %415, i64 %416
  %418 = load i64*, i64** %417, align 8
  %419 = load i8, i8* %18, align 1
  %420 = sext i8 %419 to i64
  %421 = load i64, i64* %20, align 8
  %422 = add i64 %420, %421
  %423 = getelementptr inbounds i64, i64* %418, i64 %422
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* %20, align 8
  %426 = add i64 %425, %424
  store i64 %426, i64* %20, align 8
  br label %437

427:                                              ; preds = %406
  %428 = load i8, i8* %14, align 1
  %429 = sext i8 %428 to i32
  %430 = load i8, i8* @U8_DECOMP_CANONICAL, align 1
  %431 = sext i8 %430 to i32
  %432 = icmp eq i32 %429, %431
  br i1 %432, label %433, label %436

433:                                              ; preds = %427
  %434 = load i64, i64* %20, align 8
  %435 = add i64 %434, 1
  store i64 %435, i64* %20, align 8
  br label %436

436:                                              ; preds = %433, %427
  br label %437

437:                                              ; preds = %436, %412
  br label %438

438:                                              ; preds = %437, %405
  store i64 0, i64* %22, align 8
  br label %439

439:                                              ; preds = %459, %438
  %440 = load i64, i64* %20, align 8
  %441 = load i64, i64* %21, align 8
  %442 = icmp ult i64 %440, %441
  br i1 %442, label %443, label %462

443:                                              ; preds = %439
  %444 = load i64**, i64*** @u8_decomp_final_tbl, align 8
  %445 = load i64, i64* %8, align 8
  %446 = getelementptr inbounds i64*, i64** %444, i64 %445
  %447 = load i64*, i64** %446, align 8
  %448 = load i8, i8* %18, align 1
  %449 = sext i8 %448 to i64
  %450 = load i64, i64* %20, align 8
  %451 = add i64 %449, %450
  %452 = getelementptr inbounds i64, i64* %447, i64 %451
  %453 = load i64, i64* %452, align 8
  %454 = trunc i64 %453 to i8
  %455 = load i8*, i8** %9, align 8
  %456 = load i64, i64* %22, align 8
  %457 = add i64 %456, 1
  store i64 %457, i64* %22, align 8
  %458 = getelementptr inbounds i8, i8* %455, i64 %456
  store i8 %454, i8* %458, align 1
  br label %459

459:                                              ; preds = %443
  %460 = load i64, i64* %20, align 8
  %461 = add i64 %460, 1
  store i64 %461, i64* %20, align 8
  br label %439

462:                                              ; preds = %439
  %463 = load i8*, i8** %9, align 8
  %464 = load i64, i64* %22, align 8
  %465 = getelementptr inbounds i8, i8* %463, i64 %464
  store i8 0, i8* %465, align 1
  %466 = load i64, i64* %22, align 8
  store i64 %466, i64* %7, align 8
  br label %467

467:                                              ; preds = %462, %379, %343, %270, %248, %227, %199, %171, %155, %137, %111, %98
  %468 = load i64, i64* %7, align 8
  ret i64 %468
}

declare dso_local i32 @U8_PUT_3BYTES_INTO_UTF32(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @U8_HANGUL_SYLLABLE(i8 signext) #1

declare dso_local i32 @U8_SAVE_HANGUL_AS_UTF8(i8*, i32, i32, i32, i8 signext) #1

declare dso_local i64 @U8_HANGUL_JAMO_L(i8 signext) #1

declare dso_local i64 @U8_HANGUL_JAMO_V(i8 signext) #1

declare dso_local i64 @U8_HANGUL_JAMO_T(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
