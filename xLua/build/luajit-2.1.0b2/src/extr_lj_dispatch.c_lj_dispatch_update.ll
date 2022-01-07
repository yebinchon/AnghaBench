; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_dispatch.c_lj_dispatch_update.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_dispatch.c_lj_dispatch_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32* }

@LUA_MASKLINE = common dso_local global i32 0, align 4
@LUA_MASKCOUNT = common dso_local global i32 0, align 4
@DISPMODE_INS = common dso_local global i32 0, align 4
@LUA_MASKCALL = common dso_local global i32 0, align 4
@DISPMODE_CALL = common dso_local global i32 0, align 4
@LUA_MASKRET = common dso_local global i32 0, align 4
@DISPMODE_RET = common dso_local global i32 0, align 4
@DISPMODE_JIT = common dso_local global i32 0, align 4
@DISPMODE_REC = common dso_local global i32 0, align 4
@lj_bc_ofs = common dso_local global i32* null, align 8
@BC_FORL = common dso_local global i64 0, align 8
@BC_ITERL = common dso_local global i64 0, align 8
@BC_LOOP = common dso_local global i64 0, align 8
@BC_FUNCF = common dso_local global i64 0, align 8
@BC_FUNCV = common dso_local global i64 0, align 8
@GG_LEN_DDISP = common dso_local global i64 0, align 8
@BC_IFORL = common dso_local global i64 0, align 8
@BC_IITERL = common dso_local global i64 0, align 8
@BC_ILOOP = common dso_local global i64 0, align 8
@BC_IFUNCF = common dso_local global i64 0, align 8
@BC_IFUNCV = common dso_local global i64 0, align 8
@DISPMODE_PROF = common dso_local global i32 0, align 4
@GG_LEN_SDISP = common dso_local global i32 0, align 4
@lj_vm_rethook = common dso_local global i32 0, align 4
@BC_RETM = common dso_local global i64 0, align 8
@BC_RET = common dso_local global i64 0, align 8
@BC_RET0 = common dso_local global i64 0, align 8
@BC_RET1 = common dso_local global i64 0, align 8
@lj_vm_profhook = common dso_local global i32 0, align 4
@lj_vm_record = common dso_local global i32 0, align 4
@lj_vm_inshook = common dso_local global i32 0, align 4
@lj_vm_callhook = common dso_local global i32 0, align 4
@HOOK_PROFILE = common dso_local global i32 0, align 4
@JIT_F_ON = common dso_local global i32 0, align 4
@LJ_TRACE_IDLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_dispatch_update(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @LUA_MASKLINE, align 4
  %21 = load i32, i32* @LUA_MASKCOUNT, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @DISPMODE_INS, align 4
  br label %28

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @LUA_MASKCALL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @DISPMODE_CALL, align 4
  br label %41

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @LUA_MASKRET, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @DISPMODE_RET, align 4
  br label %54

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %378

61:                                               ; preds = %54
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = call %struct.TYPE_10__* @G2GG(%struct.TYPE_8__* %62)
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @DISPMODE_JIT, align 4
  %71 = load i32, i32* @DISPMODE_REC, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = load i32, i32* @DISPMODE_JIT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %102

76:                                               ; preds = %61
  %77 = load i32*, i32** @lj_bc_ofs, align 8
  %78 = load i64, i64* @BC_FORL, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @makeasmfunc(i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32*, i32** @lj_bc_ofs, align 8
  %83 = load i64, i64* @BC_ITERL, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @makeasmfunc(i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32*, i32** @lj_bc_ofs, align 8
  %88 = load i64, i64* @BC_LOOP, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @makeasmfunc(i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32*, i32** @lj_bc_ofs, align 8
  %93 = load i64, i64* @BC_FUNCF, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @makeasmfunc(i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32*, i32** @lj_bc_ofs, align 8
  %98 = load i64, i64* @BC_FUNCV, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @makeasmfunc(i32 %100)
  store i32 %101, i32* %10, align 4
  br label %131

102:                                              ; preds = %61
  %103 = load i32*, i32** %5, align 8
  %104 = load i64, i64* @GG_LEN_DDISP, align 8
  %105 = load i64, i64* @BC_IFORL, align 8
  %106 = add i64 %104, %105
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %6, align 4
  %109 = load i32*, i32** %5, align 8
  %110 = load i64, i64* @GG_LEN_DDISP, align 8
  %111 = load i64, i64* @BC_IITERL, align 8
  %112 = add i64 %110, %111
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %7, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = load i64, i64* @GG_LEN_DDISP, align 8
  %117 = load i64, i64* @BC_ILOOP, align 8
  %118 = add i64 %116, %117
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %8, align 4
  %121 = load i32*, i32** @lj_bc_ofs, align 8
  %122 = load i64, i64* @BC_IFUNCF, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @makeasmfunc(i32 %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32*, i32** @lj_bc_ofs, align 8
  %127 = load i64, i64* @BC_IFUNCV, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @makeasmfunc(i32 %129)
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %102, %76
  %132 = load i32, i32* %6, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = load i64, i64* @GG_LEN_DDISP, align 8
  %135 = load i64, i64* @BC_FORL, align 8
  %136 = add i64 %134, %135
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  store i32 %132, i32* %137, align 4
  %138 = load i32, i32* %7, align 4
  %139 = load i32*, i32** %5, align 8
  %140 = load i64, i64* @GG_LEN_DDISP, align 8
  %141 = load i64, i64* @BC_ITERL, align 8
  %142 = add i64 %140, %141
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  store i32 %138, i32* %143, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i32*, i32** %5, align 8
  %146 = load i64, i64* @GG_LEN_DDISP, align 8
  %147 = load i64, i64* @BC_LOOP, align 8
  %148 = add i64 %146, %147
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  store i32 %144, i32* %149, align 4
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* %4, align 4
  %152 = xor i32 %150, %151
  %153 = load i32, i32* @DISPMODE_PROF, align 4
  %154 = load i32, i32* @DISPMODE_REC, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @DISPMODE_INS, align 4
  %157 = or i32 %155, %156
  %158 = and i32 %152, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %233

160:                                              ; preds = %131
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @DISPMODE_INS, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %198, label %165

165:                                              ; preds = %160
  %166 = load i32*, i32** %5, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32*, i32** %5, align 8
  %169 = load i64, i64* @GG_LEN_DDISP, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load i32, i32* @GG_LEN_SDISP, align 4
  %172 = sext i32 %171 to i64
  %173 = mul i64 %172, 4
  %174 = trunc i64 %173 to i32
  %175 = call i32 @memcpy(i32* %167, i32* %170, i32 %174)
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @DISPMODE_RET, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %197

180:                                              ; preds = %165
  %181 = load i32, i32* @lj_vm_rethook, align 4
  %182 = load i32*, i32** %5, align 8
  %183 = load i64, i64* @BC_RETM, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32 %181, i32* %184, align 4
  %185 = load i32, i32* @lj_vm_rethook, align 4
  %186 = load i32*, i32** %5, align 8
  %187 = load i64, i64* @BC_RET, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32 %185, i32* %188, align 4
  %189 = load i32, i32* @lj_vm_rethook, align 4
  %190 = load i32*, i32** %5, align 8
  %191 = load i64, i64* @BC_RET0, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  store i32 %189, i32* %192, align 4
  %193 = load i32, i32* @lj_vm_rethook, align 4
  %194 = load i32*, i32** %5, align 8
  %195 = load i64, i64* @BC_RET1, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  store i32 %193, i32* %196, align 4
  br label %197

197:                                              ; preds = %180, %165
  br label %232

198:                                              ; preds = %160
  %199 = load i32, i32* %4, align 4
  %200 = load i32, i32* @DISPMODE_PROF, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i32, i32* @lj_vm_profhook, align 4
  br label %216

205:                                              ; preds = %198
  %206 = load i32, i32* %4, align 4
  %207 = load i32, i32* @DISPMODE_REC, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = load i32, i32* @lj_vm_record, align 4
  br label %214

212:                                              ; preds = %205
  %213 = load i32, i32* @lj_vm_inshook, align 4
  br label %214

214:                                              ; preds = %212, %210
  %215 = phi i32 [ %211, %210 ], [ %213, %212 ]
  br label %216

216:                                              ; preds = %214, %203
  %217 = phi i32 [ %204, %203 ], [ %215, %214 ]
  store i32 %217, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %218

218:                                              ; preds = %228, %216
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* @GG_LEN_SDISP, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %231

222:                                              ; preds = %218
  %223 = load i32, i32* %11, align 4
  %224 = load i32*, i32** %5, align 8
  %225 = load i32, i32* %12, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  store i32 %223, i32* %227, align 4
  br label %228

228:                                              ; preds = %222
  %229 = load i32, i32* %12, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %12, align 4
  br label %218

231:                                              ; preds = %218
  br label %232

232:                                              ; preds = %231, %197
  br label %311

233:                                              ; preds = %131
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* @DISPMODE_INS, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %310, label %238

238:                                              ; preds = %233
  %239 = load i32, i32* %6, align 4
  %240 = load i32*, i32** %5, align 8
  %241 = load i64, i64* @BC_FORL, align 8
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  store i32 %239, i32* %242, align 4
  %243 = load i32, i32* %7, align 4
  %244 = load i32*, i32** %5, align 8
  %245 = load i64, i64* @BC_ITERL, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  store i32 %243, i32* %246, align 4
  %247 = load i32, i32* %8, align 4
  %248 = load i32*, i32** %5, align 8
  %249 = load i64, i64* @BC_LOOP, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  store i32 %247, i32* %250, align 4
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* @DISPMODE_RET, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %272

255:                                              ; preds = %238
  %256 = load i32, i32* @lj_vm_rethook, align 4
  %257 = load i32*, i32** %5, align 8
  %258 = load i64, i64* @BC_RETM, align 8
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  store i32 %256, i32* %259, align 4
  %260 = load i32, i32* @lj_vm_rethook, align 4
  %261 = load i32*, i32** %5, align 8
  %262 = load i64, i64* @BC_RET, align 8
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  store i32 %260, i32* %263, align 4
  %264 = load i32, i32* @lj_vm_rethook, align 4
  %265 = load i32*, i32** %5, align 8
  %266 = load i64, i64* @BC_RET0, align 8
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  store i32 %264, i32* %267, align 4
  %268 = load i32, i32* @lj_vm_rethook, align 4
  %269 = load i32*, i32** %5, align 8
  %270 = load i64, i64* @BC_RET1, align 8
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  store i32 %268, i32* %271, align 4
  br label %309

272:                                              ; preds = %238
  %273 = load i32*, i32** %5, align 8
  %274 = load i64, i64* @GG_LEN_DDISP, align 8
  %275 = load i64, i64* @BC_RETM, align 8
  %276 = add i64 %274, %275
  %277 = getelementptr inbounds i32, i32* %273, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = load i32*, i32** %5, align 8
  %280 = load i64, i64* @BC_RETM, align 8
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  store i32 %278, i32* %281, align 4
  %282 = load i32*, i32** %5, align 8
  %283 = load i64, i64* @GG_LEN_DDISP, align 8
  %284 = load i64, i64* @BC_RET, align 8
  %285 = add i64 %283, %284
  %286 = getelementptr inbounds i32, i32* %282, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load i32*, i32** %5, align 8
  %289 = load i64, i64* @BC_RET, align 8
  %290 = getelementptr inbounds i32, i32* %288, i64 %289
  store i32 %287, i32* %290, align 4
  %291 = load i32*, i32** %5, align 8
  %292 = load i64, i64* @GG_LEN_DDISP, align 8
  %293 = load i64, i64* @BC_RET0, align 8
  %294 = add i64 %292, %293
  %295 = getelementptr inbounds i32, i32* %291, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = load i32*, i32** %5, align 8
  %298 = load i64, i64* @BC_RET0, align 8
  %299 = getelementptr inbounds i32, i32* %297, i64 %298
  store i32 %296, i32* %299, align 4
  %300 = load i32*, i32** %5, align 8
  %301 = load i64, i64* @GG_LEN_DDISP, align 8
  %302 = load i64, i64* @BC_RET1, align 8
  %303 = add i64 %301, %302
  %304 = getelementptr inbounds i32, i32* %300, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32*, i32** %5, align 8
  %307 = load i64, i64* @BC_RET1, align 8
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  store i32 %305, i32* %308, align 4
  br label %309

309:                                              ; preds = %272, %255
  br label %310

310:                                              ; preds = %309, %233
  br label %311

311:                                              ; preds = %310, %232
  %312 = load i32, i32* %3, align 4
  %313 = load i32, i32* %4, align 4
  %314 = xor i32 %312, %313
  %315 = load i32, i32* @DISPMODE_CALL, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %363

318:                                              ; preds = %311
  %319 = load i32, i32* %4, align 4
  %320 = load i32, i32* @DISPMODE_CALL, align 4
  %321 = and i32 %319, %320
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %345

323:                                              ; preds = %318
  %324 = load i32, i32* @GG_LEN_SDISP, align 4
  store i32 %324, i32* %13, align 4
  br label %325

325:                                              ; preds = %341, %323
  %326 = load i32, i32* %13, align 4
  %327 = sext i32 %326 to i64
  %328 = load i64, i64* @GG_LEN_DDISP, align 8
  %329 = icmp ult i64 %327, %328
  br i1 %329, label %330, label %344

330:                                              ; preds = %325
  %331 = load i32*, i32** @lj_bc_ofs, align 8
  %332 = load i32, i32* %13, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @makeasmfunc(i32 %335)
  %337 = load i32*, i32** %5, align 8
  %338 = load i32, i32* %13, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  store i32 %336, i32* %340, align 4
  br label %341

341:                                              ; preds = %330
  %342 = load i32, i32* %13, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %13, align 4
  br label %325

344:                                              ; preds = %325
  br label %362

345:                                              ; preds = %318
  %346 = load i32, i32* @GG_LEN_SDISP, align 4
  store i32 %346, i32* %13, align 4
  br label %347

347:                                              ; preds = %358, %345
  %348 = load i32, i32* %13, align 4
  %349 = sext i32 %348 to i64
  %350 = load i64, i64* @GG_LEN_DDISP, align 8
  %351 = icmp ult i64 %349, %350
  br i1 %351, label %352, label %361

352:                                              ; preds = %347
  %353 = load i32, i32* @lj_vm_callhook, align 4
  %354 = load i32*, i32** %5, align 8
  %355 = load i32, i32* %13, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  store i32 %353, i32* %357, align 4
  br label %358

358:                                              ; preds = %352
  %359 = load i32, i32* %13, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %13, align 4
  br label %347

361:                                              ; preds = %347
  br label %362

362:                                              ; preds = %361, %344
  br label %363

363:                                              ; preds = %362, %311
  %364 = load i32, i32* %4, align 4
  %365 = load i32, i32* @DISPMODE_CALL, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %377, label %368

368:                                              ; preds = %363
  %369 = load i32, i32* %9, align 4
  %370 = load i32*, i32** %5, align 8
  %371 = load i64, i64* @BC_FUNCF, align 8
  %372 = getelementptr inbounds i32, i32* %370, i64 %371
  store i32 %369, i32* %372, align 4
  %373 = load i32, i32* %10, align 4
  %374 = load i32*, i32** %5, align 8
  %375 = load i64, i64* @BC_FUNCV, align 8
  %376 = getelementptr inbounds i32, i32* %374, i64 %375
  store i32 %373, i32* %376, align 4
  br label %377

377:                                              ; preds = %368, %363
  br label %378

378:                                              ; preds = %377, %54
  ret void
}

declare dso_local %struct.TYPE_10__* @G2GG(%struct.TYPE_8__*) #1

declare dso_local i32 @makeasmfunc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
