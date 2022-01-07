; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_lj_record_setup.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_lj_record_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64, i64*, i64, i64, i64, i32, i32*, %struct.TYPE_25__*, i32*, %struct.TYPE_29__, %struct.TYPE_24__, i32*, i32, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_29__ = type { i64, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_31__ = type { i64, i32, %struct.TYPE_26__, i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_32__ = type { i64, i64, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64, i64 }

@REF_NIL = common dso_local global i64 0, align 8
@LJ_FR2 = common dso_local global i64 0, align 8
@JIT_P_instunroll = common dso_local global i64 0, align 8
@JIT_P_loopunroll = common dso_local global i64 0, align 8
@IR_BASE = common dso_local global i32 0, align 4
@IRT_PGC = common dso_local global i32 0, align 4
@IRT_NIL = common dso_local global i64 0, align 8
@IR_KPRI = common dso_local global i32 0, align 4
@REF_TRUE = common dso_local global i32 0, align 4
@BC_JMP = common dso_local global i32 0, align 4
@BC_JFORI = common dso_local global i64 0, align 8
@JIT_P_maxside = common dso_local global i64 0, align 8
@JIT_P_hotexit = common dso_local global i64 0, align 8
@JIT_P_tryside = common dso_local global i64 0, align 8
@LJ_TRLINK_INTERP = common dso_local global i32 0, align 4
@BC_FORL = common dso_local global i64 0, align 8
@BC_ITERC = common dso_local global i64 0, align 8
@LJ_MAX_JSLOTS = common dso_local global i64 0, align 8
@LJ_TRERR_STACKOV = common dso_local global i32 0, align 4
@IRT_U8 = common dso_local global i32 0, align 4
@IRXLOAD_VOLATILE = common dso_local global i32 0, align 4
@IR_BAND = common dso_local global i32 0, align 4
@IR_EQ = common dso_local global i32 0, align 4
@IR_XLOAD = common dso_local global i32 0, align 4
@LUA_MASKCOUNT = common dso_local global i32 0, align 4
@LUA_MASKLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_record_setup(%struct.TYPE_30__* %0) #0 {
  %2 = alloca %struct.TYPE_30__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %2, align 8
  %7 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 20
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @memset(i64 %9, i32 0, i32 8)
  %11 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 24
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @memset(i64 %13, i32 0, i32 8)
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 22
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @memset(i64 %17, i32 0, i32 8)
  %19 = load i64, i64* @REF_NIL, align 8
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 10
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  store i64 %19, i64* %22, align 8
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 10
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @setmref(i32 %26, i32* null)
  %28 = load i64, i64* @LJ_FR2, align 8
  %29 = add nsw i64 1, %28
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 19
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 20
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %35, i32 0, i32 19
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %39, i32 0, i32 21
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 18
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 17
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 16
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @JIT_P_instunroll, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @JIT_P_loopunroll, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %63, i32 0, i32 15
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %65, i32 0, i32 14
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %67, i32 0, i32 13
  store i32* null, i32** %68, align 8
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 12
  store i32 -1, i32* %70, align 8
  %71 = load i32, i32* @IR_BASE, align 4
  %72 = load i32, i32* @IRT_PGC, align 4
  %73 = call i32 @IRT(i32 %71, i32 %72)
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @emitir_raw(i32 %73, i64 %76, i64 %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %104, %1
  %82 = load i32, i32* %3, align 4
  %83 = icmp sle i32 %82, 2
  br i1 %83, label %84, label %107

84:                                               ; preds = %81
  %85 = load i64, i64* @REF_NIL, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %85, %87
  %89 = call %struct.TYPE_31__* @IR(i64 %88)
  store %struct.TYPE_31__* %89, %struct.TYPE_31__** %4, align 8
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load i64, i64* @IRT_NIL, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 0
  store i64 %95, i64* %98, align 8
  %99 = load i32, i32* @IR_KPRI, align 4
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %84
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %81

107:                                              ; preds = %81
  %108 = load i32, i32* @REF_TRUE, align 4
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 9
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 3
  store i32 %108, i32* %111, align 8
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 11
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 8
  store i32* %114, i32** %116, align 8
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 9
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 11
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @setmref(i32 %120, i32* %123)
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %269

129:                                              ; preds = %107
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = call %struct.TYPE_32__* @traceref(%struct.TYPE_30__* %130, i64 %133)
  store %struct.TYPE_32__* %134, %struct.TYPE_32__** %5, align 8
  %135 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %129
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  br label %147

143:                                              ; preds = %129
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  br label %147

147:                                              ; preds = %143, %139
  %148 = phi i64 [ %142, %139 ], [ %146, %143 ]
  store i64 %148, i64* %6, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 9
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 0
  store i64 %149, i64* %152, align 8
  %153 = load i32, i32* @BC_JMP, align 4
  %154 = call i32 @BCINS_AD(i32 %153, i32 0, i32 0)
  %155 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 9
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 1
  store i32 %154, i32* %157, align 8
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %217

162:                                              ; preds = %147
  %163 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %217

170:                                              ; preds = %162
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 11
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 7
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %175, align 8
  %177 = call i32* @proto_bc(%struct.TYPE_25__* %176)
  %178 = icmp ugt i32* %173, %177
  br i1 %178, label %179, label %216

179:                                              ; preds = %170
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %180, i32 0, i32 11
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 -1
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @bc_op(i32 %184)
  %186 = load i64, i64* @BC_JFORI, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %216

188:                                              ; preds = %179
  %189 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i32 0, i32 11
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 11
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 -1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @bc_j(i32 %196)
  %198 = sub nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %191, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @bc_d(i32 %201)
  %203 = load i64, i64* %6, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %216

205:                                              ; preds = %188
  %206 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %207 = call i32 @lj_snap_add(%struct.TYPE_30__* %206)
  %208 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %209 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %209, i32 0, i32 11
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 -1
  %213 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %213, i32 0, i32 10
  %215 = call i32 @rec_for_loop(%struct.TYPE_30__* %208, i32* %212, %struct.TYPE_24__* %214, i32 1)
  br label %224

216:                                              ; preds = %188, %179, %170
  br label %220

217:                                              ; preds = %162, %147
  %218 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %218, i32 0, i32 8
  store i32* null, i32** %219, align 8
  br label %220

220:                                              ; preds = %217, %216
  %221 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %223 = call i32 @lj_snap_replay(%struct.TYPE_30__* %221, %struct.TYPE_32__* %222)
  br label %224

224:                                              ; preds = %220, %205
  %225 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %226 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %226, i32 0, i32 9
  %228 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = call %struct.TYPE_32__* @traceref(%struct.TYPE_30__* %225, i64 %229)
  %231 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %233, i32 0, i32 1
  %235 = load i64*, i64** %234, align 8
  %236 = load i64, i64* @JIT_P_maxside, align 8
  %237 = getelementptr inbounds i64, i64* %235, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = icmp sge i64 %232, %238
  br i1 %239, label %264, label %240

240:                                              ; preds = %224
  %241 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %242, align 8
  %244 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %250, i32 0, i32 1
  %252 = load i64*, i64** %251, align 8
  %253 = load i64, i64* @JIT_P_hotexit, align 8
  %254 = getelementptr inbounds i64, i64* %252, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 1
  %258 = load i64*, i64** %257, align 8
  %259 = load i64, i64* @JIT_P_tryside, align 8
  %260 = getelementptr inbounds i64, i64* %258, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = add nsw i64 %255, %261
  %263 = icmp sge i64 %249, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %240, %224
  %265 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %266 = load i32, i32* @LJ_TRLINK_INTERP, align 4
  %267 = call i32 @lj_record_stop(%struct.TYPE_30__* %265, i32 %266, i32 0)
  br label %268

268:                                              ; preds = %264, %240
  br label %328

269:                                              ; preds = %107
  %270 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %270, i32 0, i32 9
  %272 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %271, i32 0, i32 0
  store i64 0, i64* %272, align 8
  %273 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %273, i32 0, i32 11
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %277, i32 0, i32 9
  %279 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %278, i32 0, i32 1
  store i32 %276, i32* %279, align 8
  %280 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %281 = call i32* @rec_setup_root(%struct.TYPE_30__* %280)
  %282 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %282, i32 0, i32 11
  store i32* %281, i32** %283, align 8
  %284 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %285 = call i32 @lj_snap_add(%struct.TYPE_30__* %284)
  %286 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %287 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %286, i32 0, i32 9
  %288 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = call i64 @bc_op(i32 %289)
  %291 = load i64, i64* @BC_FORL, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %302

293:                                              ; preds = %269
  %294 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %295 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %296 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %295, i32 0, i32 11
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 -1
  %299 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %299, i32 0, i32 10
  %301 = call i32 @rec_for_loop(%struct.TYPE_30__* %294, i32* %298, %struct.TYPE_24__* %300, i32 1)
  br label %314

302:                                              ; preds = %269
  %303 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %304 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %303, i32 0, i32 9
  %305 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = call i64 @bc_op(i32 %306)
  %308 = load i64, i64* @BC_ITERC, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %302
  %311 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %311, i32 0, i32 8
  store i32* null, i32** %312, align 8
  br label %313

313:                                              ; preds = %310, %302
  br label %314

314:                                              ; preds = %313, %293
  %315 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %316 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %315, i32 0, i32 7
  %317 = load %struct.TYPE_25__*, %struct.TYPE_25__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = add nsw i64 1, %319
  %321 = load i64, i64* @LJ_MAX_JSLOTS, align 8
  %322 = icmp sge i64 %320, %321
  br i1 %322, label %323, label %327

323:                                              ; preds = %314
  %324 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %325 = load i32, i32* @LJ_TRERR_STACKOV, align 4
  %326 = call i32 @lj_trace_err(%struct.TYPE_30__* %324, i32 %325)
  br label %327

327:                                              ; preds = %323, %314
  br label %328

328:                                              ; preds = %327, %268
  ret void
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @setmref(i32, i32*) #1

declare dso_local i32 @emitir_raw(i32, i64, i64) #1

declare dso_local i32 @IRT(i32, i32) #1

declare dso_local %struct.TYPE_31__* @IR(i64) #1

declare dso_local %struct.TYPE_32__* @traceref(%struct.TYPE_30__*, i64) #1

declare dso_local i32 @BCINS_AD(i32, i32, i32) #1

declare dso_local i32* @proto_bc(%struct.TYPE_25__*) #1

declare dso_local i64 @bc_op(i32) #1

declare dso_local i64 @bc_d(i32) #1

declare dso_local i32 @bc_j(i32) #1

declare dso_local i32 @lj_snap_add(%struct.TYPE_30__*) #1

declare dso_local i32 @rec_for_loop(%struct.TYPE_30__*, i32*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @lj_snap_replay(%struct.TYPE_30__*, %struct.TYPE_32__*) #1

declare dso_local i32 @lj_record_stop(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32* @rec_setup_root(%struct.TYPE_30__*) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_30__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
