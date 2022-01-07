; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_lj_asm_trace.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_lj_asm_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i32, i64, i32, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i64, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_37__ = type { i64, i32*, i8*, i32, i8*, %struct.TYPE_34__*, i32 }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_38__ = type { i32, i64, i64, i64, i64, i32*, i32*, i32, i32*, %struct.TYPE_35__*, i32*, %struct.TYPE_37__*, i32, i32, i64, i32*, i32*, i32*, i64, i64, i64, i32 }
%struct.TYPE_36__ = type { i32 }

@IR_NOP = common dso_local global i32 0, align 4
@MCLIM_REDZONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"===== STOP =====\00", align 1
@JIT_F_OPT_FUSE = common dso_local global i32 0, align 4
@FUSE_DISABLED = common dso_local global i32 0, align 4
@LJ_32 = common dso_local global i64 0, align 8
@JIT_F_OPT_DCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"===== START ====\00", align 1
@RSET_ALL = common dso_local global i64 0, align 8
@LJ_TRERR_BADRA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_asm_trace(%struct.TYPE_35__* %0, %struct.TYPE_37__* %1) #0 {
  %3 = alloca %struct.TYPE_35__*, align 8
  %4 = alloca %struct.TYPE_37__*, align 8
  %5 = alloca %struct.TYPE_38__, align 8
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %3, align 8
  store %struct.TYPE_37__* %1, %struct.TYPE_37__** %4, align 8
  store %struct.TYPE_38__* %5, %struct.TYPE_38__** %6, align 8
  %9 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %10 = call i64 @lj_ir_nextins(%struct.TYPE_35__* %9)
  %11 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 0
  store i64 %10, i64* %13, align 8
  %14 = load i32, i32* @IR_NOP, align 4
  %15 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %19 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %23, i32 0, i32 0
  store i32 %14, i32* %24, align 4
  %25 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %26 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %26, i32 0, i32 9
  store %struct.TYPE_35__* %25, %struct.TYPE_35__** %27, align 8
  %28 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %29 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %29, i32 0, i32 11
  store %struct.TYPE_37__* %28, %struct.TYPE_37__** %30, align 8
  %31 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %34, i32 0, i32 21
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %46, i32 0, i32 17
  store i32* null, i32** %47, align 8
  %48 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %48, i32 0, i32 20
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %2
  %55 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %56 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32* @traceref(%struct.TYPE_35__* %55, i64 %58)
  br label %61

60:                                               ; preds = %2
  br label %61

61:                                               ; preds = %60, %54
  %62 = phi i32* [ %59, %54 ], [ null, %60 ]
  %63 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %63, i32 0, i32 10
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %66 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %66, i32 0, i32 18
  %68 = call i32* @lj_mcode_reserve(%struct.TYPE_35__* %65, i64* %67)
  store i32* %68, i32** %7, align 8
  %69 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %69, i32 0, i32 6
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %74, i32 0, i32 5
  store i32* %73, i32** %75, align 8
  %76 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %76, i32 0, i32 18
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MCLIM_REDZONE, align 8
  %80 = add nsw i64 %78, %79
  %81 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %81, i32 0, i32 19
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %84 = call i32 @asm_setup_target(%struct.TYPE_38__* %83)
  br label %85

85:                                               ; preds = %207, %61
  %86 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %86, i32 0, i32 6
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %89, i32 0, i32 5
  store i32* %88, i32** %90, align 8
  %91 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = call i32 (...) @RA_DBG_START()
  %97 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %98 = call i32 @RA_DBGX(%struct.TYPE_38__* bitcast ([17 x i8]* @.str to %struct.TYPE_38__*))
  %99 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %100 = call i32 @asm_tail_prep(%struct.TYPE_38__* %99)
  %101 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %101, i32 0, i32 8
  store i32* null, i32** %102, align 8
  %103 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %103, i32 0, i32 15
  store i32* null, i32** %104, align 8
  %105 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %105, i32 0, i32 14
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %107, i32 0, i32 2
  store i64 0, i64* %108, align 8
  %109 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %112, i32 0, i32 13
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @JIT_F_OPT_FUSE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %85
  %121 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  br label %126

124:                                              ; preds = %85
  %125 = load i32, i32* @FUSE_DISABLED, align 4
  br label %126

