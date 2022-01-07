; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_mem.c_fwd_ahload.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_mem.c_fwd_ahload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_20__ = type { i64*, i32 }
%struct.TYPE_22__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_21__ = type { i32 }

@fins = common dso_local global %struct.TYPE_19__* null, align 8
@IRDELTA_L2S = common dso_local global i64 0, align 8
@IR_HREFK = common dso_local global i64 0, align 8
@IR_AREF = common dso_local global i64 0, align 8
@IR_TNEW = common dso_local global i64 0, align 8
@IR_TDUP = common dso_local global i64 0, align 8
@IR_NEWREF = common dso_local global i64 0, align 8
@LJ_DUALNUM = common dso_local global i64 0, align 8
@IR_KSLOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, i64)* @fwd_ahload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fwd_ahload(%struct.TYPE_20__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i64 %1, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call %struct.TYPE_22__* @IR(i64 %19)
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %6, align 8
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %7, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** @fins, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IRDELTA_L2S, align 8
  %29 = add i64 %27, %28
  %30 = getelementptr inbounds i64, i64* %24, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %53, %2
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load i64, i64* %8, align 8
  %38 = call %struct.TYPE_22__* @IR(i64 %37)
  store %struct.TYPE_22__* %38, %struct.TYPE_22__** %9, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call %struct.TYPE_22__* @IR(i64 %43)
  %45 = call i32 @aa_ahref(%struct.TYPE_20__* %39, %struct.TYPE_22__* %40, %struct.TYPE_22__* %44)
  switch i32 %45, label %53 [
    i32 128, label %46
    i32 130, label %47
    i32 129, label %49
  ]

46:                                               ; preds = %36
  br label %53

47:                                               ; preds = %36
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %7, align 8
  br label %279

49:                                               ; preds = %36
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %3, align 8
  br label %307

53:                                               ; preds = %36, %46
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %8, align 8
  br label %32

57:                                               ; preds = %32
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IR_HREFK, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IR_AREF, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63, %57
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call %struct.TYPE_22__* @IR(i64 %72)
  br label %76

74:                                               ; preds = %63
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  br label %76

76:                                               ; preds = %74, %69
  %77 = phi %struct.TYPE_22__* [ %73, %69 ], [ %75, %74 ]
  store %struct.TYPE_22__* %77, %struct.TYPE_22__** %10, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call %struct.TYPE_22__* @IR(i64 %81)
  store %struct.TYPE_22__* %82, %struct.TYPE_22__** %10, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @IR_TNEW, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %100, label %88

88:                                               ; preds = %76
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @IR_TDUP, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %278

94:                                               ; preds = %88
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @irref_isk(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %278

100:                                              ; preds = %94, %76
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @IR_AREF, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %134

106:                                              ; preds = %100
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* @IR_NEWREF, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %12, align 8
  br label %113

113:                                              ; preds = %129, %106
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %11, align 8
  %116 = icmp sgt i64 %114, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %113
  %118 = load i64, i64* %12, align 8
  %119 = call %struct.TYPE_22__* @IR(i64 %118)
  store %struct.TYPE_22__* %119, %struct.TYPE_22__** %13, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call %struct.TYPE_22__* @IR(i64 %122)
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @irt_isnum(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  br label %279

129:                                              ; preds = %117
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %12, align 8
  br label %113

133:                                              ; preds = %113
  br label %134

134:                                              ; preds = %133, %100
  br label %135

135:                                              ; preds = %155, %134
  %136 = load i64, i64* %8, align 8
  %137 = load i64, i64* %11, align 8
  %138 = icmp sgt i64 %136, %137
  br i1 %138, label %139, label %159

139:                                              ; preds = %135
  %140 = load i64, i64* %8, align 8
  %141 = call %struct.TYPE_22__* @IR(i64 %140)
  store %struct.TYPE_22__* %141, %struct.TYPE_22__** %14, align 8
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call %struct.TYPE_22__* @IR(i64 %146)
  %148 = call i32 @aa_ahref(%struct.TYPE_20__* %142, %struct.TYPE_22__* %143, %struct.TYPE_22__* %147)
  switch i32 %148, label %155 [
    i32 128, label %149
    i32 130, label %150
    i32 129, label %151
  ]

149:                                              ; preds = %139
  br label %155

150:                                              ; preds = %139
  br label %279

151:                                              ; preds = %139
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %3, align 8
  br label %307

155:                                              ; preds = %139, %149
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %8, align 8
  br label %135

159:                                              ; preds = %135
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @IR_TNEW, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %171, label %165

165:                                              ; preds = %159
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** @fins, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @irt_isnil(i32 %168)
  %170 = icmp ne i64 %169, 0
  br label %171

171:                                              ; preds = %165, %159
  %172 = phi i1 [ true, %159 ], [ %170, %165 ]
  %173 = zext i1 %172 to i32
  %174 = call i32 @lua_assert(i32 %173)
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** @fins, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @irt_ispri(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %171
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** @fins, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i64 @irt_type(i32 %183)
  %185 = call i64 @TREF_PRI(i64 %184)
  store i64 %185, i64* %3, align 8
  br label %307

186:                                              ; preds = %171
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** @fins, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @irt_isnum(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %207, label %192

192:                                              ; preds = %186
  %193 = load i64, i64* @LJ_DUALNUM, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** @fins, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = call i64 @irt_isint(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %195, %192
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** @fins, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = call i64 @irt_isstr(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %276

207:                                              ; preds = %201, %195, %186
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = call %struct.TYPE_22__* @IR(i64 %210)
  store %struct.TYPE_22__* %211, %struct.TYPE_22__** %17, align 8
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @IR_KSLOT, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %207
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call %struct.TYPE_22__* @IR(i64 %220)
  store %struct.TYPE_22__* %221, %struct.TYPE_22__** %17, align 8
  br label %222

222:                                              ; preds = %217, %207
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %227 = call i32 @lj_ir_kvalue(i32 %225, i32* %15, %struct.TYPE_22__* %226)
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = call %struct.TYPE_22__* @IR(i64 %233)
  %235 = call i32 @ir_ktab(%struct.TYPE_22__* %234)
  %236 = call %struct.TYPE_21__* @lj_tab_get(i32 %230, i32 %235, i32* %15)
  store %struct.TYPE_21__* %236, %struct.TYPE_21__** %16, align 8
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %238 = call i64 @itype2irt(%struct.TYPE_21__* %237)
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** @fins, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = call i64 @irt_type(i32 %241)
  %243 = icmp eq i64 %238, %242
  %244 = zext i1 %243 to i32
  %245 = call i32 @lua_assert(i32 %244)
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** @fins, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = call i64 @irt_isnum(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %222
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i64 @lj_ir_knum_u64(%struct.TYPE_20__* %252, i32 %255)
  store i64 %256, i64* %3, align 8
  br label %307

257:                                              ; preds = %222
  %258 = load i64, i64* @LJ_DUALNUM, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %271

260:                                              ; preds = %257
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** @fins, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = call i64 @irt_isint(i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %260
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %269 = call i32 @intV(%struct.TYPE_21__* %268)
  %270 = call i64 @lj_ir_kint(%struct.TYPE_20__* %267, i32 %269)
  store i64 %270, i64* %3, align 8
  br label %307

271:                                              ; preds = %260, %257
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %274 = call i32 @strV(%struct.TYPE_21__* %273)
  %275 = call i64 @lj_ir_kstr(%struct.TYPE_20__* %272, i32 %274)
  store i64 %275, i64* %3, align 8
  br label %307

276:                                              ; preds = %201
  br label %277

277:                                              ; preds = %276
  br label %278

278:                                              ; preds = %277, %94, %88
  br label %279

279:                                              ; preds = %278, %150, %128, %47
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 0
  %282 = load i64*, i64** %281, align 8
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** @fins, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds i64, i64* %282, i64 %285
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %8, align 8
  br label %288

288:                                              ; preds = %302, %279
  %289 = load i64, i64* %8, align 8
  %290 = load i64, i64* %7, align 8
  %291 = icmp sgt i64 %289, %290
  br i1 %291, label %292, label %306

292:                                              ; preds = %288
  %293 = load i64, i64* %8, align 8
  %294 = call %struct.TYPE_22__* @IR(i64 %293)
  store %struct.TYPE_22__* %294, %struct.TYPE_22__** %18, align 8
  %295 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* %5, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %302

300:                                              ; preds = %292
  %301 = load i64, i64* %8, align 8
  store i64 %301, i64* %3, align 8
  br label %307

302:                                              ; preds = %292
  %303 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %304 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %8, align 8
  br label %288

306:                                              ; preds = %288
  store i64 0, i64* %3, align 8
  br label %307

307:                                              ; preds = %306, %300, %271, %266, %251, %180, %151, %49
  %308 = load i64, i64* %3, align 8
  ret i64 %308
}

declare dso_local %struct.TYPE_22__* @IR(i64) #1

declare dso_local i32 @aa_ahref(%struct.TYPE_20__*, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i64 @irref_isk(i64) #1

declare dso_local i64 @irt_isnum(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @irt_isnil(i32) #1

declare dso_local i64 @irt_ispri(i32) #1

declare dso_local i64 @TREF_PRI(i64) #1

declare dso_local i64 @irt_type(i32) #1

declare dso_local i64 @irt_isint(i32) #1

declare dso_local i64 @irt_isstr(i32) #1

declare dso_local i32 @lj_ir_kvalue(i32, i32*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @lj_tab_get(i32, i32, i32*) #1

declare dso_local i32 @ir_ktab(%struct.TYPE_22__*) #1

declare dso_local i64 @itype2irt(%struct.TYPE_21__*) #1

declare dso_local i64 @lj_ir_knum_u64(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @lj_ir_kint(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @intV(%struct.TYPE_21__*) #1

declare dso_local i64 @lj_ir_kstr(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @strV(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
