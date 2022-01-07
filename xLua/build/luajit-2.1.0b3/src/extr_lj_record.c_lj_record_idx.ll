; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_lj_record_idx.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_lj_record_idx.c"
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
@IRT_PGC = common dso_local global i64 0, align 8
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

25:                                               ; preds = %191, %2
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @tref_istab(i64 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %192

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

58:                                               ; preds = %446, %328, %233, %57
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @tref_isfunc(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %168

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
  %83 = load i32, i32* @LJ_FR2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  store i64* %85, i64** %13, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* @LJ_FR2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32* %96, i32** %14, align 8
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %13, align 8
  %101 = load i32, i32* @LJ_FR2, align 4
  %102 = sub nsw i32 0, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %100, i64 %103
  store i64 %99, i64* %104, align 8
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64*, i64** %13, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 1
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %13, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 2
  store i64 %112, i64* %114, align 8
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %116, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* @LJ_FR2, align 4
  %120 = sext i32 %119 to i64
  %121 = sub i64 0, %120
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 8
  %125 = call i32 @funcV(i32* %124)
  %126 = call i32 @setfuncV(%struct.TYPE_30__* %117, i32* %122, i32 %125)
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_30__*, %struct.TYPE_30__** %128, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 5
  %134 = call i32 @copyTV(%struct.TYPE_30__* %129, i32* %131, i32* %133)
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 4
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %136, align 8
  %138 = load i32*, i32** %14, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 7
  %142 = call i32 @copyTV(%struct.TYPE_30__* %137, i32* %139, i32* %141)
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %164

147:                                              ; preds = %74
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64*, i64** %13, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 3
  store i64 %150, i64* %152, align 8
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_30__*, %struct.TYPE_30__** %154, align 8
  %156 = load i32*, i32** %14, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 9
  %160 = call i32 @copyTV(%struct.TYPE_30__* %155, i32* %157, i32* %159)
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @lj_record_call(%struct.TYPE_26__* %161, i32 %162, i32 3)
  store i64 0, i64* %3, align 8
  br label %622

164:                                              ; preds = %74
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @lj_record_call(%struct.TYPE_26__* %165, i32 %166, i32 2)
  store i64 0, i64* %3, align 8
  br label %622

168:                                              ; preds = %58
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 4
  %176 = load %struct.TYPE_30__*, %struct.TYPE_30__** %175, align 8
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 5
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 8
  %181 = call i32 @copyTV(%struct.TYPE_30__* %176, i32* %178, i32* %180)
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, -1
  store i64 %185, i64* %183, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %168
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %189 = load i32, i32* @LJ_TRERR_IDXLOOP, align 4
  %190 = call i32 @lj_trace_err(%struct.TYPE_26__* %188, i32 %189)
  br label %191

191:                                              ; preds = %187, %168
  br label %25

192:                                              ; preds = %25
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 7
  %195 = call i64 @tvisnil(i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %207, label %197

197:                                              ; preds = %192
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 7
  %200 = call i64 @tvisnum(i32* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %237

202:                                              ; preds = %197
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %203, i32 0, i32 7
  %205 = call i64 @tvisnan(i32* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %237

207:                                              ; preds = %202, %192
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %214 = load i32, i32* @LJ_TRERR_STORENN, align 4
  %215 = call i32 @lj_trace_err(%struct.TYPE_26__* %213, i32 %214)
  br label %216

216:                                              ; preds = %212, %207
  %217 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = call i64 @tref_isk(i64 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %236

222:                                              ; preds = %216
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %222
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %230 = load i32, i32* @MM_index, align 4
  %231 = call i64 @lj_record_mm_lookup(%struct.TYPE_26__* %228, %struct.TYPE_28__* %229, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %227
  br label %58

234:                                              ; preds = %227, %222
  %235 = load i64, i64* @TREF_NIL, align 8
  store i64 %235, i64* %3, align 8
  br label %622

236:                                              ; preds = %216
  br label %237

237:                                              ; preds = %236, %202, %197
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %240 = call i64 @rec_idx_key(%struct.TYPE_26__* %238, %struct.TYPE_28__* %239, i64* %9, i8** %10)
  store i64 %240, i64* %6, align 8
  %241 = load i64, i64* %6, align 8
  %242 = call i64 @tref_ref(i64 %241)
  %243 = call %struct.TYPE_27__* @IR(i64 %242)
  %244 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %7, align 8
  %246 = load i64, i64* %7, align 8
  %247 = load i64, i64* @IR_AREF, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %237
  %250 = load i64, i64* @IR_ALOAD, align 8
  br label %253

251:                                              ; preds = %237
  %252 = load i64, i64* @IR_HLOAD, align 8
  br label %253

253:                                              ; preds = %251, %249
  %254 = phi i64 [ %250, %249 ], [ %252, %251 ]
  store i64 %254, i64* %8, align 8
  %255 = load i64, i64* %7, align 8
  %256 = load i64, i64* @IR_KKPTR, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %264

258:                                              ; preds = %253
  %259 = load i64, i64* %6, align 8
  %260 = call i64 @tref_ref(i64 %259)
  %261 = call %struct.TYPE_27__* @IR(i64 %260)
  %262 = call i64 @ir_kptr(%struct.TYPE_27__* %261)
  %263 = inttoptr i64 %262 to i32*
  br label %268

264:                                              ; preds = %253
  %265 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %265, i32 0, i32 6
  %267 = load i32*, i32** %266, align 8
  br label %268

268:                                              ; preds = %264, %258
  %269 = phi i32* [ %263, %258 ], [ %267, %264 ]
  store i32* %269, i32** %11, align 8
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %338

274:                                              ; preds = %268
  %275 = load i32*, i32** %11, align 8
  %276 = call i64 @itype2irt(i32* %275)
  store i64 %276, i64* %15, align 8
  %277 = load i32*, i32** %11, align 8
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %279 = call i32 @J2G(%struct.TYPE_26__* %278)
  %280 = call i32* @niltvg(i32 %279)
  %281 = icmp eq i32* %277, %280
  br i1 %281, label %282, label %294

282:                                              ; preds = %274
  %283 = load i64, i64* @IR_EQ, align 8
  %284 = load i64, i64* @IRT_PGC, align 8
  %285 = call i32 @IRTG(i64 %283, i64 %284)
  %286 = load i64, i64* %6, align 8
  %287 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %289 = call i32 @J2G(%struct.TYPE_26__* %288)
  %290 = call i32* @niltvg(i32 %289)
  %291 = call i64 @lj_ir_kkptr(%struct.TYPE_26__* %287, i32* %290)
  %292 = call i8* @emitir(i32 %285, i64 %286, i64 %291)
  %293 = load i64, i64* @TREF_NIL, align 8
  store i64 %293, i64* %16, align 8
  br label %301

294:                                              ; preds = %274
  %295 = load i64, i64* %8, align 8
  %296 = load i64, i64* %15, align 8
  %297 = call i32 @IRTG(i64 %295, i64 %296)
  %298 = load i64, i64* %6, align 8
  %299 = call i8* @emitir(i32 %297, i64 %298, i64 0)
  %300 = ptrtoint i8* %299 to i64
  store i64 %300, i64* %16, align 8
  br label %301

301:                                              ; preds = %294, %282
  %302 = load i64, i64* %16, align 8
  %303 = call i64 @tref_ref(i64 %302)
  %304 = load i64, i64* %9, align 8
  %305 = icmp slt i64 %303, %304
  br i1 %305, label %306, label %313

306:                                              ; preds = %301
  %307 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %308 = load i64, i64* %9, align 8
  %309 = call i32 @lj_ir_rollback(%struct.TYPE_26__* %307, i64 %308)
  %310 = load i8*, i8** %10, align 8
  %311 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i32 0, i32 3
  store i8* %310, i8** %312, align 8
  br label %313

313:                                              ; preds = %306, %301
  %314 = load i64, i64* %15, align 8
  %315 = load i64, i64* @IRT_NIL, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %329

317:                                              ; preds = %313
  %318 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %317
  %323 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %324 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %325 = load i32, i32* @MM_index, align 4
  %326 = call i64 @lj_record_mm_lookup(%struct.TYPE_26__* %323, %struct.TYPE_28__* %324, i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %322
  br label %58

329:                                              ; preds = %322, %317, %313
  %330 = load i64, i64* %15, align 8
  %331 = call i64 @irtype_ispri(i64 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %329
  %334 = load i64, i64* %15, align 8
  %335 = call i64 @TREF_PRI(i64 %334)
  store i64 %335, i64* %16, align 8
  br label %336

336:                                              ; preds = %333, %329
  %337 = load i64, i64* %16, align 8
  store i64 %337, i64* %3, align 8
  br label %622

338:                                              ; preds = %268
  %339 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %339, i32 0, i32 5
  %341 = call %struct.TYPE_29__* @tabV(i32* %340)
  %342 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = call i32* @tabref(i32 %343)
  store i32* %344, i32** %17, align 8
  %345 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %345, i32 0, i32 4
  %347 = load i64, i64* %346, align 8
  %348 = call i64 @tref_isgcv(i64 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %357

350:                                              ; preds = %338
  %351 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %351, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  %354 = call i32 @tref_isnil(i64 %353)
  %355 = icmp ne i32 %354, 0
  %356 = xor i1 %355, true
  br label %357

357:                                              ; preds = %350, %338
  %358 = phi i1 [ false, %338 ], [ %356, %350 ]
  %359 = zext i1 %358 to i32
  store i32 %359, i32* %18, align 4
  %360 = load i64, i64* %6, align 8
  %361 = call i64 @tref_ref(i64 %360)
  %362 = load i64, i64* %9, align 8
  %363 = icmp slt i64 %361, %362
  br i1 %363, label %364, label %371

364:                                              ; preds = %357
  %365 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %366 = load i64, i64* %9, align 8
  %367 = call i32 @lj_ir_rollback(%struct.TYPE_26__* %365, i64 %366)
  %368 = load i8*, i8** %10, align 8
  %369 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %369, i32 0, i32 3
  store i8* %368, i8** %370, align 8
  br label %371

371:                                              ; preds = %364, %357
  %372 = load i32*, i32** %11, align 8
  %373 = call i64 @tvisnil(i32* %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %485

375:                                              ; preds = %371
  store i32 0, i32* %19, align 4
  %376 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %400

380:                                              ; preds = %375
  %381 = load i32*, i32** %17, align 8
  %382 = icmp ne i32* %381, null
  br i1 %382, label %383, label %400

383:                                              ; preds = %380
  %384 = load i32*, i32** %17, align 8
  %385 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %386 = call i32 @J2G(%struct.TYPE_26__* %385)
  %387 = load i32, i32* @MM_newindex, align 4
  %388 = call i32 @mmname_str(i32 %386, i32 %387)
  %389 = call i32* @lj_tab_getstr(i32* %384, i32 %388)
  store i32* %389, i32** %20, align 8
  %390 = load i32*, i32** %20, align 8
  %391 = icmp ne i32* %390, null
  br i1 %391, label %392, label %397

392:                                              ; preds = %383
  %393 = load i32*, i32** %20, align 8
  %394 = call i64 @tvisnil(i32* %393)
  %395 = icmp ne i64 %394, 0
  %396 = xor i1 %395, true
  br label %397

397:                                              ; preds = %392, %383
  %398 = phi i1 [ false, %383 ], [ %396, %392 ]
  %399 = zext i1 %398 to i32
  store i32 %399, i32* %19, align 4
  br label %400

400:                                              ; preds = %397, %380, %375
  %401 = load i32, i32* %19, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %409

403:                                              ; preds = %400
  %404 = load i64, i64* %8, align 8
  %405 = load i64, i64* @IRT_NIL, align 8
  %406 = call i32 @IRTG(i64 %404, i64 %405)
  %407 = load i64, i64* %6, align 8
  %408 = call i8* @emitir(i32 %406, i64 %407, i64 0)
  br label %435

409:                                              ; preds = %400
  %410 = load i64, i64* %7, align 8
  %411 = load i64, i64* @IR_HREF, align 8
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %413, label %434

413:                                              ; preds = %409
  %414 = load i32*, i32** %11, align 8
  %415 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %416 = call i32 @J2G(%struct.TYPE_26__* %415)
  %417 = call i32* @niltvg(i32 %416)
  %418 = icmp eq i32* %414, %417
  br i1 %418, label %419, label %421

419:                                              ; preds = %413
  %420 = load i64, i64* @IR_EQ, align 8
  br label %423

421:                                              ; preds = %413
  %422 = load i64, i64* @IR_NE, align 8
  br label %423

423:                                              ; preds = %421, %419
  %424 = phi i64 [ %420, %419 ], [ %422, %421 ]
  %425 = load i64, i64* @IRT_PGC, align 8
  %426 = call i32 @IRTG(i64 %424, i64 %425)
  %427 = load i64, i64* %6, align 8
  %428 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %429 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %430 = call i32 @J2G(%struct.TYPE_26__* %429)
  %431 = call i32* @niltvg(i32 %430)
  %432 = call i64 @lj_ir_kkptr(%struct.TYPE_26__* %428, i32* %431)
  %433 = call i8* @emitir(i32 %426, i64 %427, i64 %432)
  br label %434

434:                                              ; preds = %423, %409
  br label %435

435:                                              ; preds = %434, %403
  %436 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %449

440:                                              ; preds = %435
  %441 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %442 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %443 = load i32, i32* @MM_newindex, align 4
  %444 = call i64 @lj_record_mm_lookup(%struct.TYPE_26__* %441, %struct.TYPE_28__* %442, i32 %443)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %449

446:                                              ; preds = %440
  %447 = load i32, i32* %19, align 4
  %448 = call i32 @lua_assert(i32 %447)
  br label %58

449:                                              ; preds = %440, %435
  %450 = load i32, i32* %19, align 4
  %451 = icmp ne i32 %450, 0
  %452 = xor i1 %451, true
  %453 = zext i1 %452 to i32
  %454 = call i32 @lua_assert(i32 %453)
  %455 = load i32*, i32** %11, align 8
  %456 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %457 = call i32 @J2G(%struct.TYPE_26__* %456)
  %458 = call i32* @niltvg(i32 %457)
  %459 = icmp eq i32* %455, %458
  br i1 %459, label %460, label %484

460:                                              ; preds = %449
  %461 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %462 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %461, i32 0, i32 4
  %463 = load i64, i64* %462, align 8
  store i64 %463, i64* %21, align 8
  %464 = load i64, i64* %21, align 8
  %465 = call i64 @tref_isinteger(i64 %464)
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %474

467:                                              ; preds = %460
  %468 = load i32, i32* @IR_CONV, align 4
  %469 = call i32 @IRTN(i32 %468)
  %470 = load i64, i64* %21, align 8
  %471 = load i64, i64* @IRCONV_NUM_INT, align 8
  %472 = call i8* @emitir(i32 %469, i64 %470, i64 %471)
  %473 = ptrtoint i8* %472 to i64
  store i64 %473, i64* %21, align 8
  br label %474

474:                                              ; preds = %467, %460
  %475 = load i64, i64* @IR_NEWREF, align 8
  %476 = load i64, i64* @IRT_PGC, align 8
  %477 = call i32 @IRT(i64 %475, i64 %476)
  %478 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %479 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %478, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = load i64, i64* %21, align 8
  %482 = call i8* @emitir(i32 %477, i64 %480, i64 %481)
  %483 = ptrtoint i8* %482 to i64
  store i64 %483, i64* %6, align 8
  store i32 0, i32* %18, align 4
  br label %484

484:                                              ; preds = %474, %449
  br label %545

485:                                              ; preds = %371
  %486 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %487 = load i64, i64* %8, align 8
  %488 = load i64, i64* %6, align 8
  %489 = call i64 @tref_ref(i64 %488)
  %490 = call i32 @lj_opt_fwd_wasnonnil(%struct.TYPE_26__* %486, i64 %487, i64 %489)
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %543, label %492

492:                                              ; preds = %485
  %493 = load i64, i64* %7, align 8
  %494 = load i64, i64* @IR_HREF, align 8
  %495 = icmp eq i64 %493, %494
  br i1 %495, label %496, label %507

496:                                              ; preds = %492
  %497 = load i64, i64* @IR_NE, align 8
  %498 = load i64, i64* @IRT_PGC, align 8
  %499 = call i32 @IRTG(i64 %497, i64 %498)
  %500 = load i64, i64* %6, align 8
  %501 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %502 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %503 = call i32 @J2G(%struct.TYPE_26__* %502)
  %504 = call i32* @niltvg(i32 %503)
  %505 = call i64 @lj_ir_kkptr(%struct.TYPE_26__* %501, i32* %504)
  %506 = call i8* @emitir(i32 %499, i64 %500, i64 %505)
  br label %507

507:                                              ; preds = %496, %492
  %508 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %509 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %508, i32 0, i32 1
  %510 = load i64, i64* %509, align 8
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %542

512:                                              ; preds = %507
  %513 = load i32*, i32** %17, align 8
  %514 = icmp ne i32* %513, null
  br i1 %514, label %533, label %515

515:                                              ; preds = %512
  %516 = load i64, i64* @IR_FLOAD, align 8
  %517 = load i64, i64* @IRT_TAB, align 8
  %518 = call i32 @IRT(i64 %516, i64 %517)
  %519 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %520 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %519, i32 0, i32 0
  %521 = load i64, i64* %520, align 8
  %522 = load i64, i64* @IRFL_TAB_META, align 8
  %523 = call i8* @emitir(i32 %518, i64 %521, i64 %522)
  %524 = ptrtoint i8* %523 to i64
  store i64 %524, i64* %22, align 8
  %525 = load i64, i64* @IR_EQ, align 8
  %526 = load i64, i64* @IRT_TAB, align 8
  %527 = call i32 @IRTG(i64 %525, i64 %526)
  %528 = load i64, i64* %22, align 8
  %529 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %530 = load i64, i64* @IRT_TAB, align 8
  %531 = call i64 @lj_ir_knull(%struct.TYPE_26__* %529, i64 %530)
  %532 = call i8* @emitir(i32 %527, i64 %528, i64 %531)
  br label %541

533:                                              ; preds = %512
  %534 = load i32*, i32** %11, align 8
  %535 = call i64 @itype2irt(i32* %534)
  store i64 %535, i64* %23, align 8
  %536 = load i64, i64* %8, align 8
  %537 = load i64, i64* %23, align 8
  %538 = call i32 @IRTG(i64 %536, i64 %537)
  %539 = load i64, i64* %6, align 8
  %540 = call i8* @emitir(i32 %538, i64 %539, i64 0)
  br label %541

541:                                              ; preds = %533, %515
  br label %542

542:                                              ; preds = %541, %507
  br label %544

543:                                              ; preds = %485
  store i32 0, i32* %18, align 4
  br label %544

544:                                              ; preds = %543, %542
  br label %545

545:                                              ; preds = %544, %484
  %546 = load i32, i32* @LJ_DUALNUM, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %565, label %548

548:                                              ; preds = %545
  %549 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %550 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %549, i32 0, i32 2
  %551 = load i64, i64* %550, align 8
  %552 = call i64 @tref_isinteger(i64 %551)
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %554, label %565

554:                                              ; preds = %548
  %555 = load i32, i32* @IR_CONV, align 4
  %556 = call i32 @IRTN(i32 %555)
  %557 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %558 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %557, i32 0, i32 2
  %559 = load i64, i64* %558, align 8
  %560 = load i64, i64* @IRCONV_NUM_INT, align 8
  %561 = call i8* @emitir(i32 %556, i64 %559, i64 %560)
  %562 = ptrtoint i8* %561 to i64
  %563 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %564 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %563, i32 0, i32 2
  store i64 %562, i64* %564, align 8
  br label %565

565:                                              ; preds = %554, %548, %545
  %566 = load i64, i64* %8, align 8
  %567 = load i64, i64* @IRDELTA_L2S, align 8
  %568 = add nsw i64 %566, %567
  %569 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %570 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %569, i32 0, i32 2
  %571 = load i64, i64* %570, align 8
  %572 = call i64 @tref_type(i64 %571)
  %573 = call i32 @IRT(i64 %568, i64 %572)
  %574 = load i64, i64* %6, align 8
  %575 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %576 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %575, i32 0, i32 2
  %577 = load i64, i64* %576, align 8
  %578 = call i8* @emitir(i32 %573, i64 %574, i64 %577)
  %579 = load i32, i32* %18, align 4
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %587, label %581

581:                                              ; preds = %565
  %582 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %583 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %582, i32 0, i32 2
  %584 = load i64, i64* %583, align 8
  %585 = call i64 @tref_isgcv(i64 %584)
  %586 = icmp ne i64 %585, 0
  br i1 %586, label %587, label %595

587:                                              ; preds = %581, %565
  %588 = load i64, i64* @IR_TBAR, align 8
  %589 = load i64, i64* @IRT_NIL, align 8
  %590 = call i32 @IRT(i64 %588, i64 %589)
  %591 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %592 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %591, i32 0, i32 0
  %593 = load i64, i64* %592, align 8
  %594 = call i8* @emitir(i32 %590, i64 %593, i64 0)
  br label %595

595:                                              ; preds = %587, %581
  %596 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %597 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %598 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %597, i32 0, i32 4
  %599 = load i64, i64* %598, align 8
  %600 = call i32 @nommstr(%struct.TYPE_26__* %596, i64 %599)
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %619, label %602

602:                                              ; preds = %595
  %603 = load i64, i64* @IR_FREF, align 8
  %604 = load i64, i64* @IRT_PGC, align 8
  %605 = call i32 @IRT(i64 %603, i64 %604)
  %606 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %607 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %606, i32 0, i32 0
  %608 = load i64, i64* %607, align 8
  %609 = load i64, i64* @IRFL_TAB_NOMM, align 8
  %610 = call i8* @emitir(i32 %605, i64 %608, i64 %609)
  %611 = ptrtoint i8* %610 to i64
  store i64 %611, i64* %24, align 8
  %612 = load i64, i64* @IR_FSTORE, align 8
  %613 = load i64, i64* @IRT_U8, align 8
  %614 = call i32 @IRT(i64 %612, i64 %613)
  %615 = load i64, i64* %24, align 8
  %616 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %617 = call i64 @lj_ir_kint(%struct.TYPE_26__* %616, i32 0)
  %618 = call i8* @emitir(i32 %614, i64 %615, i64 %617)
  br label %619

619:                                              ; preds = %602, %595
  %620 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %621 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %620, i32 0, i32 2
  store i32 1, i32* %621, align 4
  store i64 0, i64* %3, align 8
  br label %622

622:                                              ; preds = %619, %336, %234, %164, %147
  %623 = load i64, i64* %3, align 8
  ret i64 %623
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
