; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_idx_key.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_idx_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_24__, %struct.TYPE_21__, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_23__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_25__ = type { i64, i64, i32 }
%struct.TYPE_20__ = type { i32 }

@LJ_MAX_ASIZE = common dso_local global i64 0, align 8
@IR_FLOAD = common dso_local global i32 0, align 4
@IRFL_TAB_ASIZE = common dso_local global i32 0, align 4
@IRT_PGC = common dso_local global i32 0, align 4
@IRFL_TAB_ARRAY = common dso_local global i32 0, align 4
@IR_AREF = common dso_local global i32 0, align 4
@IR_ULE = common dso_local global i32 0, align 4
@IR_EQ = common dso_local global i32 0, align 4
@LJ_TRERR_NYITMIX = common dso_local global i32 0, align 4
@IRFL_TAB_HMASK = common dso_local global i32 0, align 4
@IR_CONV = common dso_local global i32 0, align 4
@IRCONV_NUM_INT = common dso_local global i32 0, align 4
@IRFL_TAB_NODE = common dso_local global i32 0, align 4
@IR_HREFK = common dso_local global i32 0, align 4
@IR_HREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_23__*, i64*, %struct.TYPE_24__*)* @rec_idx_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rec_idx_key(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1, i64* %2, %struct.TYPE_24__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %9, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 4
  %24 = call %struct.TYPE_25__* @tabV(i32* %23)
  store %struct.TYPE_25__* %24, %struct.TYPE_25__** %11, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 2
  %31 = call i64 @lj_tab_get(i32 %27, %struct.TYPE_25__* %28, i32* %30)
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load i64*, i64** %8, align 8
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @tref_isnumber(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %148

43:                                               ; preds = %4
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 2
  %46 = call i64 @numberVint(i32* %45)
  store i64 %46, i64* %12, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 2
  %49 = call i32 @tvisint(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 2
  %54 = call i64 @numV(i32* %53)
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i64, i64* @LJ_MAX_ASIZE, align 8
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %57, %51, %43
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* @LJ_MAX_ASIZE, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %118

63:                                               ; preds = %59
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @lj_opt_narrow_index(%struct.TYPE_22__* %64, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* @IR_FLOAD, align 4
  %68 = call i32 @IRTI(i32 %67)
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IRFL_TAB_ASIZE, align 4
  %73 = call i32 @emitir(i32 %68, i32 %71, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i64, i64* %12, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %63
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @rec_idx_abc(%struct.TYPE_22__* %80, i32 %81, i32 %82, i64 %85)
  %87 = load i32, i32* @IR_FLOAD, align 4
  %88 = load i32, i32* @IRT_PGC, align 4
  %89 = call i32 @IRT(i32 %87, i32 %88)
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @IRFL_TAB_ARRAY, align 4
  %94 = call i32 @emitir(i32 %89, i32 %92, i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* @IR_AREF, align 4
  %96 = load i32, i32* @IRT_PGC, align 4
  %97 = call i32 @IRT(i32 %95, i32 %96)
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @emitir(i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %5, align 4
  br label %271

101:                                              ; preds = %63
  %102 = load i32, i32* @IR_ULE, align 4
  %103 = call i32 @IRTGI(i32 %102)
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @emitir(i32 %103, i32 %104, i32 %105)
  %107 = load i64, i64* %12, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %101
  %110 = load i32, i32* %10, align 4
  %111 = call i64 @tref_isk(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %115 = call i32 @lj_ir_knum_zero(%struct.TYPE_22__* %114)
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %113, %109, %101
  br label %117

117:                                              ; preds = %116
  br label %147

118:                                              ; preds = %59
  %119 = load i32, i32* %10, align 4
  %120 = call i64 @tref_isk(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %146, label %122

122:                                              ; preds = %118
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %122
  %128 = load i32, i32* @IR_FLOAD, align 4
  %129 = call i32 @IRTI(i32 %128)
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @IRFL_TAB_ASIZE, align 4
  %134 = call i32 @emitir(i32 %129, i32 %132, i32 %133)
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* @IR_EQ, align 4
  %136 = call i32 @IRTGI(i32 %135)
  %137 = load i32, i32* %16, align 4
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %139 = call i32 @lj_ir_kint(%struct.TYPE_22__* %138, i64 0)
  %140 = call i32 @emitir(i32 %136, i32 %137, i32 %139)
  br label %145

141:                                              ; preds = %122
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %143 = load i32, i32* @LJ_TRERR_NYITMIX, align 4
  %144 = call i32 @lj_trace_err(%struct.TYPE_22__* %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %127
  br label %146

146:                                              ; preds = %145, %118
  br label %147

147:                                              ; preds = %146, %117
  br label %148

148:                                              ; preds = %147, %4
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %148
  %154 = load i32, i32* @IR_FLOAD, align 4
  %155 = call i32 @IRTI(i32 %154)
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @IRFL_TAB_HMASK, align 4
  %160 = call i32 @emitir(i32 %155, i32 %158, i32 %159)
  store i32 %160, i32* %17, align 4
  %161 = load i32, i32* @IR_EQ, align 4
  %162 = call i32 @IRTGI(i32 %161)
  %163 = load i32, i32* %17, align 4
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %165 = call i32 @lj_ir_kint(%struct.TYPE_22__* %164, i64 0)
  %166 = call i32 @emitir(i32 %162, i32 %163, i32 %165)
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %169 = call i32 @J2G(%struct.TYPE_22__* %168)
  %170 = call i32 @niltvg(i32 %169)
  %171 = call i32 @lj_ir_kkptr(%struct.TYPE_22__* %167, i32 %170)
  store i32 %171, i32* %5, align 4
  br label %271

172:                                              ; preds = %148
  %173 = load i32, i32* %10, align 4
  %174 = call i64 @tref_isinteger(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %172
  %177 = load i32, i32* @IR_CONV, align 4
  %178 = call i32 @IRTN(i32 %177)
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @IRCONV_NUM_INT, align 4
  %181 = call i32 @emitir(i32 %178, i32 %179, i32 %180)
  store i32 %181, i32* %10, align 4
  br label %182

182:                                              ; preds = %176, %172
  %183 = load i32, i32* %10, align 4
  %184 = call i64 @tref_isk(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %262

186:                                              ; preds = %182
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to i8*
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call %struct.TYPE_20__* @noderef(i32 %193)
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i64 0
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 0
  %197 = bitcast i32* %196 to i8*
  %198 = ptrtoint i8* %190 to i64
  %199 = ptrtoint i8* %197 to i64
  %200 = sub i64 %198, %199
  store i64 %200, i64* %18, align 8
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp sgt i64 %203, 0
  br i1 %204, label %205, label %261

205:                                              ; preds = %186
  %206 = load i64, i64* %18, align 8
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = mul nsw i64 %209, 4
  %211 = icmp sle i64 %206, %210
  br i1 %211, label %212, label %261

212:                                              ; preds = %205
  %213 = load i64, i64* %18, align 8
  %214 = icmp sle i64 %213, 262140
  br i1 %214, label %215, label %261

215:                                              ; preds = %212
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64*, i64** %8, align 8
  store i64 %219, i64* %220, align 8
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 0
  %224 = bitcast %struct.TYPE_24__* %221 to i8*
  %225 = bitcast %struct.TYPE_24__* %223 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %224, i8* align 8 %225, i64 8, i1 false)
  %226 = load i32, i32* @IR_FLOAD, align 4
  %227 = call i32 @IRTI(i32 %226)
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @IRFL_TAB_HMASK, align 4
  %232 = call i32 @emitir(i32 %227, i32 %230, i32 %231)
  store i32 %232, i32* %21, align 4
  %233 = load i32, i32* @IR_EQ, align 4
  %234 = call i32 @IRTGI(i32 %233)
  %235 = load i32, i32* %21, align 4
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = call i32 @lj_ir_kint(%struct.TYPE_22__* %236, i64 %239)
  %241 = call i32 @emitir(i32 %234, i32 %235, i32 %240)
  %242 = load i32, i32* @IR_FLOAD, align 4
  %243 = load i32, i32* @IRT_PGC, align 4
  %244 = call i32 @IRT(i32 %242, i32 %243)
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @IRFL_TAB_NODE, align 4
  %249 = call i32 @emitir(i32 %244, i32 %247, i32 %248)
  store i32 %249, i32* %19, align 4
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %251 = load i32, i32* %10, align 4
  %252 = load i64, i64* %18, align 8
  %253 = udiv i64 %252, 4
  %254 = call i32 @lj_ir_kslot(%struct.TYPE_22__* %250, i32 %251, i64 %253)
  store i32 %254, i32* %20, align 4
  %255 = load i32, i32* @IR_HREFK, align 4
  %256 = load i32, i32* @IRT_PGC, align 4
  %257 = call i32 @IRTG(i32 %255, i32 %256)
  %258 = load i32, i32* %19, align 4
  %259 = load i32, i32* %20, align 4
  %260 = call i32 @emitir(i32 %257, i32 %258, i32 %259)
  store i32 %260, i32* %5, align 4
  br label %271

261:                                              ; preds = %212, %205, %186
  br label %262

262:                                              ; preds = %261, %182
  %263 = load i32, i32* @IR_HREF, align 4
  %264 = load i32, i32* @IRT_PGC, align 4
  %265 = call i32 @IRT(i32 %263, i32 %264)
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* %10, align 4
  %270 = call i32 @emitir(i32 %265, i32 %268, i32 %269)
  store i32 %270, i32* %5, align 4
  br label %271

271:                                              ; preds = %262, %215, %153, %79
  %272 = load i32, i32* %5, align 4
  ret i32 %272
}

declare dso_local %struct.TYPE_25__* @tabV(i32*) #1

declare dso_local i64 @lj_tab_get(i32, %struct.TYPE_25__*, i32*) #1

declare dso_local i64 @tref_isnumber(i32) #1

declare dso_local i64 @numberVint(i32*) #1

declare dso_local i32 @tvisint(i32*) #1

declare dso_local i64 @numV(i32*) #1

declare dso_local i32 @lj_opt_narrow_index(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRTI(i32) #1

declare dso_local i32 @rec_idx_abc(%struct.TYPE_22__*, i32, i32, i64) #1

declare dso_local i32 @IRT(i32, i32) #1

declare dso_local i32 @IRTGI(i32) #1

declare dso_local i64 @tref_isk(i32) #1

declare dso_local i32 @lj_ir_knum_zero(%struct.TYPE_22__*) #1

declare dso_local i32 @lj_ir_kint(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @lj_ir_kkptr(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @niltvg(i32) #1

declare dso_local i32 @J2G(%struct.TYPE_22__*) #1

declare dso_local i64 @tref_isinteger(i32) #1

declare dso_local i32 @IRTN(i32) #1

declare dso_local %struct.TYPE_20__* @noderef(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lj_ir_kslot(%struct.TYPE_22__*, i32, i64) #1

declare dso_local i32 @IRTG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
