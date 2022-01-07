; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_lj_record_idx.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_lj_record_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64*, i32, i32, i8*, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_28__ = type { i64, i64, i64, i64, i64, i32, i32*, i32, i32, i32 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_29__ = type { i32 }

@MM_newindex = common dso_local global i32 0, align 4
@MM_index = common dso_local global i32 0, align 4
@LJ_TRERR_NOMM = common dso_local global i32 0, align 4
@lj_cont_nop = common dso_local global i32 0, align 4
@lj_cont_ra = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i32 0, align 4
@LJ_TRERR_IDXLOOP = common dso_local global i32 0, align 4
@LJ_TRERR_STORENN = common dso_local global i32 0, align 4
@TREF_NIL = common dso_local global i64 0, align 8
@IR_AREF = common dso_local global i64 0, align 8
@IR_ALOAD = common dso_local global i64 0, align 8
@IR_HLOAD = common dso_local global i64 0, align 8
@IR_KKPTR = common dso_local global i64 0, align 8
@IR_EQ = common dso_local global i64 0, align 8
@IRT_P32 = common dso_local global i64 0, align 8
@IRT_NIL = common dso_local global i64 0, align 8
@IR_HREF = common dso_local global i64 0, align 8
@IR_NE = common dso_local global i64 0, align 8
@IR_CONV = common dso_local global i32 0, align 4
@IRCONV_NUM_INT = common dso_local global i64 0, align 8
@IR_NEWREF = common dso_local global i64 0, align 8
@IR_FLOAD = common dso_local global i64 0, align 8
@IRT_TAB = common dso_local global i64 0, align 8
@IRFL_TAB_META = common dso_local global i64 0, align 8
@LJ_DUALNUM = common dso_local global i32 0, align 4
@IRDELTA_L2S = common dso_local global i64 0, align 8
@IR_TBAR = common dso_local global i64 0, align 8
@IR_FREF = common dso_local global i64 0, align 8
@IRFL_TAB_NOMM = common dso_local global i64 0, align 8
@IR_FSTORE = common dso_local global i64 0, align 8
@IRT_U8 = common dso_local global i64 0, align 8
@JIT_F_OPT_SINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lj_record_idx(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  br label %25

25:                                               ; preds = %184, %2
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @tref_istab(i64 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %185

32:                                               ; preds = %25
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @lua_assert(i32 %37)
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* @MM_newindex, align 4
  br label %49

47:                                               ; preds = %32
  %48 = load i32, i32* @MM_index, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = call i64 @lj_record_mm_lookup(%struct.TYPE_26__* %39, %struct.TYPE_28__* %40, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %55 = load i32, i32* @LJ_TRERR_NOMM, align 4
  %56 = call i32 @lj_trace_err(%struct.TYPE_26__* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %439, %321, %226, %57
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @tref_isfunc(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %161

64:                                               ; preds = %58
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @lj_cont_nop, align 4
  br label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @lj_cont_ra, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = call i32 @rec_mm_prep(%struct.TYPE_26__* %65, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  store i64* %82, i64** %13, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32* %90, i32** %14, align 8
  %91 = load i32, i32* @LJ_FR2, align 4
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @lua_assert(i32 %94)
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %13, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  store i64 %98, i64* %100, align 8
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %13, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %13, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 2
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %112, align 8
  %114 = load i32*, i32** %14, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 8
  %118 = call i32 @funcV(i32* %117)
  %119 = call i32 @setfuncV(%struct.TYPE_30__* %113, i32* %115, i32 %118)
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %121, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 5
  %127 = call i32 @copyTV(%struct.TYPE_30__* %122, i32* %124, i32* %126)
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %129, align 8
  %131 = load i32*, i32** %14, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 7
  %135 = call i32 @copyTV(%struct.TYPE_30__* %130, i32* %132, i32* %134)
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %74
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64*, i64** %13, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 3
  store i64 %143, i64* %145, align 8
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 4
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %147, align 8
  %149 = load i32*, i32** %14, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 3
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 9
  %153 = call i32 @copyTV(%struct.TYPE_30__* %148, i32* %150, i32* %152)
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @lj_record_call(%struct.TYPE_26__* %154, i32 %155, i32 3)
  store i64 0, i64* %3, align 8
  br label %615

157:                                              ; preds = %74
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @lj_record_call(%struct.TYPE_26__* %158, i32 %159, i32 2)
  store i64 0, i64* %3, align 8
  br label %615

161:                                              ; preds = %58
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_30__*, %struct.TYPE_30__** %168, align 8
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 5
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 8
  %174 = call i32 @copyTV(%struct.TYPE_30__* %169, i32* %171, i32* %173)
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, -1
  store i64 %178, i64* %176, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %161
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %182 = load i32, i32* @LJ_TRERR_IDXLOOP, align 4
  %183 = call i32 @lj_trace_err(%struct.TYPE_26__* %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %161
  br label %25

185:                                              ; preds = %25
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 7
  %188 = call i64 @tvisnil(i32* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %200, label %190

190:                                              ; preds = %185
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 7
  %193 = call i64 @tvisnum(i32* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %230

195:                                              ; preds = %190
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 7
  %198 = call i64 @tvisnan(i32* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %230

200:                                              ; preds = %195, %185
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %207 = load i32, i32* @LJ_TRERR_STORENN, align 4
  %208 = call i32 @lj_trace_err(%struct.TYPE_26__* %206, i32 %207)
  br label %209

209:                                              ; preds = %205, %200
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = call i64 @tref_isk(i64 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %229

215:                                              ; preds = %209
  %216 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %215
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %223 = load i32, i32* @MM_index, align 4
  %224 = call i64 @lj_record_mm_lookup(%struct.TYPE_26__* %221, %struct.TYPE_28__* %222, i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %220
  br label %58

227:                                              ; preds = %220, %215
  %228 = load i64, i64* @TREF_NIL, align 8
  store i64 %228, i64* %3, align 8
  br label %615

229:                                              ; preds = %209
  br label %230

230:                                              ; preds = %229, %195, %190
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %232 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %233 = call i64 @rec_idx_key(%struct.TYPE_26__* %231, %struct.TYPE_28__* %232, i64* %9, i8** %10)
  store i64 %233, i64* %6, align 8
  %234 = load i64, i64* %6, align 8
  %235 = call i64 @tref_ref(i64 %234)
  %236 = call %struct.TYPE_27__* @IR(i64 %235)
  %237 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %7, align 8
  %239 = load i64, i64* %7, align 8
  %240 = load i64, i64* @IR_AREF, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %230
  %243 = load i64, i64* @IR_ALOAD, align 8
  br label %246

244:                                              ; preds = %230
  %245 = load i64, i64* @IR_HLOAD, align 8
  br label %246

246:                                              ; preds = %244, %242
  %247 = phi i64 [ %243, %242 ], [ %245, %244 ]
  store i64 %247, i64* %8, align 8
  %248 = load i64, i64* %7, align 8
  %249 = load i64, i64* @IR_KKPTR, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %257

251:                                              ; preds = %246
  %252 = load i64, i64* %6, align 8
  %253 = call i64 @tref_ref(i64 %252)
  %254 = call %struct.TYPE_27__* @IR(i64 %253)
  %255 = call i64 @ir_kptr(%struct.TYPE_27__* %254)
  %256 = inttoptr i64 %255 to i32*
  br label %261

257:                                              ; preds = %246
  %258 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %258, i32 0, i32 6
  %260 = load i32*, i32** %259, align 8
  br label %261

261:                                              ; preds = %257, %251
  %262 = phi i32* [ %256, %251 ], [ %260, %257 ]
  store i32* %262, i32** %11, align 8
  %263 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %331

267:                                              ; preds = %261
  %268 = load i32*, i32** %11, align 8
  %269 = call i64 @itype2irt(i32* %268)
  store i64 %269, i64* %15, align 8
  %270 = load i32*, i32** %11, align 8
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %272 = call i32 @J2G(%struct.TYPE_26__* %271)
  %273 = call i32* @niltvg(i32 %272)
  %274 = icmp eq i32* %270, %273
  br i1 %274, label %275, label %287

275:                                              ; preds = %267
  %276 = load i64, i64* @IR_EQ, align 8
  %277 = load i64, i64* @IRT_P32, align 8
  %278 = call i32 @IRTG(i64 %276, i64 %277)
  %279 = load i64, i64* %6, align 8
  %280 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %281 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %282 = call i32 @J2G(%struct.TYPE_26__* %281)
  %283 = call i32* @niltvg(i32 %282)
  %284 = call i64 @lj_ir_kkptr(%struct.TYPE_26__* %280, i32* %283)
  %285 = call i8* @emitir(i32 %278, i64 %279, i64 %284)
  %286 = load i64, i64* @TREF_NIL, align 8
  store i64 %286, i64* %16, align 8
  br label %294

287:                                              ; preds = %267
  %288 = load i64, i64* %8, align 8
  %289 = load i64, i64* %15, align 8
  %290 = call i32 @IRTG(i64 %288, i64 %289)
  %291 = load i64, i64* %6, align 8
  %292 = call i8* @emitir(i32 %290, i64 %291, i64 0)
  %293 = ptrtoint i8* %292 to i64
  store i64 %293, i64* %16, align 8
  br label %294

294:                                              ; preds = %287, %275
  %295 = load i64, i64* %16, align 8
  %296 = call i64 @tref_ref(i64 %295)
  %297 = load i64, i64* %9, align 8
  %298 = icmp slt i64 %296, %297
  br i1 %298, label %299, label %306

299:                                              ; preds = %294
  %300 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %301 = load i64, i64* %9, align 8
  %302 = call i32 @lj_ir_rollback(%struct.TYPE_26__* %300, i64 %301)
  %303 = load i8*, i8** %10, align 8
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %304, i32 0, i32 3
  store i8* %303, i8** %305, align 8
  br label %306

306:                                              ; preds = %299, %294
  %307 = load i64, i64* %15, align 8
  %308 = load i64, i64* @IRT_NIL, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %322

310:                                              ; preds = %306
  %311 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %322

315:                                              ; preds = %310
  %316 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %317 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %318 = load i32, i32* @MM_index, align 4
  %319 = call i64 @lj_record_mm_lookup(%struct.TYPE_26__* %316, %struct.TYPE_28__* %317, i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %315
  br label %58

322:                                              ; preds = %315, %310, %306
  %323 = load i64, i64* %15, align 8
  %324 = call i64 @irtype_ispri(i64 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %322
  %327 = load i64, i64* %15, align 8
  %328 = call i64 @TREF_PRI(i64 %327)
  store i64 %328, i64* %16, align 8
  br label %329

329:                                              ; preds = %326, %322
  %330 = load i64, i64* %16, align 8
  store i64 %330, i64* %3, align 8
  br label %615

331:                                              ; preds = %261
  %332 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %332, i32 0, i32 5
  %334 = call %struct.TYPE_29__* @tabV(i32* %333)
  %335 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = call i32* @tabref(i32 %336)
  store i32* %337, i32** %17, align 8
  %338 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %338, i32 0, i32 4
  %340 = load i64, i64* %339, align 8
  %341 = call i64 @tref_isgcv(i64 %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %350

343:                                              ; preds = %331
  %344 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %344, i32 0, i32 2
  %346 = load i64, i64* %345, align 8
  %347 = call i32 @tref_isnil(i64 %346)
  %348 = icmp ne i32 %347, 0
  %349 = xor i1 %348, true
  br label %350

350:                                              ; preds = %343, %331
  %351 = phi i1 [ false, %331 ], [ %349, %343 ]
  %352 = zext i1 %351 to i32
  store i32 %352, i32* %18, align 4
  %353 = load i64, i64* %6, align 8
  %354 = call i64 @tref_ref(i64 %353)
  %355 = load i64, i64* %9, align 8
  %356 = icmp slt i64 %354, %355
  br i1 %356, label %357, label %364

357:                                              ; preds = %350
  %358 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %359 = load i64, i64* %9, align 8
  %360 = call i32 @lj_ir_rollback(%struct.TYPE_26__* %358, i64 %359)
  %361 = load i8*, i8** %10, align 8
  %362 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %362, i32 0, i32 3
  store i8* %361, i8** %363, align 8
  br label %364

364:                                              ; preds = %357, %350
  %365 = load i32*, i32** %11, align 8
  %366 = call i64 @tvisnil(i32* %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %478

368:                                              ; preds = %364
  store i32 0, i32* %19, align 4
  %369 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %393

373:                                              ; preds = %368
  %374 = load i32*, i32** %17, align 8
  %375 = icmp ne i32* %374, null
  br i1 %375, label %376, label %393

376:                                              ; preds = %373
  %377 = load i32*, i32** %17, align 8
  %378 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %379 = call i32 @J2G(%struct.TYPE_26__* %378)
  %380 = load i32, i32* @MM_newindex, align 4
  %381 = call i32 @mmname_str(i32 %379, i32 %380)
  %382 = call i32* @lj_tab_getstr(i32* %377, i32 %381)
  store i32* %382, i32** %20, align 8
  %383 = load i32*, i32** %20, align 8
  %384 = icmp ne i32* %383, null
  br i1 %384, label %385, label %390

385:                                              ; preds = %376
  %386 = load i32*, i32** %20, align 8
  %387 = call i64 @tvisnil(i32* %386)
  %388 = icmp ne i64 %387, 0
  %389 = xor i1 %388, true
  br label %390

390:                                              ; preds = %385, %376
  %391 = phi i1 [ false, %376 ], [ %389, %385 ]
  %392 = zext i1 %391 to i32
  store i32 %392, i32* %19, align 4
  br label %393

393:                                              ; preds = %390, %373, %368
  %394 = load i32, i32* %19, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %402

396:                                              ; preds = %393
  %397 = load i64, i64* %8, align 8
  %398 = load i64, i64* @IRT_NIL, align 8
  %399 = call i32 @IRTG(i64 %397, i64 %398)
  %400 = load i64, i64* %6, align 8
  %401 = call i8* @emitir(i32 %399, i64 %400, i64 0)
  br label %428

402:                                              ; preds = %393
  %403 = load i64, i64* %7, align 8
  %404 = load i64, i64* @IR_HREF, align 8
  %405 = icmp eq i64 %403, %404
  br i1 %405, label %406, label %427

406:                                              ; preds = %402
  %407 = load i32*, i32** %11, align 8
  %408 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %409 = call i32 @J2G(%struct.TYPE_26__* %408)
  %410 = call i32* @niltvg(i32 %409)
  %411 = icmp eq i32* %407, %410
  br i1 %411, label %412, label %414

412:                                              ; preds = %406
  %413 = load i64, i64* @IR_EQ, align 8
  br label %416

414:                                              ; preds = %406
  %415 = load i64, i64* @IR_NE, align 8
  br label %416

416:                                              ; preds = %414, %412
  %417 = phi i64 [ %413, %412 ], [ %415, %414 ]
  %418 = load i64, i64* @IRT_P32, align 8
  %419 = call i32 @IRTG(i64 %417, i64 %418)
  %420 = load i64, i64* %6, align 8
  %421 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %422 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %423 = call i32 @J2G(%struct.TYPE_26__* %422)
  %424 = call i32* @niltvg(i32 %423)
  %425 = call i64 @lj_ir_kkptr(%struct.TYPE_26__* %421, i32* %424)
  %426 = call i8* @emitir(i32 %419, i64 %420, i64 %425)
  br label %427

427:                                              ; preds = %416, %402
  br label %428

428:                                              ; preds = %427, %396
  %429 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %429, i32 0, i32 1
  %431 = load i64, i64* %430, align 8
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %442

433:                                              ; preds = %428
  %434 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %435 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %436 = load i32, i32* @MM_newindex, align 4
  %437 = call i64 @lj_record_mm_lookup(%struct.TYPE_26__* %434, %struct.TYPE_28__* %435, i32 %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %442

439:                                              ; preds = %433
  %440 = load i32, i32* %19, align 4
  %441 = call i32 @lua_assert(i32 %440)
  br label %58

442:                                              ; preds = %433, %428
  %443 = load i32, i32* %19, align 4
  %444 = icmp ne i32 %443, 0
  %445 = xor i1 %444, true
  %446 = zext i1 %445 to i32
  %447 = call i32 @lua_assert(i32 %446)
  %448 = load i32*, i32** %11, align 8
  %449 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %450 = call i32 @J2G(%struct.TYPE_26__* %449)
  %451 = call i32* @niltvg(i32 %450)
  %452 = icmp eq i32* %448, %451
  br i1 %452, label %453, label %477

453:                                              ; preds = %442
  %454 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %455 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %454, i32 0, i32 4
  %456 = load i64, i64* %455, align 8
  store i64 %456, i64* %21, align 8
  %457 = load i64, i64* %21, align 8
  %458 = call i64 @tref_isinteger(i64 %457)
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %467

460:                                              ; preds = %453
  %461 = load i32, i32* @IR_CONV, align 4
  %462 = call i32 @IRTN(i32 %461)
  %463 = load i64, i64* %21, align 8
  %464 = load i64, i64* @IRCONV_NUM_INT, align 8
  %465 = call i8* @emitir(i32 %462, i64 %463, i64 %464)
  %466 = ptrtoint i8* %465 to i64
  store i64 %466, i64* %21, align 8
  br label %467

467:                                              ; preds = %460, %453
  %468 = load i64, i64* @IR_NEWREF, align 8
  %469 = load i64, i64* @IRT_P32, align 8
  %470 = call i32 @IRT(i64 %468, i64 %469)
  %471 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %472 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = load i64, i64* %21, align 8
  %475 = call i8* @emitir(i32 %470, i64 %473, i64 %474)
  %476 = ptrtoint i8* %475 to i64
  store i64 %476, i64* %6, align 8
  store i32 0, i32* %18, align 4
  br label %477

477:                                              ; preds = %467, %442
  br label %538

478:                                              ; preds = %364
  %479 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %480 = load i64, i64* %8, align 8
  %481 = load i64, i64* %6, align 8
  %482 = call i64 @tref_ref(i64 %481)
  %483 = call i32 @lj_opt_fwd_wasnonnil(%struct.TYPE_26__* %479, i64 %480, i64 %482)
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %536, label %485

485:                                              ; preds = %478
  %486 = load i64, i64* %7, align 8
  %487 = load i64, i64* @IR_HREF, align 8
  %488 = icmp eq i64 %486, %487
  br i1 %488, label %489, label %500

489:                                              ; preds = %485
  %490 = load i64, i64* @IR_NE, align 8
  %491 = load i64, i64* @IRT_P32, align 8
  %492 = call i32 @IRTG(i64 %490, i64 %491)
  %493 = load i64, i64* %6, align 8
  %494 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %495 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %496 = call i32 @J2G(%struct.TYPE_26__* %495)
  %497 = call i32* @niltvg(i32 %496)
  %498 = call i64 @lj_ir_kkptr(%struct.TYPE_26__* %494, i32* %497)
  %499 = call i8* @emitir(i32 %492, i64 %493, i64 %498)
  br label %500

500:                                              ; preds = %489, %485
  %501 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %502 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %501, i32 0, i32 1
  %503 = load i64, i64* %502, align 8
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %505, label %535

505:                                              ; preds = %500
  %506 = load i32*, i32** %17, align 8
  %507 = icmp ne i32* %506, null
  br i1 %507, label %526, label %508

508:                                              ; preds = %505
  %509 = load i64, i64* @IR_FLOAD, align 8
  %510 = load i64, i64* @IRT_TAB, align 8
  %511 = call i32 @IRT(i64 %509, i64 %510)
  %512 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %513 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %512, i32 0, i32 0
  %514 = load i64, i64* %513, align 8
  %515 = load i64, i64* @IRFL_TAB_META, align 8
  %516 = call i8* @emitir(i32 %511, i64 %514, i64 %515)
  %517 = ptrtoint i8* %516 to i64
  store i64 %517, i64* %22, align 8
  %518 = load i64, i64* @IR_EQ, align 8
  %519 = load i64, i64* @IRT_TAB, align 8
  %520 = call i32 @IRTG(i64 %518, i64 %519)
  %521 = load i64, i64* %22, align 8
  %522 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %523 = load i64, i64* @IRT_TAB, align 8
  %524 = call i64 @lj_ir_knull(%struct.TYPE_26__* %522, i64 %523)
  %525 = call i8* @emitir(i32 %520, i64 %521, i64 %524)
  br label %534

526:                                              ; preds = %505
  %527 = load i32*, i32** %11, align 8
  %528 = call i64 @itype2irt(i32* %527)
  store i64 %528, i64* %23, align 8
  %529 = load i64, i64* %8, align 8
  %530 = load i64, i64* %23, align 8
  %531 = call i32 @IRTG(i64 %529, i64 %530)
  %532 = load i64, i64* %6, align 8
  %533 = call i8* @emitir(i32 %531, i64 %532, i64 0)
  br label %534

534:                                              ; preds = %526, %508
  br label %535

535:                                              ; preds = %534, %500
  br label %537

536:                                              ; preds = %478
  store i32 0, i32* %18, align 4
  br label %537

537:                                              ; preds = %536, %535
  br label %538

538:                                              ; preds = %537, %477
  %539 = load i32, i32* @LJ_DUALNUM, align 4
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %558, label %541

541:                                              ; preds = %538
  %542 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %543 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %542, i32 0, i32 2
  %544 = load i64, i64* %543, align 8
  %545 = call i64 @tref_isinteger(i64 %544)
  %546 = icmp ne i64 %545, 0
  br i1 %546, label %547, label %558

547:                                              ; preds = %541
  %548 = load i32, i32* @IR_CONV, align 4
  %549 = call i32 @IRTN(i32 %548)
  %550 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %551 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %550, i32 0, i32 2
  %552 = load i64, i64* %551, align 8
  %553 = load i64, i64* @IRCONV_NUM_INT, align 8
  %554 = call i8* @emitir(i32 %549, i64 %552, i64 %553)
  %555 = ptrtoint i8* %554 to i64
  %556 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %557 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %556, i32 0, i32 2
  store i64 %555, i64* %557, align 8
  br label %558

558:                                              ; preds = %547, %541, %538
  %559 = load i64, i64* %8, align 8
  %560 = load i64, i64* @IRDELTA_L2S, align 8
  %561 = add nsw i64 %559, %560
  %562 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %563 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %562, i32 0, i32 2
  %564 = load i64, i64* %563, align 8
  %565 = call i64 @tref_type(i64 %564)
  %566 = call i32 @IRT(i64 %561, i64 %565)
  %567 = load i64, i64* %6, align 8
  %568 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %569 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %568, i32 0, i32 2
  %570 = load i64, i64* %569, align 8
  %571 = call i8* @emitir(i32 %566, i64 %567, i64 %570)
  %572 = load i32, i32* %18, align 4
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %580, label %574

574:                                              ; preds = %558
  %575 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %576 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %575, i32 0, i32 2
  %577 = load i64, i64* %576, align 8
  %578 = call i64 @tref_isgcv(i64 %577)
  %579 = icmp ne i64 %578, 0
  br i1 %579, label %580, label %588

580:                                              ; preds = %574, %558
  %581 = load i64, i64* @IR_TBAR, align 8
  %582 = load i64, i64* @IRT_NIL, align 8
  %583 = call i32 @IRT(i64 %581, i64 %582)
  %584 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %585 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %584, i32 0, i32 0
  %586 = load i64, i64* %585, align 8
  %587 = call i8* @emitir(i32 %583, i64 %586, i64 0)
  br label %588

588:                                              ; preds = %580, %574
  %589 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %590 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %591 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %590, i32 0, i32 4
  %592 = load i64, i64* %591, align 8
  %593 = call i32 @nommstr(%struct.TYPE_26__* %589, i64 %592)
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %612, label %595

595:                                              ; preds = %588
  %596 = load i64, i64* @IR_FREF, align 8
  %597 = load i64, i64* @IRT_P32, align 8
  %598 = call i32 @IRT(i64 %596, i64 %597)
  %599 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %600 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %599, i32 0, i32 0
  %601 = load i64, i64* %600, align 8
  %602 = load i64, i64* @IRFL_TAB_NOMM, align 8
  %603 = call i8* @emitir(i32 %598, i64 %601, i64 %602)
  %604 = ptrtoint i8* %603 to i64
  store i64 %604, i64* %24, align 8
  %605 = load i64, i64* @IR_FSTORE, align 8
  %606 = load i64, i64* @IRT_U8, align 8
  %607 = call i32 @IRT(i64 %605, i64 %606)
  %608 = load i64, i64* %24, align 8
  %609 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %610 = call i64 @lj_ir_kint(%struct.TYPE_26__* %609, i32 0)
  %611 = call i8* @emitir(i32 %607, i64 %608, i64 %610)
  br label %612

612:                                              ; preds = %595, %588
  %613 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %614 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %613, i32 0, i32 2
  store i32 1, i32* %614, align 4
  store i64 0, i64* %3, align 8
  br label %615

615:                                              ; preds = %612, %329, %227, %157, %140
  %616 = load i64, i64* %3, align 8
  ret i64 %616
}

declare dso_local i32 @tref_istab(i64) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @lj_record_mm_lookup(%struct.TYPE_26__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @tref_isfunc(i64) #1

declare dso_local i32 @rec_mm_prep(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @setfuncV(%struct.TYPE_30__*, i32*, i32) #1

declare dso_local i32 @funcV(i32*) #1

declare dso_local i32 @copyTV(%struct.TYPE_30__*, i32*, i32*) #1

declare dso_local i32 @lj_record_call(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i64 @tvisnil(i32*) #1

declare dso_local i64 @tvisnum(i32*) #1

declare dso_local i64 @tvisnan(i32*) #1

declare dso_local i64 @tref_isk(i64) #1

declare dso_local i64 @rec_idx_key(%struct.TYPE_26__*, %struct.TYPE_28__*, i64*, i8**) #1

declare dso_local %struct.TYPE_27__* @IR(i64) #1

declare dso_local i64 @tref_ref(i64) #1

declare dso_local i64 @ir_kptr(%struct.TYPE_27__*) #1

declare dso_local i64 @itype2irt(i32*) #1

declare dso_local i32* @niltvg(i32) #1

declare dso_local i32 @J2G(%struct.TYPE_26__*) #1

declare dso_local i8* @emitir(i32, i64, i64) #1

declare dso_local i32 @IRTG(i64, i64) #1

declare dso_local i64 @lj_ir_kkptr(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @lj_ir_rollback(%struct.TYPE_26__*, i64) #1

declare dso_local i64 @irtype_ispri(i64) #1

declare dso_local i64 @TREF_PRI(i64) #1

declare dso_local i32* @tabref(i32) #1

declare dso_local %struct.TYPE_29__* @tabV(i32*) #1

declare dso_local i64 @tref_isgcv(i64) #1

declare dso_local i32 @tref_isnil(i64) #1

declare dso_local i32* @lj_tab_getstr(i32*, i32) #1

declare dso_local i32 @mmname_str(i32, i32) #1

declare dso_local i64 @tref_isinteger(i64) #1

declare dso_local i32 @IRTN(i32) #1

declare dso_local i32 @IRT(i64, i64) #1

declare dso_local i32 @lj_opt_fwd_wasnonnil(%struct.TYPE_26__*, i64, i64) #1

declare dso_local i64 @lj_ir_knull(%struct.TYPE_26__*, i64) #1

declare dso_local i64 @tref_type(i64) #1

declare dso_local i32 @nommstr(%struct.TYPE_26__*, i64) #1

declare dso_local i64 @lj_ir_kint(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
