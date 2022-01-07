; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_alloc.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i8** }
%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_30__ = type { i32, i32, i32, i32 }

@IR_CNEWI = common dso_local global i32 0, align 4
@IRT_CDATA = common dso_local global i32 0, align 4
@TREF_NIL = common dso_local global i8* null, align 8
@CTF_VLA = common dso_local global i32 0, align 4
@LJ_TRERR_NYICONV = common dso_local global i32 0, align 4
@CTID_INT32 = common dso_local global i32 0, align 4
@IR_MULOV = common dso_local global i32 0, align 4
@IR_ADDOV = common dso_local global i32 0, align 4
@CT_MEMALIGN = common dso_local global i64 0, align 8
@IR_CNEW = common dso_local global i32 0, align 4
@IR_ADD = common dso_local global i32 0, align 4
@IRT_PTR = common dso_local global i32 0, align 4
@CREC_FILL_MAXUNROLL = common dso_local global i32 0, align 4
@MM_gc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, %struct.TYPE_29__*, i32)* @crec_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crec_alloc(%struct.TYPE_27__* %0, %struct.TYPE_29__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_30__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_28__, align 8
  %25 = alloca %struct.TYPE_28__*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_30__*, align 8
  %31 = alloca %struct.TYPE_30__*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca %struct.TYPE_28__, align 8
  %35 = alloca %struct.TYPE_28__*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca %struct.TYPE_28__, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  store i32 %2, i32* %6, align 4
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %39 = call i32 @J2G(%struct.TYPE_27__* %38)
  %40 = call i32* @ctype_ctsG(i32 %39)
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @lj_ctype_info(i32* %41, i32 %42, i32* %8)
  store i32 %43, i32* %9, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call %struct.TYPE_30__* @ctype_raw(i32* %44, i32 %45)
  store %struct.TYPE_30__* %46, %struct.TYPE_30__** %10, align 8
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i8* @lj_ir_kint(%struct.TYPE_27__* %47, i32 %48)
  store i8* %49, i8** %12, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @ctype_isptr(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %3
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @ctype_isinteger(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %119

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 4
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 8
  br i1 %62, label %63, label %119

63:                                               ; preds = %60, %57, %3
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i64 1
  %82 = call i8* @crec_ct_tv(%struct.TYPE_27__* %71, %struct.TYPE_30__* %72, i8* null, i8* %77, %struct.TYPE_28__* %81)
  br label %107

83:                                               ; preds = %63
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @ctype_isptr(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %89 = call i8* @lj_ir_kptr(%struct.TYPE_27__* %88, i32* null)
  br label %105

90:                                               ; preds = %83
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %91, 4
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %95 = call i8* @lj_ir_kint(%struct.TYPE_27__* %94, i32 0)
  br label %103

96:                                               ; preds = %90
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %98 = call i8* @lj_needsplit(%struct.TYPE_27__* %97)
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %100 = call i32 @lj_ir_kint64(%struct.TYPE_27__* %99, i32 0)
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  br label %103

103:                                              ; preds = %96, %93
  %104 = phi i8* [ %95, %93 ], [ %102, %96 ]
  br label %105

105:                                              ; preds = %103, %87
  %106 = phi i8* [ %89, %87 ], [ %104, %103 ]
  br label %107

107:                                              ; preds = %105, %70
  %108 = phi i8* [ %82, %70 ], [ %106, %105 ]
  store i8* %108, i8** %14, align 8
  %109 = load i32, i32* @IR_CNEWI, align 4
  %110 = load i32, i32* @IRT_CDATA, align 4
  %111 = call i32 @IRTG(i32 %109, i32 %110)
  %112 = load i8*, i8** %12, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = call i8* @emitir(i32 %111, i8* %112, i8* %113)
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  %117 = load i8**, i8*** %116, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 0
  store i8* %114, i8** %118, align 8
  br label %563

119:                                              ; preds = %60, %53
  %120 = load i8*, i8** @TREF_NIL, align 8
  store i8* %120, i8** %15, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @CTF_VLA, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %184

125:                                              ; preds = %119
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %126, i32 0, i32 0
  %128 = load i8**, i8*** %127, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 1
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %125
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 0
  %135 = load i8**, i8*** %134, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 2
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %132, %125
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %141 = load i32, i32* @LJ_TRERR_NYICONV, align 4
  %142 = call i32 @lj_trace_err(%struct.TYPE_27__* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %132
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* @CTID_INT32, align 4
  %147 = call %struct.TYPE_30__* @ctype_get(i32* %145, i32 %146)
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 0
  %150 = load i8**, i8*** %149, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 1
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i64 1
  %157 = call i8* @crec_ct_tv(%struct.TYPE_27__* %144, %struct.TYPE_30__* %147, i8* null, i8* %152, %struct.TYPE_28__* %156)
  store i8* %157, i8** %15, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %160 = call i32 @lj_ctype_vlsize(i32* %158, %struct.TYPE_30__* %159, i32 0)
  store i32 %160, i32* %16, align 4
  %161 = load i32*, i32** %7, align 8
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %163 = call i32 @lj_ctype_vlsize(i32* %161, %struct.TYPE_30__* %162, i32 1)
  store i32 %163, i32* %17, align 4
  %164 = load i32, i32* @IR_MULOV, align 4
  %165 = call i32 @IRTGI(i32 %164)
  %166 = load i8*, i8** %15, align 8
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* %16, align 4
  %170 = sub nsw i32 %168, %169
  %171 = call i8* @lj_ir_kint(%struct.TYPE_27__* %167, i32 %170)
  %172 = call i8* @emitir(i32 %165, i8* %166, i8* %171)
  store i8* %172, i8** %15, align 8
  %173 = load i32, i32* @IR_ADDOV, align 4
  %174 = call i32 @IRTGI(i32 %173)
  %175 = load i8*, i8** %15, align 8
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %177 = load i32, i32* %16, align 4
  %178 = call i8* @lj_ir_kint(%struct.TYPE_27__* %176, i32 %177)
  %179 = call i8* @emitir(i32 %174, i8* %175, i8* %178)
  store i8* %179, i8** %15, align 8
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i32 0, i32 0
  %182 = load i8**, i8*** %181, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 1
  store i8* null, i8** %183, align 8
  br label %194

184:                                              ; preds = %119
  %185 = load i32, i32* %9, align 4
  %186 = call i64 @ctype_align(i32 %185)
  %187 = load i64, i64* @CT_MEMALIGN, align 8
  %188 = icmp sgt i64 %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %191 = load i32, i32* %8, align 4
  %192 = call i8* @lj_ir_kint(%struct.TYPE_27__* %190, i32 %191)
  store i8* %192, i8** %15, align 8
  br label %193

193:                                              ; preds = %189, %184
  br label %194

194:                                              ; preds = %193, %143
  %195 = load i32, i32* @IR_CNEW, align 4
  %196 = load i32, i32* @IRT_CDATA, align 4
  %197 = call i32 @IRTG(i32 %195, i32 %196)
  %198 = load i8*, i8** %12, align 8
  %199 = load i8*, i8** %15, align 8
  %200 = call i8* @emitir(i32 %197, i8* %198, i8* %199)
  store i8* %200, i8** %11, align 8
  %201 = load i32, i32* %8, align 4
  %202 = icmp sgt i32 %201, 128
  br i1 %202, label %208, label %203

203:                                              ; preds = %194
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* @CTF_VLA, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %255

208:                                              ; preds = %203, %194
  br label %209

209:                                              ; preds = %310, %208
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %210, i32 0, i32 0
  %212 = load i8**, i8*** %211, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 1
  %214 = load i8*, i8** %213, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %220

216:                                              ; preds = %209
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %218 = load i32, i32* @LJ_TRERR_NYICONV, align 4
  %219 = call i32 @lj_trace_err(%struct.TYPE_27__* %217, i32 %218)
  br label %220

220:                                              ; preds = %216, %209
  %221 = load i32, i32* @IR_ADD, align 4
  %222 = load i32, i32* @IRT_PTR, align 4
  %223 = call i32 @IRT(i32 %221, i32 %222)
  %224 = load i8*, i8** %11, align 8
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %226 = call i8* @lj_ir_kintp(%struct.TYPE_27__* %225, i32 4)
  %227 = call i8* @emitir(i32 %223, i8* %224, i8* %226)
  store i8* %227, i8** %18, align 8
  %228 = load i8*, i8** %15, align 8
  %229 = load i8*, i8** @TREF_NIL, align 8
  %230 = icmp eq i8* %228, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %220
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %233 = load i32, i32* %8, align 4
  %234 = call i8* @lj_ir_kint(%struct.TYPE_27__* %232, i32 %233)
  store i8* %234, i8** %15, align 8
  br label %235

235:                                              ; preds = %231, %220
  %236 = load i32, i32* %9, align 4
  %237 = call i64 @ctype_align(i32 %236)
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %19, align 4
  %239 = load i32, i32* %19, align 4
  %240 = sext i32 %239 to i64
  %241 = load i64, i64* @CT_MEMALIGN, align 8
  %242 = icmp slt i64 %240, %241
  br i1 %242, label %243, label %246

243:                                              ; preds = %235
  %244 = load i64, i64* @CT_MEMALIGN, align 8
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %19, align 4
  br label %246

246:                                              ; preds = %243, %235
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %248 = load i8*, i8** %18, align 8
  %249 = load i8*, i8** %15, align 8
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %251 = call i8* @lj_ir_kint(%struct.TYPE_27__* %250, i32 0)
  %252 = load i32, i32* %19, align 4
  %253 = shl i32 1, %252
  %254 = call i32 @crec_fill(%struct.TYPE_27__* %247, i8* %248, i8* %249, i8* %251, i32 %253)
  br label %545

255:                                              ; preds = %203
  %256 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %256, i32 0, i32 0
  %258 = load i8**, i8*** %257, align 8
  %259 = getelementptr inbounds i8*, i8** %258, i64 1
  %260 = load i8*, i8** %259, align 8
  %261 = icmp ne i8* %260, null
  br i1 %261, label %262, label %279

262:                                              ; preds = %255
  %263 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %263, i32 0, i32 0
  %265 = load i8**, i8*** %264, align 8
  %266 = getelementptr inbounds i8*, i8** %265, i64 2
  %267 = load i8*, i8** %266, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %279, label %269

269:                                              ; preds = %262
  %270 = load i32*, i32** %7, align 8
  %271 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %272 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_28__*, %struct.TYPE_28__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %274, i64 1
  %276 = call i32 @lj_cconv_multi_init(i32* %270, %struct.TYPE_30__* %271, %struct.TYPE_28__* %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %269
  br label %505

279:                                              ; preds = %269, %262, %255
  %280 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i64 @ctype_isarray(i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %378

285:                                              ; preds = %279
  %286 = load i32*, i32** %7, align 8
  %287 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %288 = call %struct.TYPE_30__* @ctype_rawchild(i32* %286, %struct.TYPE_30__* %287)
  store %struct.TYPE_30__* %288, %struct.TYPE_30__** %20, align 8
  %289 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %290 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  store i32 %291, i32* %22, align 4
  store i8* null, i8** %23, align 8
  store %struct.TYPE_28__* %24, %struct.TYPE_28__** %25, align 8
  %292 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 0
  store i64 0, i64* %292, align 8
  %293 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %294 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i64 @ctype_isnum(i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %304, label %298

298:                                              ; preds = %285
  %299 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %300 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = call i64 @ctype_isptr(i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %298, %285
  %305 = load i32, i32* %22, align 4
  %306 = load i32, i32* @CREC_FILL_MAXUNROLL, align 4
  %307 = mul nsw i32 %305, %306
  %308 = load i32, i32* %8, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %304, %298
  br label %209

311:                                              ; preds = %304
  store i64 1, i64* %26, align 8
  store i32 0, i32* %21, align 4
  br label %312

312:                                              ; preds = %373, %311
  %313 = load i32, i32* %21, align 4
  %314 = load i32, i32* %8, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %377

316:                                              ; preds = %312
  %317 = load i32, i32* @IR_ADD, align 4
  %318 = load i32, i32* @IRT_PTR, align 4
  %319 = call i32 @IRT(i32 %317, i32 %318)
  %320 = load i8*, i8** %11, align 8
  %321 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %322 = load i32, i32* %21, align 4
  %323 = sext i32 %322 to i64
  %324 = add i64 %323, 4
  %325 = trunc i64 %324 to i32
  %326 = call i8* @lj_ir_kintp(%struct.TYPE_27__* %321, i32 %325)
  %327 = call i8* @emitir(i32 %319, i8* %320, i8* %326)
  store i8* %327, i8** %27, align 8
  %328 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %328, i32 0, i32 0
  %330 = load i8**, i8*** %329, align 8
  %331 = load i64, i64* %26, align 8
  %332 = getelementptr inbounds i8*, i8** %330, i64 %331
  %333 = load i8*, i8** %332, align 8
  %334 = icmp ne i8* %333, null
  br i1 %334, label %335, label %349

335:                                              ; preds = %316
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %336, i32 0, i32 0
  %338 = load i8**, i8*** %337, align 8
  %339 = load i64, i64* %26, align 8
  %340 = getelementptr inbounds i8*, i8** %338, i64 %339
  %341 = load i8*, i8** %340, align 8
  store i8* %341, i8** %23, align 8
  %342 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_28__*, %struct.TYPE_28__** %343, align 8
  %345 = load i64, i64* %26, align 8
  %346 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %344, i64 %345
  store %struct.TYPE_28__* %346, %struct.TYPE_28__** %25, align 8
  %347 = load i64, i64* %26, align 8
  %348 = add i64 %347, 1
  store i64 %348, i64* %26, align 8
  br label %366

349:                                              ; preds = %316
  %350 = load i64, i64* %26, align 8
  %351 = icmp ne i64 %350, 2
  br i1 %351, label %352, label %365

352:                                              ; preds = %349
  %353 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %354 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = call i64 @ctype_isnum(i32 %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %352
  %359 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %360 = call i8* @lj_ir_kint(%struct.TYPE_27__* %359, i32 0)
  br label %363

361:                                              ; preds = %352
  %362 = load i8*, i8** @TREF_NIL, align 8
  br label %363

363:                                              ; preds = %361, %358
  %364 = phi i8* [ %360, %358 ], [ %362, %361 ]
  store i8* %364, i8** %23, align 8
  br label %365

365:                                              ; preds = %363, %349
  br label %366

366:                                              ; preds = %365, %335
  %367 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %368 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %369 = load i8*, i8** %27, align 8
  %370 = load i8*, i8** %23, align 8
  %371 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %372 = call i8* @crec_ct_tv(%struct.TYPE_27__* %367, %struct.TYPE_30__* %368, i8* %369, i8* %370, %struct.TYPE_28__* %371)
  br label %373

373:                                              ; preds = %366
  %374 = load i32, i32* %22, align 4
  %375 = load i32, i32* %21, align 4
  %376 = add nsw i32 %375, %374
  store i32 %376, i32* %21, align 4
  br label %312

377:                                              ; preds = %312
  br label %543

378:                                              ; preds = %279
  %379 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %380 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = call i64 @ctype_isstruct(i32 %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %504

384:                                              ; preds = %378
  %385 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %386 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 4
  store i32 %387, i32* %28, align 4
  store i64 1, i64* %29, align 8
  br label %388

388:                                              ; preds = %502, %410, %384
  %389 = load i32, i32* %28, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %503

391:                                              ; preds = %388
  %392 = load i32*, i32** %7, align 8
  %393 = load i32, i32* %28, align 4
  %394 = call %struct.TYPE_30__* @ctype_get(i32* %392, i32 %393)
  store %struct.TYPE_30__* %394, %struct.TYPE_30__** %30, align 8
  %395 = load %struct.TYPE_30__*, %struct.TYPE_30__** %30, align 8
  %396 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 4
  store i32 %397, i32* %28, align 4
  %398 = load %struct.TYPE_30__*, %struct.TYPE_30__** %30, align 8
  %399 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = call i64 @ctype_isfield(i32 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %491

403:                                              ; preds = %391
  store %struct.TYPE_28__* %34, %struct.TYPE_28__** %35, align 8
  %404 = call i32 @setintV(%struct.TYPE_28__* %34, i32 0)
  %405 = load %struct.TYPE_30__*, %struct.TYPE_30__** %30, align 8
  %406 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @gcref(i32 %407)
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %411, label %410

410:                                              ; preds = %403
  br label %388

411:                                              ; preds = %403
  %412 = load i32*, i32** %7, align 8
  %413 = load %struct.TYPE_30__*, %struct.TYPE_30__** %30, align 8
  %414 = call %struct.TYPE_30__* @ctype_rawchild(i32* %412, %struct.TYPE_30__* %413)
  store %struct.TYPE_30__* %414, %struct.TYPE_30__** %31, align 8
  %415 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %416 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = call i64 @ctype_isnum(i32 %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %436, label %420

420:                                              ; preds = %411
  %421 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %422 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = call i64 @ctype_isptr(i32 %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %436, label %426

426:                                              ; preds = %420
  %427 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %428 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = call i64 @ctype_isenum(i32 %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %436, label %432

432:                                              ; preds = %426
  %433 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %434 = load i32, i32* @LJ_TRERR_NYICONV, align 4
  %435 = call i32 @lj_trace_err(%struct.TYPE_27__* %433, i32 %434)
  br label %436

436:                                              ; preds = %432, %426, %420, %411
  %437 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %437, i32 0, i32 0
  %439 = load i8**, i8*** %438, align 8
  %440 = load i64, i64* %29, align 8
  %441 = getelementptr inbounds i8*, i8** %439, i64 %440
  %442 = load i8*, i8** %441, align 8
  %443 = icmp ne i8* %442, null
  br i1 %443, label %444, label %458

444:                                              ; preds = %436
  %445 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %446 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %445, i32 0, i32 0
  %447 = load i8**, i8*** %446, align 8
  %448 = load i64, i64* %29, align 8
  %449 = getelementptr inbounds i8*, i8** %447, i64 %448
  %450 = load i8*, i8** %449, align 8
  store i8* %450, i8** %32, align 8
  %451 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %452 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %451, i32 0, i32 0
  %453 = load %struct.TYPE_28__*, %struct.TYPE_28__** %452, align 8
  %454 = load i64, i64* %29, align 8
  %455 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %453, i64 %454
  store %struct.TYPE_28__* %455, %struct.TYPE_28__** %35, align 8
  %456 = load i64, i64* %29, align 8
  %457 = add i64 %456, 1
  store i64 %457, i64* %29, align 8
  br label %471

458:                                              ; preds = %436
  %459 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %460 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = call i64 @ctype_isptr(i32 %461)
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %466

464:                                              ; preds = %458
  %465 = load i8*, i8** @TREF_NIL, align 8
  br label %469

466:                                              ; preds = %458
  %467 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %468 = call i8* @lj_ir_kint(%struct.TYPE_27__* %467, i32 0)
  br label %469

469:                                              ; preds = %466, %464
  %470 = phi i8* [ %465, %464 ], [ %468, %466 ]
  store i8* %470, i8** %32, align 8
  br label %471

471:                                              ; preds = %469, %444
  %472 = load i32, i32* @IR_ADD, align 4
  %473 = load i32, i32* @IRT_PTR, align 4
  %474 = call i32 @IRT(i32 %472, i32 %473)
  %475 = load i8*, i8** %11, align 8
  %476 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %477 = load %struct.TYPE_30__*, %struct.TYPE_30__** %30, align 8
  %478 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = sext i32 %479 to i64
  %481 = add i64 %480, 4
  %482 = trunc i64 %481 to i32
  %483 = call i8* @lj_ir_kintp(%struct.TYPE_27__* %476, i32 %482)
  %484 = call i8* @emitir(i32 %474, i8* %475, i8* %483)
  store i8* %484, i8** %33, align 8
  %485 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %486 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %487 = load i8*, i8** %33, align 8
  %488 = load i8*, i8** %32, align 8
  %489 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  %490 = call i8* @crec_ct_tv(%struct.TYPE_27__* %485, %struct.TYPE_30__* %486, i8* %487, i8* %488, %struct.TYPE_28__* %489)
  br label %502

491:                                              ; preds = %391
  %492 = load %struct.TYPE_30__*, %struct.TYPE_30__** %30, align 8
  %493 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 4
  %495 = call i32 @ctype_isconstval(i32 %494)
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %501, label %497

497:                                              ; preds = %491
  %498 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %499 = load i32, i32* @LJ_TRERR_NYICONV, align 4
  %500 = call i32 @lj_trace_err(%struct.TYPE_27__* %498, i32 %499)
  br label %501

501:                                              ; preds = %497, %491
  br label %502

502:                                              ; preds = %501, %471
  br label %388

503:                                              ; preds = %388
  br label %542

504:                                              ; preds = %378
  br label %505

505:                                              ; preds = %504, %278
  %506 = load i32, i32* @IR_ADD, align 4
  %507 = load i32, i32* @IRT_PTR, align 4
  %508 = call i32 @IRT(i32 %506, i32 %507)
  %509 = load i8*, i8** %11, align 8
  %510 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %511 = call i8* @lj_ir_kintp(%struct.TYPE_27__* %510, i32 4)
  %512 = call i8* @emitir(i32 %508, i8* %509, i8* %511)
  store i8* %512, i8** %36, align 8
  %513 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %514 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %513, i32 0, i32 0
  %515 = load i8**, i8*** %514, align 8
  %516 = getelementptr inbounds i8*, i8** %515, i64 1
  %517 = load i8*, i8** %516, align 8
  %518 = icmp ne i8* %517, null
  br i1 %518, label %519, label %533

519:                                              ; preds = %505
  %520 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %521 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %522 = load i8*, i8** %36, align 8
  %523 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %524 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %523, i32 0, i32 0
  %525 = load i8**, i8*** %524, align 8
  %526 = getelementptr inbounds i8*, i8** %525, i64 1
  %527 = load i8*, i8** %526, align 8
  %528 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %529 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %528, i32 0, i32 0
  %530 = load %struct.TYPE_28__*, %struct.TYPE_28__** %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %530, i64 1
  %532 = call i8* @crec_ct_tv(%struct.TYPE_27__* %520, %struct.TYPE_30__* %521, i8* %522, i8* %527, %struct.TYPE_28__* %531)
  br label %541

533:                                              ; preds = %505
  %534 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 0
  store i64 0, i64* %534, align 8
  %535 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %536 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %537 = load i8*, i8** %36, align 8
  %538 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %539 = call i8* @lj_ir_kint(%struct.TYPE_27__* %538, i32 0)
  %540 = call i8* @crec_ct_tv(%struct.TYPE_27__* %535, %struct.TYPE_30__* %536, i8* %537, i8* %539, %struct.TYPE_28__* %37)
  br label %541

541:                                              ; preds = %533, %519
  br label %542

542:                                              ; preds = %541, %503
  br label %543

543:                                              ; preds = %542, %377
  br label %544

544:                                              ; preds = %543
  br label %545

545:                                              ; preds = %544, %246
  br label %546

546:                                              ; preds = %545
  %547 = load i8*, i8** %11, align 8
  %548 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %549 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %548, i32 0, i32 0
  %550 = load i8**, i8*** %549, align 8
  %551 = getelementptr inbounds i8*, i8** %550, i64 0
  store i8* %547, i8** %551, align 8
  %552 = load i32*, i32** %7, align 8
  %553 = load i32, i32* %6, align 4
  %554 = load i32, i32* @MM_gc, align 4
  %555 = call i32* @lj_ctype_meta(i32* %552, i32 %553, i32 %554)
  store i32* %555, i32** %13, align 8
  %556 = load i32*, i32** %13, align 8
  %557 = icmp ne i32* %556, null
  br i1 %557, label %558, label %563

558:                                              ; preds = %546
  %559 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %560 = load i8*, i8** %11, align 8
  %561 = load i32*, i32** %13, align 8
  %562 = call i32 @crec_finalizer(%struct.TYPE_27__* %559, i8* %560, i32 0, i32* %561)
  br label %563

563:                                              ; preds = %107, %558, %546
  ret void
}

declare dso_local i32* @ctype_ctsG(i32) #1

declare dso_local i32 @J2G(%struct.TYPE_27__*) #1

declare dso_local i32 @lj_ctype_info(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_30__* @ctype_raw(i32*, i32) #1

declare dso_local i8* @lj_ir_kint(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @ctype_isptr(i32) #1

declare dso_local i64 @ctype_isinteger(i32) #1

declare dso_local i8* @crec_ct_tv(%struct.TYPE_27__*, %struct.TYPE_30__*, i8*, i8*, %struct.TYPE_28__*) #1

declare dso_local i8* @lj_ir_kptr(%struct.TYPE_27__*, i32*) #1

declare dso_local i8* @lj_needsplit(%struct.TYPE_27__*) #1

declare dso_local i32 @lj_ir_kint64(%struct.TYPE_27__*, i32) #1

declare dso_local i8* @emitir(i32, i8*, i8*) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_30__* @ctype_get(i32*, i32) #1

declare dso_local i32 @lj_ctype_vlsize(i32*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @IRTGI(i32) #1

declare dso_local i64 @ctype_align(i32) #1

declare dso_local i32 @IRT(i32, i32) #1

declare dso_local i8* @lj_ir_kintp(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @crec_fill(%struct.TYPE_27__*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @lj_cconv_multi_init(i32*, %struct.TYPE_30__*, %struct.TYPE_28__*) #1

declare dso_local i64 @ctype_isarray(i32) #1

declare dso_local %struct.TYPE_30__* @ctype_rawchild(i32*, %struct.TYPE_30__*) #1

declare dso_local i64 @ctype_isnum(i32) #1

declare dso_local i64 @ctype_isstruct(i32) #1

declare dso_local i64 @ctype_isfield(i32) #1

declare dso_local i32 @setintV(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @gcref(i32) #1

declare dso_local i64 @ctype_isenum(i32) #1

declare dso_local i32 @ctype_isconstval(i32) #1

declare dso_local i32* @lj_ctype_meta(i32*, i32, i32) #1

declare dso_local i32 @crec_finalizer(%struct.TYPE_27__*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
