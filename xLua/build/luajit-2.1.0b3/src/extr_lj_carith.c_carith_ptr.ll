; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_carith.c_carith_ptr.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_carith.c_carith_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32**, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i32 }

@MM_sub = common dso_local global i64 0, align 8
@MM_eq = common dso_local global i64 0, align 8
@MM_lt = common dso_local global i64 0, align 8
@MM_le = common dso_local global i64 0, align 8
@CCF_IGNQUAL = common dso_local global i32 0, align 4
@CTSIZE_INVALID = common dso_local global i64 0, align 8
@MM_add = common dso_local global i64 0, align 8
@CTID_INT_PSZ = common dso_local global i32 0, align 4
@CT_PTR = common dso_local global i32 0, align 4
@CTALIGN_PTR = common dso_local global i32 0, align 4
@CTSIZE_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, %struct.TYPE_13__*, i64)* @carith_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carith_ptr(%struct.TYPE_11__* %0, i32* %1, %struct.TYPE_13__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %20, i64 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %10, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %11, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ctype_isptr(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ctype_isrefarray(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %214

39:                                               ; preds = %33, %4
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @MM_sub, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @MM_eq, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @MM_lt, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @MM_le, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %171

55:                                               ; preds = %51, %47, %43, %39
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %58, i64 1
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ctype_isptr(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %55
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %68, i64 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @ctype_isrefarray(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %171

75:                                               ; preds = %65, %55
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 1
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %16, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @MM_eq, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %75
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %87, 1
  %89 = load i32*, i32** %11, align 8
  %90 = load i32*, i32** %16, align 8
  %91 = icmp eq i32* %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @setboolV(i64 %88, i32 %92)
  store i32 1, i32* %5, align 4
  br label %318

94:                                               ; preds = %75
  %95 = load i32*, i32** %7, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %99, i64 1
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = load i32, i32* @CCF_IGNQUAL, align 4
  %103 = call i32 @lj_cconv_compatptr(i32* %95, %struct.TYPE_12__* %96, %struct.TYPE_12__* %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %94
  store i32 0, i32* %5, align 4
  br label %318

106:                                              ; preds = %94
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* @MM_sub, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %138

110:                                              ; preds = %106
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ctype_cid(i32 %114)
  %116 = call i64 @lj_ctype_size(i32* %111, i32 %115)
  store i64 %116, i64* %13, align 8
  %117 = load i64, i64* %13, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %110
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* @CTSIZE_INVALID, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119, %110
  store i32 0, i32* %5, align 4
  br label %318

124:                                              ; preds = %119
  %125 = load i32*, i32** %11, align 8
  %126 = ptrtoint i32* %125 to i64
  %127 = load i32*, i32** %16, align 8
  %128 = ptrtoint i32* %127 to i64
  %129 = sub nsw i64 %126, %128
  %130 = load i64, i64* %13, align 8
  %131 = sdiv i64 %129, %130
  store i64 %131, i64* %17, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = sub nsw i64 %134, 1
  %136 = load i64, i64* %17, align 8
  %137 = call i32 @setintptrV(i64 %135, i64 %136)
  store i32 1, i32* %5, align 4
  br label %318

138:                                              ; preds = %106
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* @MM_lt, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %138
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %145, 1
  %147 = load i32*, i32** %11, align 8
  %148 = ptrtoint i32* %147 to i64
  %149 = load i32*, i32** %16, align 8
  %150 = ptrtoint i32* %149 to i64
  %151 = icmp ult i64 %148, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @setboolV(i64 %146, i32 %152)
  store i32 1, i32* %5, align 4
  br label %318

154:                                              ; preds = %138
  %155 = load i64, i64* %9, align 8
  %156 = load i64, i64* @MM_le, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @lua_assert(i32 %158)
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %162, 1
  %164 = load i32*, i32** %11, align 8
  %165 = ptrtoint i32* %164 to i64
  %166 = load i32*, i32** %16, align 8
  %167 = ptrtoint i32* %166 to i64
  %168 = icmp ule i64 %165, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @setboolV(i64 %163, i32 %169)
  store i32 1, i32* %5, align 4
  br label %318

171:                                              ; preds = %65, %51
  %172 = load i64, i64* %9, align 8
  %173 = load i64, i64* @MM_add, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load i64, i64* %9, align 8
  %177 = load i64, i64* @MM_sub, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %189

179:                                              ; preds = %175, %171
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %182, i64 1
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @ctype_isnum(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %179, %175
  store i32 0, i32* %5, align 4
  br label %318

190:                                              ; preds = %179
  %191 = load i32*, i32** %7, align 8
  %192 = load i32*, i32** %7, align 8
  %193 = load i32, i32* @CTID_INT_PSZ, align 4
  %194 = call i32 @ctype_get(i32* %192, i32 %193)
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %197, i64 1
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  %200 = bitcast i64* %12 to i32*
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i32**, i32*** %202, align 8
  %204 = getelementptr inbounds i32*, i32** %203, i64 1
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @lj_cconv_ct_ct(i32* %191, i32 %194, %struct.TYPE_12__* %199, i32* %200, i32* %205, i32 0)
  %207 = load i64, i64* %9, align 8
  %208 = load i64, i64* @MM_sub, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %190
  %211 = load i64, i64* %12, align 8
  %212 = sub nsw i64 0, %211
  store i64 %212, i64* %12, align 8
  br label %213

213:                                              ; preds = %210, %190
  br label %273

214:                                              ; preds = %33
  %215 = load i64, i64* %9, align 8
  %216 = load i64, i64* @MM_add, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %271

218:                                              ; preds = %214
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i64 @ctype_isnum(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %271

224:                                              ; preds = %218
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %227, i64 1
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i64 @ctype_isptr(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %244, label %234

234:                                              ; preds = %224
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %237, i64 1
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i64 @ctype_isrefarray(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %271

244:                                              ; preds = %234, %224
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %247, i64 1
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %248, align 8
  store %struct.TYPE_12__* %249, %struct.TYPE_12__** %10, align 8
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  %252 = load i32**, i32*** %251, align 8
  %253 = getelementptr inbounds i32*, i32** %252, i64 1
  %254 = load i32*, i32** %253, align 8
  store i32* %254, i32** %11, align 8
  %255 = load i32*, i32** %7, align 8
  %256 = load i32*, i32** %7, align 8
  %257 = load i32, i32* @CTID_INT_PSZ, align 4
  %258 = call i32 @ctype_get(i32* %256, i32 %257)
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %261, i64 0
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %262, align 8
  %264 = bitcast i64* %12 to i32*
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  %267 = load i32**, i32*** %266, align 8
  %268 = getelementptr inbounds i32*, i32** %267, i64 0
  %269 = load i32*, i32** %268, align 8
  %270 = call i32 @lj_cconv_ct_ct(i32* %255, i32 %258, %struct.TYPE_12__* %263, i32* %264, i32* %269, i32 0)
  br label %272

271:                                              ; preds = %234, %218, %214
  store i32 0, i32* %5, align 4
  br label %318

272:                                              ; preds = %244
  br label %273

273:                                              ; preds = %272, %213
  %274 = load i32*, i32** %7, align 8
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @ctype_cid(i32 %277)
  %279 = call i64 @lj_ctype_size(i32* %274, i32 %278)
  store i64 %279, i64* %13, align 8
  %280 = load i64, i64* %13, align 8
  %281 = load i64, i64* @CTSIZE_INVALID, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %273
  store i32 0, i32* %5, align 4
  br label %318

284:                                              ; preds = %273
  %285 = load i64, i64* %12, align 8
  %286 = load i64, i64* %13, align 8
  %287 = mul nsw i64 %285, %286
  %288 = load i32*, i32** %11, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 %287
  store i32* %289, i32** %11, align 8
  %290 = load i32*, i32** %7, align 8
  %291 = load i32, i32* @CT_PTR, align 4
  %292 = load i32, i32* @CTALIGN_PTR, align 4
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @ctype_cid(i32 %295)
  %297 = or i32 %292, %296
  %298 = call i32 @CTINFO(i32 %291, i32 %297)
  %299 = load i32, i32* @CTSIZE_PTR, align 4
  %300 = call i32 @lj_ctype_intern(i32* %290, i32 %298, i32 %299)
  store i32 %300, i32* %14, align 4
  %301 = load i32*, i32** %7, align 8
  %302 = load i32, i32* %14, align 4
  %303 = load i32, i32* @CTSIZE_PTR, align 4
  %304 = call i32* @lj_cdata_new(i32* %301, i32 %302, i32 %303)
  store i32* %304, i32** %15, align 8
  %305 = load i32*, i32** %11, align 8
  %306 = load i32*, i32** %15, align 8
  %307 = call i64 @cdataptr(i32* %306)
  %308 = inttoptr i64 %307 to i32**
  store i32* %305, i32** %308, align 8
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = sub nsw i64 %312, 1
  %314 = load i32*, i32** %15, align 8
  %315 = call i32 @setcdataV(%struct.TYPE_11__* %309, i64 %313, i32* %314)
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %317 = call i32 @lj_gc_check(%struct.TYPE_11__* %316)
  store i32 1, i32* %5, align 4
  br label %318

318:                                              ; preds = %284, %283, %271, %189, %154, %142, %124, %123, %105, %84
  %319 = load i32, i32* %5, align 4
  ret i32 %319
}

declare dso_local i64 @ctype_isptr(i32) #1

declare dso_local i64 @ctype_isrefarray(i32) #1

declare dso_local i32 @setboolV(i64, i32) #1

declare dso_local i32 @lj_cconv_compatptr(i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @lj_ctype_size(i32*, i32) #1

declare dso_local i32 @ctype_cid(i32) #1

declare dso_local i32 @setintptrV(i64, i64) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @ctype_isnum(i32) #1

declare dso_local i32 @lj_cconv_ct_ct(i32*, i32, %struct.TYPE_12__*, i32*, i32*, i32) #1

declare dso_local i32 @ctype_get(i32*, i32) #1

declare dso_local i32 @lj_ctype_intern(i32*, i32, i32) #1

declare dso_local i32 @CTINFO(i32, i32) #1

declare dso_local i32* @lj_cdata_new(i32*, i32, i32) #1

declare dso_local i64 @cdataptr(i32*) #1

declare dso_local i32 @setcdataV(%struct.TYPE_11__*, i64, i32*) #1

declare dso_local i32 @lj_gc_check(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