126:                                              ; preds = %124, %120
  %127 = phi i32 [ %123, %120 ], [ %125, %124 ]
  %128 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %128, i32 0, i32 12
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %131 = call i32 @asm_setup_regsp(%struct.TYPE_38__* %130)
  %132 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %126
  %137 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %138 = call i32 @asm_tail_link(%struct.TYPE_38__* %137)
  br label %139

139:                                              ; preds = %136, %126
  %140 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, -1
  store i64 %143, i64* %141, align 8
  br label %144

144:                                              ; preds = %201, %139
  %145 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp sgt i64 %147, %150
  br i1 %151, label %152, label %206

152:                                              ; preds = %144
  %153 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call %struct.TYPE_36__* @IR(i64 %155)
  store %struct.TYPE_36__* %156, %struct.TYPE_36__** %8, align 8
  %157 = load i64, i64* @LJ_32, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %152
  %160 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @irt_isint64(i32 %162)
  %164 = icmp ne i64 %163, 0
  br label %165

165:                                              ; preds = %159, %152
  %166 = phi i1 [ false, %152 ], [ %164, %159 ]
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  %169 = call i32 @lua_assert(i32 %168)
  %170 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %171 = call i32 @ra_used(%struct.TYPE_36__* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %185, label %173

173:                                              ; preds = %165
  %174 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %175 = call i32 @ir_sideeff(%struct.TYPE_36__* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %173
  %178 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @JIT_F_OPT_DCE, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  br label %201

185:                                              ; preds = %177, %173, %165
  %186 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @irt_isguard(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %193 = call i32 @asm_snap_prep(%struct.TYPE_38__* %192)
  br label %194

194:                                              ; preds = %191, %185
  %195 = call i32 (...) @RA_DBG_REF()
  %196 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %197 = call i32 @checkmclim(%struct.TYPE_38__* %196)
  %198 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %199 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %200 = call i32 @asm_ir(%struct.TYPE_38__* %198, %struct.TYPE_36__* %199)
  br label %201

201:                                              ; preds = %194, %184
  %202 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, -1
  store i64 %205, i64* %203, align 8
  br label %144

206:                                              ; preds = %144
  br label %207

207:                                              ; preds = %206
  %208 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %208, i32 0, i32 17
  %210 = load i32*, i32** %209, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %85, label %212

212:                                              ; preds = %207
  %213 = call i32 (...) @RA_DBG_REF()
  %214 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %215 = call i32 @checkmclim(%struct.TYPE_38__* %214)
  %216 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp sgt i64 %218, 0
  br i1 %219, label %220, label %235

220:                                              ; preds = %212
  %221 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %221, i32 0, i32 11
  %223 = load %struct.TYPE_37__*, %struct.TYPE_37__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %223, i32 0, i32 5
  %225 = load %struct.TYPE_34__*, %struct.TYPE_34__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %225, i64 0
  %227 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %229, i32 0, i32 1
  store i64 %228, i64* %230, align 8
  %231 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %232 = call i32 @asm_snap_prep(%struct.TYPE_38__* %231)
  %233 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %234 = call i32 @asm_gc_check(%struct.TYPE_38__* %233)
  br label %235

235:                                              ; preds = %220, %212
  %236 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %237 = call i32 @ra_evictk(%struct.TYPE_38__* %236)
  %238 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %238, i32 0, i32 10
  %240 = load i32*, i32** %239, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %245

242:                                              ; preds = %235
  %243 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %244 = call i32 @asm_head_side(%struct.TYPE_38__* %243)
  br label %248

245:                                              ; preds = %235
  %246 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %247 = call i32 @asm_head_root(%struct.TYPE_38__* %246)
  br label %248

248:                                              ; preds = %245, %242
  %249 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %250 = call i32 @asm_phi_fixup(%struct.TYPE_38__* %249)
  %251 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %252 = call i32 @RA_DBGX(%struct.TYPE_38__* bitcast ([17 x i8]* @.str.1 to %struct.TYPE_38__*))
  %253 = call i32 (...) @RA_DBG_FLUSH()
  %254 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %254, i32 0, i32 4
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @RSET_ALL, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %265

259:                                              ; preds = %248
  %260 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %260, i32 0, i32 9
  %262 = load %struct.TYPE_35__*, %struct.TYPE_35__** %261, align 8
  %263 = load i32, i32* @LJ_TRERR_BADRA, align 4
  %264 = call i32 @lj_trace_err(%struct.TYPE_35__* %262, i32 %263)
  br label %265

265:                                              ; preds = %259, %248
  %266 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %266, i32 0, i32 5
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %269, i32 0, i32 1
  store i32* %268, i32** %270, align 8
  %271 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %271, i32 0, i32 8
  %273 = load i32*, i32** %272, align 8
  %274 = icmp ne i32* %273, null
  br i1 %274, label %275, label %288

275:                                              ; preds = %265
  %276 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %276, i32 0, i32 8
  %278 = load i32*, i32** %277, align 8
  %279 = bitcast i32* %278 to i8*
  %280 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %280, i32 0, i32 5
  %282 = load i32*, i32** %281, align 8
  %283 = bitcast i32* %282 to i8*
  %284 = ptrtoint i8* %279 to i64
  %285 = ptrtoint i8* %283 to i64
  %286 = sub i64 %284, %285
  %287 = inttoptr i64 %286 to i8*
  br label %289

288:                                              ; preds = %265
  br label %289

289:                                              ; preds = %288, %275
  %290 = phi i8* [ %287, %275 ], [ null, %288 ]
  %291 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %291, i32 0, i32 4
  store i8* %290, i8** %292, align 8
  %293 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %293, i32 0, i32 7
  %295 = load i32, i32* %294, align 8
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %303, label %297

297:                                              ; preds = %289
  %298 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %299 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @asm_tail_fixup(%struct.TYPE_38__* %298, i32 %301)
  br label %303

303:                                              ; preds = %297, %289
  %304 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %304, i32 0, i32 6
  %306 = load i32*, i32** %305, align 8
  %307 = bitcast i32* %306 to i8*
  %308 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %308, i32 0, i32 5
  %310 = load i32*, i32** %309, align 8
  %311 = bitcast i32* %310 to i8*
  %312 = ptrtoint i8* %307 to i64
  %313 = ptrtoint i8* %311 to i64
  %314 = sub i64 %312, %313
  %315 = inttoptr i64 %314 to i8*
  %316 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %316, i32 0, i32 2
  store i8* %315, i8** %317, align 8
  %318 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %318, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = load i32*, i32** %7, align 8
  %322 = call i32 @lj_mcode_sync(i32* %320, i32* %321)
  ret void
}

declare dso_local i64 @lj_ir_nextins(%struct.TYPE_35__*) #1

declare dso_local i32* @traceref(%struct.TYPE_35__*, i64) #1

declare dso_local i32* @lj_mcode_reserve(%struct.TYPE_35__*, i64*) #1

declare dso_local i32 @asm_setup_target(%struct.TYPE_38__*) #1

declare dso_local i32 @RA_DBG_START(...) #1

declare dso_local i32 @RA_DBGX(%struct.TYPE_38__*) #1

declare dso_local i32 @asm_tail_prep(%struct.TYPE_38__*) #1

declare dso_local i32 @asm_setup_regsp(%struct.TYPE_38__*) #1

declare dso_local i32 @asm_tail_link(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_36__* @IR(i64) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @irt_isint64(i32) #1

declare dso_local i32 @ra_used(%struct.TYPE_36__*) #1

declare dso_local i32 @ir_sideeff(%struct.TYPE_36__*) #1

declare dso_local i64 @irt_isguard(i32) #1

declare dso_local i32 @asm_snap_prep(%struct.TYPE_38__*) #1

declare dso_local i32 @RA_DBG_REF(...) #1

declare dso_local i32 @checkmclim(%struct.TYPE_38__*) #1

declare dso_local i32 @asm_ir(%struct.TYPE_38__*, %struct.TYPE_36__*) #1

declare dso_local i32 @asm_gc_check(%struct.TYPE_38__*) #1

declare dso_local i32 @ra_evictk(%struct.TYPE_38__*) #1

declare dso_local i32 @asm_head_side(%struct.TYPE_38__*) #1

declare dso_local i32 @asm_head_root(%struct.TYPE_38__*) #1

declare dso_local i32 @asm_phi_fixup(%struct.TYPE_38__*) #1

declare dso_local i32 @RA_DBG_FLUSH(...) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @asm_tail_fixup(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @lj_mcode_sync(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
