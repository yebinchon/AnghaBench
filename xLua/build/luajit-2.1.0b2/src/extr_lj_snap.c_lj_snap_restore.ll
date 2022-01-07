; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_snap.c_lj_snap_restore.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_snap.c_lj_snap_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i64, %struct.TYPE_33__*, i32 }
%struct.TYPE_33__ = type { i64, %struct.TYPE_35__*, i32, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_38__ = type { i32*, %struct.TYPE_37__*, %struct.TYPE_36__* }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_36__ = type { i64, i64, i32, i32 }
%struct.TYPE_32__ = type { i32 }

@SNAP_NORESTORE = common dso_local global i32 0, align 4
@RID_SUNK = common dso_local global i64 0, align 8
@LJ_SOFTFP = common dso_local global i64 0, align 8
@SNAP_SOFTFPNUM = common dso_local global i32 0, align 4
@SNAP_CONT = common dso_local global i32 0, align 4
@SNAP_FRAME = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i32 0, align 4
@BC_FUNCF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_snap_restore(%struct.TYPE_34__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_34__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_38__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_35__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_33__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_35__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_37__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_35__, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %3, align 8
  store i8* %1, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %5, align 8
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %30 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.TYPE_38__* @traceref(%struct.TYPE_34__* %29, i32 %32)
  store %struct.TYPE_38__* %33, %struct.TYPE_38__** %7, align 8
  %34 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_36__*, %struct.TYPE_36__** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %36, i64 %37
  store %struct.TYPE_36__* %38, %struct.TYPE_36__** %8, align 8
  %39 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  %42 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32* %48, i32** %11, align 8
  %49 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %53 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %54 = call i32 @snap_nextofs(%struct.TYPE_38__* %52, %struct.TYPE_36__* %53)
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  store i32* %57, i32** %12, align 8
  %58 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @snap_renamefilter(%struct.TYPE_38__* %58, i64 %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32* @snap_pc(i32 %64)
  store i32* %65, i32** %16, align 8
  %66 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %67, align 8
  store %struct.TYPE_33__* %68, %struct.TYPE_33__** %17, align 8
  %69 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cframe_raw(i32 %71)
  %73 = load i32*, i32** %16, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = call i32 @setcframe_pc(i32 %72, i32* %74)
  %76 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %78, %82
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @tvref(i32 %86)
  %88 = icmp sge i64 %83, %87
  %89 = zext i1 %88 to i32
  %90 = call i64 @LJ_UNLIKELY(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %2
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %94 = call i8* @curr_topL(%struct.TYPE_33__* %93)
  %95 = bitcast i8* %94 to %struct.TYPE_35__*
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %96, i32 0, i32 1
  store %struct.TYPE_35__* %95, %struct.TYPE_35__** %97, align 8
  %98 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %99 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %103 = call %struct.TYPE_32__* @curr_proto(%struct.TYPE_33__* %102)
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %101, %105
  %107 = call i32 @lj_state_growstack(%struct.TYPE_33__* %98, i32 %106)
  br label %108

108:                                              ; preds = %92, %2
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %111, 1
  %113 = inttoptr i64 %112 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %113, %struct.TYPE_35__** %14, align 8
  %114 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %115 = call i32 @frame_ftsz(%struct.TYPE_35__* %114)
  store i32 %115, i32* %13, align 4
  store i64 0, i64* %9, align 8
  br label %116

116:                                              ; preds = %253, %108
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* %10, align 8
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %120, label %256

120:                                              ; preds = %116
  %121 = load i32*, i32** %11, align 8
  %122 = load i64, i64* %9, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* @SNAP_NORESTORE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %252, label %129

129:                                              ; preds = %120
  %130 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %131 = load i32, i32* %18, align 4
  %132 = call i64 @snap_slot(i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %130, i64 %132
  store %struct.TYPE_35__* %133, %struct.TYPE_35__** %19, align 8
  %134 = load i32, i32* %18, align 4
  %135 = call i64 @snap_ref(i32 %134)
  store i64 %135, i64* %20, align 8
  %136 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_37__*, %struct.TYPE_37__** %137, align 8
  %139 = load i64, i64* %20, align 8
  %140 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %138, i64 %139
  store %struct.TYPE_37__* %140, %struct.TYPE_37__** %21, align 8
  %141 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %142 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @RID_SUNK, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %184

146:                                              ; preds = %129
  store i64 0, i64* %22, align 8
  br label %147

147:                                              ; preds = %171, %146
  %148 = load i64, i64* %22, align 8
  %149 = load i64, i64* %9, align 8
  %150 = icmp ult i64 %148, %149
  br i1 %150, label %151, label %174

151:                                              ; preds = %147
  %152 = load i32*, i32** %11, align 8
  %153 = load i64, i64* %22, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @snap_ref(i32 %155)
  %157 = load i64, i64* %20, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %151
  %160 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %161 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %162 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %163 = load i32*, i32** %11, align 8
  %164 = load i64, i64* %22, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @snap_slot(i32 %166)
  %168 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %162, i64 %167
  %169 = call i32 @copyTV(%struct.TYPE_33__* %160, %struct.TYPE_35__* %161, %struct.TYPE_35__* %168)
  br label %183

170:                                              ; preds = %151
  br label %171

171:                                              ; preds = %170
  %172 = load i64, i64* %22, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %22, align 8
  br label %147

174:                                              ; preds = %147
  %175 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %176 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %177 = load i32*, i32** %5, align 8
  %178 = load i64, i64* %6, align 8
  %179 = load i32, i32* %15, align 4
  %180 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %181 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %182 = call i32 @snap_unsink(%struct.TYPE_34__* %175, %struct.TYPE_38__* %176, i32* %177, i64 %178, i32 %179, %struct.TYPE_37__* %180, %struct.TYPE_35__* %181)
  br label %183

183:                                              ; preds = %174, %159
  br label %253

184:                                              ; preds = %129
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %186 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %187 = load i32*, i32** %5, align 8
  %188 = load i64, i64* %6, align 8
  %189 = load i32, i32* %15, align 4
  %190 = load i64, i64* %20, align 8
  %191 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %192 = call i32 @snap_restoreval(%struct.TYPE_34__* %185, %struct.TYPE_38__* %186, i32* %187, i64 %188, i32 %189, i64 %190, %struct.TYPE_35__* %191)
  %193 = load i64, i64* @LJ_SOFTFP, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %219

195:                                              ; preds = %184
  %196 = load i32, i32* %18, align 4
  %197 = load i32, i32* @SNAP_SOFTFPNUM, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %219

200:                                              ; preds = %195
  %201 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %202 = call i64 @tvisint(%struct.TYPE_35__* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %219

204:                                              ; preds = %200
  %205 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %206 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %207 = load i32*, i32** %5, align 8
  %208 = load i64, i64* %6, align 8
  %209 = load i32, i32* %15, align 4
  %210 = load i64, i64* %20, align 8
  %211 = add i64 %210, 1
  %212 = call i32 @snap_restoreval(%struct.TYPE_34__* %205, %struct.TYPE_38__* %206, i32* %207, i64 %208, i32 %209, i64 %211, %struct.TYPE_35__* %23)
  %213 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %23, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %217 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %217, i32 0, i32 1
  store i32 %215, i32* %218, align 4
  br label %251

219:                                              ; preds = %200, %195, %184
  %220 = load i32, i32* %18, align 4
  %221 = load i32, i32* @SNAP_CONT, align 4
  %222 = load i32, i32* @SNAP_FRAME, align 4
  %223 = or i32 %221, %222
  %224 = and i32 %220, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %250

226:                                              ; preds = %219
  %227 = load i32, i32* @LJ_FR2, align 4
  %228 = icmp ne i32 %227, 0
  %229 = xor i1 %228, true
  %230 = zext i1 %229 to i32
  %231 = call i32 @lua_assert(i32 %230)
  %232 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %233 = load i32, i32* %18, align 4
  %234 = call i64 @snap_slot(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %226
  %237 = load i32*, i32** %12, align 8
  %238 = getelementptr inbounds i32, i32* %237, i32 -1
  store i32* %238, i32** %12, align 8
  %239 = load i32, i32* %237, align 4
  br label %242

240:                                              ; preds = %226
  %241 = load i32, i32* %13, align 4
  br label %242

242:                                              ; preds = %240, %236
  %243 = phi i32 [ %239, %236 ], [ %241, %240 ]
  %244 = call i32 @setframe_ftsz(%struct.TYPE_35__* %232, i32 %243)
  %245 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %246 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %245, i64 1
  %247 = ptrtoint %struct.TYPE_35__* %246 to i64
  %248 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %249 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %248, i32 0, i32 0
  store i64 %247, i64* %249, align 8
  br label %250

250:                                              ; preds = %242, %219
  br label %251

251:                                              ; preds = %250, %204
  br label %252

252:                                              ; preds = %251, %120
  br label %253

253:                                              ; preds = %252, %183
  %254 = load i64, i64* %9, align 8
  %255 = add i64 %254, 1
  store i64 %255, i64* %9, align 8
  br label %116

256:                                              ; preds = %116
  %257 = load i32*, i32** %11, align 8
  %258 = load i64, i64* %10, align 8
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  %260 = load i32*, i32** %12, align 8
  %261 = icmp eq i32* %259, %260
  %262 = zext i1 %261 to i32
  %263 = call i32 @lua_assert(i32 %262)
  %264 = load i32*, i32** %16, align 8
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @bc_op(i32 %265)
  switch i32 %266, label %267 [
    i32 131, label %280
    i32 130, label %280
    i32 129, label %280
    i32 128, label %280
  ]

267:                                              ; preds = %256
  %268 = load i32*, i32** %16, align 8
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @bc_op(i32 %269)
  %271 = load i32, i32* @BC_FUNCF, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %273, label %279

273:                                              ; preds = %267
  %274 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %275 = call i8* @curr_topL(%struct.TYPE_33__* %274)
  %276 = bitcast i8* %275 to %struct.TYPE_35__*
  %277 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %278 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %277, i32 0, i32 1
  store %struct.TYPE_35__* %276, %struct.TYPE_35__** %278, align 8
  br label %289

279:                                              ; preds = %267
  br label %280

280:                                              ; preds = %256, %256, %256, %256, %279
  %281 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %282 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %281, i64 %285
  %287 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %288 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %287, i32 0, i32 1
  store %struct.TYPE_35__* %286, %struct.TYPE_35__** %288, align 8
  br label %289

289:                                              ; preds = %280, %273
  %290 = load i32*, i32** %16, align 8
  ret i32* %290
}

declare dso_local %struct.TYPE_38__* @traceref(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @snap_nextofs(%struct.TYPE_38__*, %struct.TYPE_36__*) #1

declare dso_local i32 @snap_renamefilter(%struct.TYPE_38__*, i64) #1

declare dso_local i32* @snap_pc(i32) #1

declare dso_local i32 @setcframe_pc(i32, i32*) #1

declare dso_local i32 @cframe_raw(i32) #1

declare dso_local i64 @LJ_UNLIKELY(i32) #1

declare dso_local i64 @tvref(i32) #1

declare dso_local i8* @curr_topL(%struct.TYPE_33__*) #1

declare dso_local i32 @lj_state_growstack(%struct.TYPE_33__*, i32) #1

declare dso_local %struct.TYPE_32__* @curr_proto(%struct.TYPE_33__*) #1

declare dso_local i32 @frame_ftsz(%struct.TYPE_35__*) #1

declare dso_local i64 @snap_slot(i32) #1

declare dso_local i64 @snap_ref(i32) #1

declare dso_local i32 @copyTV(%struct.TYPE_33__*, %struct.TYPE_35__*, %struct.TYPE_35__*) #1

declare dso_local i32 @snap_unsink(%struct.TYPE_34__*, %struct.TYPE_38__*, i32*, i64, i32, %struct.TYPE_37__*, %struct.TYPE_35__*) #1

declare dso_local i32 @snap_restoreval(%struct.TYPE_34__*, %struct.TYPE_38__*, i32*, i64, i32, i64, %struct.TYPE_35__*) #1

declare dso_local i64 @tvisint(%struct.TYPE_35__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @setframe_ftsz(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @bc_op(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
