; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_lj_record_setup.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_lj_record_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i64, i64*, i64, i64, i64, i32, i32*, %struct.TYPE_25__*, i32*, %struct.TYPE_29__, %struct.TYPE_24__, i32*, i32, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_29__ = type { i64, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_31__ = type { i64, i32, %struct.TYPE_26__, i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_32__ = type { i64, i64, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64, i64 }

@REF_NIL = common dso_local global i64 0, align 8
@JIT_P_instunroll = common dso_local global i64 0, align 8
@JIT_P_loopunroll = common dso_local global i64 0, align 8
@IR_BASE = common dso_local global i32 0, align 4
@IRT_P32 = common dso_local global i32 0, align 4
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
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 11
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  store i64 %19, i64* %22, align 8
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 11
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @setmref(i32 %26, i32* null)
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 20
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %32, %36
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 21
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 19
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %42, i32 0, i32 18
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %44, i32 0, i32 17
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @JIT_P_instunroll, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @JIT_P_loopunroll, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %62, i32 0, i32 16
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %64, i32 0, i32 15
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %66, i32 0, i32 14
  store i32* null, i32** %67, align 8
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 13
  store i32 -1, i32* %69, align 8
  %70 = load i32, i32* @IR_BASE, align 4
  %71 = load i32, i32* @IRT_P32, align 4
  %72 = call i32 @IRT(i32 %70, i32 %71)
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @emitir_raw(i32 %72, i64 %75, i64 %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %103, %1
  %81 = load i32, i32* %3, align 4
  %82 = icmp sle i32 %81, 2
  br i1 %82, label %83, label %106

83:                                               ; preds = %80
  %84 = load i64, i64* @REF_NIL, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = sub nsw i64 %84, %86
  %88 = call %struct.TYPE_31__* @IR(i64 %87)
  store %struct.TYPE_31__* %88, %struct.TYPE_31__** %4, align 8
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %89, i32 0, i32 3
  store i64 0, i64* %90, align 8
  %91 = load i64, i64* @IRT_NIL, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 0
  store i64 %94, i64* %97, align 8
  %98 = load i32, i32* @IR_KPRI, align 4
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %83
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %80

106:                                              ; preds = %80
  %107 = load i32, i32* @REF_TRUE, align 4
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 10
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 3
  store i32 %107, i32* %110, align 8
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 12
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %114, i32 0, i32 9
  store i32* %113, i32** %115, align 8
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 10
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 12
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @setmref(i32 %119, i32* %122)
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %268

128:                                              ; preds = %106
  %129 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = call %struct.TYPE_32__* @traceref(%struct.TYPE_30__* %129, i64 %132)
  store %struct.TYPE_32__* %133, %struct.TYPE_32__** %5, align 8
  %134 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %128
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  br label %146

142:                                              ; preds = %128
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  br label %146

146:                                              ; preds = %142, %138
  %147 = phi i64 [ %141, %138 ], [ %145, %142 ]
  store i64 %147, i64* %6, align 8
  %148 = load i64, i64* %6, align 8
  %149 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %149, i32 0, i32 10
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i32 0, i32 0
  store i64 %148, i64* %151, align 8
  %152 = load i32, i32* @BC_JMP, align 4
  %153 = call i32 @BCINS_AD(i32 %152, i32 0, i32 0)
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %154, i32 0, i32 10
  %156 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %155, i32 0, i32 1
  store i32 %153, i32* %156, align 8
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %216

161:                                              ; preds = %146
  %162 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %216

169:                                              ; preds = %161
  %170 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 12
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %173, i32 0, i32 8
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %174, align 8
  %176 = call i32* @proto_bc(%struct.TYPE_25__* %175)
  %177 = icmp ugt i32* %172, %176
  br i1 %177, label %178, label %215

178:                                              ; preds = %169
  %179 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %179, i32 0, i32 12
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 -1
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @bc_op(i32 %183)
  %185 = load i64, i64* @BC_JFORI, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %215

187:                                              ; preds = %178
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 12
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 12
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 -1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @bc_j(i32 %195)
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %190, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @bc_d(i32 %200)
  %202 = load i64, i64* %6, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %215

204:                                              ; preds = %187
  %205 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %206 = call i32 @lj_snap_add(%struct.TYPE_30__* %205)
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %208 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %208, i32 0, i32 12
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 -1
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 11
  %214 = call i32 @rec_for_loop(%struct.TYPE_30__* %207, i32* %211, %struct.TYPE_24__* %213, i32 1)
  br label %223

215:                                              ; preds = %187, %178, %169
  br label %219

216:                                              ; preds = %161, %146
  %217 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %217, i32 0, i32 9
  store i32* null, i32** %218, align 8
  br label %219

219:                                              ; preds = %216, %215
  %220 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %221 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %222 = call i32 @lj_snap_replay(%struct.TYPE_30__* %220, %struct.TYPE_32__* %221)
  br label %223

223:                                              ; preds = %219, %204
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %225 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %225, i32 0, i32 10
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = call %struct.TYPE_32__* @traceref(%struct.TYPE_30__* %224, i64 %228)
  %230 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %232, i32 0, i32 2
  %234 = load i64*, i64** %233, align 8
  %235 = load i64, i64* @JIT_P_maxside, align 8
  %236 = getelementptr inbounds i64, i64* %234, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = icmp sge i64 %231, %237
  br i1 %238, label %263, label %239

239:                                              ; preds = %223
  %240 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %241, align 8
  %243 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %243, i32 0, i32 5
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %249, i32 0, i32 2
  %251 = load i64*, i64** %250, align 8
  %252 = load i64, i64* @JIT_P_hotexit, align 8
  %253 = getelementptr inbounds i64, i64* %251, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %255, i32 0, i32 2
  %257 = load i64*, i64** %256, align 8
  %258 = load i64, i64* @JIT_P_tryside, align 8
  %259 = getelementptr inbounds i64, i64* %257, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = add nsw i64 %254, %260
  %262 = icmp sge i64 %248, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %239, %223
  %264 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %265 = load i32, i32* @LJ_TRLINK_INTERP, align 4
  %266 = call i32 @lj_record_stop(%struct.TYPE_30__* %264, i32 %265, i32 0)
  br label %267

267:                                              ; preds = %263, %239
  br label %327

268:                                              ; preds = %106
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i32 0, i32 10
  %271 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %270, i32 0, i32 0
  store i64 0, i64* %271, align 8
  %272 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %272, i32 0, i32 12
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %276, i32 0, i32 10
  %278 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %277, i32 0, i32 1
  store i32 %275, i32* %278, align 8
  %279 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %280 = call i32* @rec_setup_root(%struct.TYPE_30__* %279)
  %281 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %281, i32 0, i32 12
  store i32* %280, i32** %282, align 8
  %283 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %284 = call i32 @lj_snap_add(%struct.TYPE_30__* %283)
  %285 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %286 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %285, i32 0, i32 10
  %287 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = call i64 @bc_op(i32 %288)
  %290 = load i64, i64* @BC_FORL, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %301

292:                                              ; preds = %268
  %293 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %294 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %294, i32 0, i32 12
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 -1
  %298 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %298, i32 0, i32 11
  %300 = call i32 @rec_for_loop(%struct.TYPE_30__* %293, i32* %297, %struct.TYPE_24__* %299, i32 1)
  br label %313

301:                                              ; preds = %268
  %302 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i32 0, i32 10
  %304 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = call i64 @bc_op(i32 %305)
  %307 = load i64, i64* @BC_ITERC, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %312

309:                                              ; preds = %301
  %310 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %310, i32 0, i32 9
  store i32* null, i32** %311, align 8
  br label %312

312:                                              ; preds = %309, %301
  br label %313

313:                                              ; preds = %312, %292
  %314 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %314, i32 0, i32 8
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = add nsw i64 1, %318
  %320 = load i64, i64* @LJ_MAX_JSLOTS, align 8
  %321 = icmp sge i64 %319, %320
  br i1 %321, label %322, label %326

322:                                              ; preds = %313
  %323 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %324 = load i32, i32* @LJ_TRERR_STACKOV, align 4
  %325 = call i32 @lj_trace_err(%struct.TYPE_30__* %323, i32 %324)
  br label %326

326:                                              ; preds = %322, %313
  br label %327

327:                                              ; preds = %326, %267
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
