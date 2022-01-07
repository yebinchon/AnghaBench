; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cconv.c_lj_cconv_ct_tv.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cconv.c_lj_cconv_ct_tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_50__ = type { i64, i32 }
%struct.TYPE_46__ = type { i32, i32 }
%struct.TYPE_49__ = type { i64 }
%struct.TYPE_47__ = type { i64 }
%struct.TYPE_48__ = type { i32 }

@CTID_P_VOID = common dso_local global i32 0, align 4
@CTID_INT32 = common dso_local global i32 0, align 4
@CCF_FROMTV = common dso_local global i32 0, align 4
@CTID_DOUBLE = common dso_local global i32 0, align 4
@CTSIZE_PTR = common dso_local global i64 0, align 8
@CT_PTR = common dso_local global i32 0, align 4
@CTALIGN_PTR = common dso_local global i32 0, align 4
@CTID_A_CCHAR = common dso_local global i32 0, align 4
@CTID_BOOL = common dso_local global i32 0, align 4
@UDTYPE_IO_FILE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_cconv_ct_tv(i32* %0, %struct.TYPE_50__* %1, i32* %2, %struct.TYPE_46__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_50__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_46__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_50__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_49__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_50__*, align 8
  %19 = alloca %struct.TYPE_50__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_47__*, align 8
  %22 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_50__* %1, %struct.TYPE_50__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_46__* %3, %struct.TYPE_46__** %9, align 8
  store i32 %4, i32* %10, align 4
  %23 = load i32, i32* @CTID_P_VOID, align 4
  store i32 %23, i32* %11, align 4
  %24 = bitcast i8** %13 to i32*
  store i32* %24, i32** %15, align 8
  %25 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %26 = call i32 @tvisint(%struct.TYPE_46__* %25)
  %27 = call i64 @LJ_LIKELY(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %5
  %30 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %30, i32 0, i32 1
  store i32* %31, i32** %15, align 8
  %32 = load i32, i32* @CTID_INT32, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @CCF_FROMTV, align 4
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %318

36:                                               ; preds = %5
  %37 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %38 = call i32 @tvisnum(%struct.TYPE_46__* %37)
  %39 = call i64 @LJ_LIKELY(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %42, i32 0, i32 0
  store i32* %43, i32** %15, align 8
  %44 = load i32, i32* @CTID_DOUBLE, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* @CCF_FROMTV, align 4
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %317

48:                                               ; preds = %36
  %49 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %50 = call i64 @tviscdata(%struct.TYPE_46__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %114

52:                                               ; preds = %48
  %53 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %54 = call %struct.TYPE_48__* @cdataV(%struct.TYPE_46__* %53)
  %55 = call i32* @cdataptr(%struct.TYPE_48__* %54)
  store i32* %55, i32** %15, align 8
  %56 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %57 = call %struct.TYPE_48__* @cdataV(%struct.TYPE_46__* %56)
  %58 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %11, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call %struct.TYPE_50__* @ctype_get(i32* %60, i32 %61)
  store %struct.TYPE_50__* %62, %struct.TYPE_50__** %12, align 8
  %63 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @ctype_isref(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %52
  %69 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CTSIZE_PTR, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @lua_assert(i32 %74)
  %76 = load i32*, i32** %15, align 8
  %77 = bitcast i32* %76 to i8**
  %78 = load i8*, i8** %77, align 8
  %79 = bitcast i8* %78 to i32*
  store i32* %79, i32** %15, align 8
  %80 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ctype_cid(i32 %82)
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %68, %52
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call %struct.TYPE_50__* @ctype_raw(i32* %85, i32 %86)
  store %struct.TYPE_50__* %87, %struct.TYPE_50__** %12, align 8
  %88 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @ctype_isfunc(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %84
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* @CT_PTR, align 4
  %96 = load i32, i32* @CTALIGN_PTR, align 4
  %97 = load i32, i32* %11, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @CTINFO(i32 %95, i32 %98)
  %100 = load i64, i64* @CTSIZE_PTR, align 8
  %101 = call i32 @lj_ctype_intern(i32* %94, i32 %99, i64 %100)
  store i32 %101, i32* %11, align 4
  br label %113

102:                                              ; preds = %84
  %103 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @ctype_isenum(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i32*, i32** %6, align 8
  %110 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %111 = call %struct.TYPE_50__* @ctype_child(i32* %109, %struct.TYPE_50__* %110)
  store %struct.TYPE_50__* %111, %struct.TYPE_50__** %12, align 8
  br label %112

112:                                              ; preds = %108, %102
  br label %322

113:                                              ; preds = %93
  br label %316

114:                                              ; preds = %48
  %115 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %116 = call i64 @tvisstr(%struct.TYPE_46__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %210

118:                                              ; preds = %114
  %119 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %120 = call %struct.TYPE_49__* @strV(%struct.TYPE_46__* %119)
  store %struct.TYPE_49__* %120, %struct.TYPE_49__** %16, align 8
  %121 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @ctype_isenum(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %154

126:                                              ; preds = %118
  %127 = load i32*, i32** %6, align 8
  %128 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %129 = load %struct.TYPE_49__*, %struct.TYPE_49__** %16, align 8
  %130 = call %struct.TYPE_50__* @lj_ctype_getfield(i32* %127, %struct.TYPE_50__* %128, %struct.TYPE_49__* %129, i64* %17)
  store %struct.TYPE_50__* %130, %struct.TYPE_50__** %18, align 8
  %131 = load %struct.TYPE_50__*, %struct.TYPE_50__** %18, align 8
  %132 = icmp ne %struct.TYPE_50__* %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %126
  %134 = load %struct.TYPE_50__*, %struct.TYPE_50__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @ctype_isconstval(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %133, %126
  br label %303

140:                                              ; preds = %133
  %141 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 4
  %145 = zext i1 %144 to i32
  %146 = call i32 @lua_assert(i32 %145)
  %147 = load %struct.TYPE_50__*, %struct.TYPE_50__** %18, align 8
  %148 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %147, i32 0, i32 0
  %149 = bitcast i64* %148 to i32*
  store i32* %149, i32** %15, align 8
  %150 = load %struct.TYPE_50__*, %struct.TYPE_50__** %18, align 8
  %151 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @ctype_cid(i32 %152)
  store i32 %153, i32* %11, align 4
  br label %209

154:                                              ; preds = %118
  %155 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @ctype_isrefarray(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %200

160:                                              ; preds = %154
  %161 = load i32*, i32** %6, align 8
  %162 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %163 = call %struct.TYPE_50__* @ctype_rawchild(i32* %161, %struct.TYPE_50__* %162)
  store %struct.TYPE_50__* %163, %struct.TYPE_50__** %19, align 8
  %164 = load %struct.TYPE_49__*, %struct.TYPE_49__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %20, align 8
  %168 = load %struct.TYPE_50__*, %struct.TYPE_50__** %19, align 8
  %169 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @ctype_isinteger(i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %160
  %174 = load %struct.TYPE_50__*, %struct.TYPE_50__** %19, align 8
  %175 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 1
  br i1 %177, label %178, label %179

178:                                              ; preds = %173, %160
  br label %303

179:                                              ; preds = %173
  %180 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %179
  %185 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %20, align 8
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %20, align 8
  br label %194

194:                                              ; preds = %190, %184, %179
  %195 = load i32*, i32** %8, align 8
  %196 = load %struct.TYPE_49__*, %struct.TYPE_49__** %16, align 8
  %197 = call i64 @strdata(%struct.TYPE_49__* %196)
  %198 = load i64, i64* %20, align 8
  %199 = call i32 @memcpy(i32* %195, i64 %197, i64 %198)
  br label %340

200:                                              ; preds = %154
  %201 = load %struct.TYPE_49__*, %struct.TYPE_49__** %16, align 8
  %202 = call i64 @strdata(%struct.TYPE_49__* %201)
  %203 = inttoptr i64 %202 to i32*
  store i32* %203, i32** %15, align 8
  %204 = load i32, i32* @CTID_A_CCHAR, align 4
  store i32 %204, i32* %11, align 4
  %205 = load i32, i32* @CCF_FROMTV, align 4
  %206 = load i32, i32* %10, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %10, align 4
  br label %208

208:                                              ; preds = %200
  br label %209

209:                                              ; preds = %208, %140
  br label %315

210:                                              ; preds = %114
  %211 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %212 = call i64 @tvistab(%struct.TYPE_46__* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %243

214:                                              ; preds = %210
  %215 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i64 @ctype_isarray(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %214
  %221 = load i32*, i32** %6, align 8
  %222 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %223 = load i32*, i32** %8, align 8
  %224 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %225 = call i32 @tabV(%struct.TYPE_46__* %224)
  %226 = load i32, i32* %10, align 4
  %227 = call i32 @cconv_array_tab(i32* %221, %struct.TYPE_50__* %222, i32* %223, i32 %225, i32 %226)
  br label %340

228:                                              ; preds = %214
  %229 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = call i64 @ctype_isstruct(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %228
  %235 = load i32*, i32** %6, align 8
  %236 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %237 = load i32*, i32** %8, align 8
  %238 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %239 = call i32 @tabV(%struct.TYPE_46__* %238)
  %240 = load i32, i32* %10, align 4
  %241 = call i32 @cconv_struct_tab(i32* %235, %struct.TYPE_50__* %236, i32* %237, i32 %239, i32 %240)
  br label %340

242:                                              ; preds = %228
  br label %303

243:                                              ; preds = %210
  %244 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %245 = call i64 @tvisbool(%struct.TYPE_46__* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %243
  %248 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %249 = call i32 @boolV(%struct.TYPE_46__* %248)
  store i32 %249, i32* %14, align 4
  store i32* %14, i32** %15, align 8
  %250 = load i32, i32* @CTID_BOOL, align 4
  store i32 %250, i32* %11, align 4
  br label %313

251:                                              ; preds = %243
  %252 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %253 = call i64 @tvisnil(%struct.TYPE_46__* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %251
  store i8* null, i8** %13, align 8
  %256 = load i32, i32* @CCF_FROMTV, align 4
  %257 = load i32, i32* %10, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %10, align 4
  br label %312

259:                                              ; preds = %251
  %260 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %261 = call i64 @tvisudata(%struct.TYPE_46__* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %278

263:                                              ; preds = %259
  %264 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %265 = call %struct.TYPE_47__* @udataV(%struct.TYPE_46__* %264)
  store %struct.TYPE_47__* %265, %struct.TYPE_47__** %21, align 8
  %266 = load %struct.TYPE_47__*, %struct.TYPE_47__** %21, align 8
  %267 = call i8* @uddata(%struct.TYPE_47__* %266)
  store i8* %267, i8** %13, align 8
  %268 = load %struct.TYPE_47__*, %struct.TYPE_47__** %21, align 8
  %269 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @UDTYPE_IO_FILE, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %277

273:                                              ; preds = %263
  %274 = load i8*, i8** %13, align 8
  %275 = bitcast i8* %274 to i8**
  %276 = load i8*, i8** %275, align 8
  store i8* %276, i8** %13, align 8
  br label %277

277:                                              ; preds = %273, %263
  br label %311

278:                                              ; preds = %259
  %279 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %280 = call i64 @tvislightud(%struct.TYPE_46__* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %278
  %283 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %284 = call i8* @lightudV(%struct.TYPE_46__* %283)
  store i8* %284, i8** %13, align 8
  br label %310

285:                                              ; preds = %278
  %286 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %287 = call i64 @tvisfunc(%struct.TYPE_46__* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %302

289:                                              ; preds = %285
  %290 = load i32*, i32** %6, align 8
  %291 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %292 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %293 = call i32 @funcV(%struct.TYPE_46__* %292)
  %294 = call i8* @lj_ccallback_new(i32* %290, %struct.TYPE_50__* %291, i32 %293)
  store i8* %294, i8** %22, align 8
  %295 = load i8*, i8** %22, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %297, label %301

297:                                              ; preds = %289
  %298 = load i8*, i8** %22, align 8
  %299 = load i32*, i32** %8, align 8
  %300 = bitcast i32* %299 to i8**
  store i8* %298, i8** %300, align 8
  br label %340

301:                                              ; preds = %289
  br label %303

302:                                              ; preds = %285
  br label %303

303:                                              ; preds = %302, %301, %242, %178, %139
  %304 = load i32*, i32** %6, align 8
  %305 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %306 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %307 = load i32, i32* %10, align 4
  %308 = call i32 @cconv_err_convtv(i32* %304, %struct.TYPE_50__* %305, %struct.TYPE_46__* %306, i32 %307)
  br label %309

309:                                              ; preds = %303
  br label %310

310:                                              ; preds = %309, %282
  br label %311

311:                                              ; preds = %310, %277
  br label %312

312:                                              ; preds = %311, %255
  br label %313

313:                                              ; preds = %312, %247
  br label %314

314:                                              ; preds = %313
  br label %315

315:                                              ; preds = %314, %209
  br label %316

316:                                              ; preds = %315, %113
  br label %317

317:                                              ; preds = %316, %41
  br label %318

318:                                              ; preds = %317, %29
  %319 = load i32*, i32** %6, align 8
  %320 = load i32, i32* %11, align 4
  %321 = call %struct.TYPE_50__* @ctype_get(i32* %319, i32 %320)
  store %struct.TYPE_50__* %321, %struct.TYPE_50__** %12, align 8
  br label %322

322:                                              ; preds = %318, %112
  %323 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = call i64 @ctype_isenum(i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %322
  %329 = load i32*, i32** %6, align 8
  %330 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %331 = call %struct.TYPE_50__* @ctype_child(i32* %329, %struct.TYPE_50__* %330)
  store %struct.TYPE_50__* %331, %struct.TYPE_50__** %7, align 8
  br label %332

332:                                              ; preds = %328, %322
  %333 = load i32*, i32** %6, align 8
  %334 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %335 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %336 = load i32*, i32** %8, align 8
  %337 = load i32*, i32** %15, align 8
  %338 = load i32, i32* %10, align 4
  %339 = call i32 @lj_cconv_ct_ct(i32* %333, %struct.TYPE_50__* %334, %struct.TYPE_50__* %335, i32* %336, i32* %337, i32 %338)
  br label %340

340:                                              ; preds = %332, %297, %234, %220, %194
  ret void
}

declare dso_local i64 @LJ_LIKELY(i32) #1

declare dso_local i32 @tvisint(%struct.TYPE_46__*) #1

declare dso_local i32 @tvisnum(%struct.TYPE_46__*) #1

declare dso_local i64 @tviscdata(%struct.TYPE_46__*) #1

declare dso_local i32* @cdataptr(%struct.TYPE_48__*) #1

declare dso_local %struct.TYPE_48__* @cdataV(%struct.TYPE_46__*) #1

declare dso_local %struct.TYPE_50__* @ctype_get(i32*, i32) #1

declare dso_local i64 @ctype_isref(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @ctype_cid(i32) #1

declare dso_local %struct.TYPE_50__* @ctype_raw(i32*, i32) #1

declare dso_local i64 @ctype_isfunc(i32) #1

declare dso_local i32 @lj_ctype_intern(i32*, i32, i64) #1

declare dso_local i32 @CTINFO(i32, i32) #1

declare dso_local i64 @ctype_isenum(i32) #1

declare dso_local %struct.TYPE_50__* @ctype_child(i32*, %struct.TYPE_50__*) #1

declare dso_local i64 @tvisstr(%struct.TYPE_46__*) #1

declare dso_local %struct.TYPE_49__* @strV(%struct.TYPE_46__*) #1

declare dso_local %struct.TYPE_50__* @lj_ctype_getfield(i32*, %struct.TYPE_50__*, %struct.TYPE_49__*, i64*) #1

declare dso_local i32 @ctype_isconstval(i32) #1

declare dso_local i64 @ctype_isrefarray(i32) #1

declare dso_local %struct.TYPE_50__* @ctype_rawchild(i32*, %struct.TYPE_50__*) #1

declare dso_local i32 @ctype_isinteger(i32) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i64 @strdata(%struct.TYPE_49__*) #1

declare dso_local i64 @tvistab(%struct.TYPE_46__*) #1

declare dso_local i64 @ctype_isarray(i32) #1

declare dso_local i32 @cconv_array_tab(i32*, %struct.TYPE_50__*, i32*, i32, i32) #1

declare dso_local i32 @tabV(%struct.TYPE_46__*) #1

declare dso_local i64 @ctype_isstruct(i32) #1

declare dso_local i32 @cconv_struct_tab(i32*, %struct.TYPE_50__*, i32*, i32, i32) #1

declare dso_local i64 @tvisbool(%struct.TYPE_46__*) #1

declare dso_local i32 @boolV(%struct.TYPE_46__*) #1

declare dso_local i64 @tvisnil(%struct.TYPE_46__*) #1

declare dso_local i64 @tvisudata(%struct.TYPE_46__*) #1

declare dso_local %struct.TYPE_47__* @udataV(%struct.TYPE_46__*) #1

declare dso_local i8* @uddata(%struct.TYPE_47__*) #1

declare dso_local i64 @tvislightud(%struct.TYPE_46__*) #1

declare dso_local i8* @lightudV(%struct.TYPE_46__*) #1

declare dso_local i64 @tvisfunc(%struct.TYPE_46__*) #1

declare dso_local i8* @lj_ccallback_new(i32*, %struct.TYPE_50__*, i32) #1

declare dso_local i32 @funcV(%struct.TYPE_46__*) #1

declare dso_local i32 @cconv_err_convtv(i32*, %struct.TYPE_50__*, %struct.TYPE_46__*, i32) #1

declare dso_local i32 @lj_cconv_ct_ct(i32*, %struct.TYPE_50__*, %struct.TYPE_50__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
