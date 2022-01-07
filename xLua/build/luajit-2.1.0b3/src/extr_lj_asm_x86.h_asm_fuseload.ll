; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_fuseload.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_fuseload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32, i8*, i8* }
%struct.TYPE_24__ = type { i64, i32, i64, i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }

@RSET_EMPTY = common dso_local global i32 0, align 4
@RID_ESP = common dso_local global i8* null, align 8
@RID_NONE = common dso_local global i8* null, align 8
@RID_MRM = common dso_local global i32 0, align 4
@IR_KNUM = common dso_local global i64 0, align 8
@RSET_FPR = common dso_local global i32 0, align 4
@REF_BASE = common dso_local global i64 0, align 8
@IR_KINT64 = common dso_local global i64 0, align 8
@RSET_GPR = common dso_local global i32 0, align 4
@IR_SLOAD = common dso_local global i64 0, align 8
@IRSLOAD_PARENT = common dso_local global i32 0, align 4
@IRSLOAD_CONVERT = common dso_local global i32 0, align 4
@IR_RETF = common dso_local global i64 0, align 8
@LJ_GC64 = common dso_local global i64 0, align 8
@LJ_FR2 = common dso_local global i32 0, align 4
@IRSLOAD_FRAME = common dso_local global i32 0, align 4
@IR_FLOAD = common dso_local global i64 0, align 8
@IR_FSTORE = common dso_local global i64 0, align 8
@IR_ALOAD = common dso_local global i64 0, align 8
@IR_HLOAD = common dso_local global i64 0, align 8
@IR_ULOAD = common dso_local global i64 0, align 8
@IRDELTA_L2S = common dso_local global i64 0, align 8
@IR_XLOAD = common dso_local global i64 0, align 8
@IRT_I8 = common dso_local global i32 0, align 4
@IRT_U16 = common dso_local global i32 0, align 4
@IR_XSTORE = common dso_local global i64 0, align 8
@IR_VLOAD = common dso_local global i64 0, align 8
@REF_NIL = common dso_local global i64 0, align 8
@RID_DISPATCH = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i64, i32)* @asm_fuseload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asm_fuseload(%struct.TYPE_25__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* %6, align 8
  %13 = call %struct.TYPE_24__* @IR(i64 %12)
  store %struct.TYPE_24__* %13, %struct.TYPE_24__** %8, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @ra_hasreg(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @RSET_EMPTY, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ra_noweak(%struct.TYPE_25__* %24, i32 %27)
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %4, align 4
  br label %417

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %411, %32
  %34 = load i8*, i8** @RID_ESP, align 8
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 2
  store i8* %34, i8** %37, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %40 = call i32 @ra_spill(%struct.TYPE_25__* %38, %struct.TYPE_24__* %39)
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i8*, i8** @RID_NONE, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load i32, i32* @RID_MRM, align 4
  store i32 %48, i32* %4, align 4
  br label %417

49:                                               ; preds = %3
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IR_KNUM, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %58, %62
  %64 = load i32, i32* @RSET_FPR, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @RSET_EMPTY, align 4
  %68 = icmp ne i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @lua_assert(i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %72, 1
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %55
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %79 = call i32 @asm_fuseloadk64(%struct.TYPE_25__* %77, %struct.TYPE_24__* %78)
  store i32 %79, i32* %4, align 4
  br label %417

80:                                               ; preds = %55
  br label %367

81:                                               ; preds = %49
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @REF_BASE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @IR_KINT64, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %140

91:                                               ; preds = %85, %81
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = xor i32 %97, -1
  %99 = and i32 %94, %98
  %100 = load i32, i32* @RSET_GPR, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @RSET_EMPTY, align 4
  %104 = icmp ne i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @lua_assert(i32 %105)
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = sub nsw i32 %108, 1
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %139, label %112

112:                                              ; preds = %91
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* @REF_BASE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %112
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call %struct.TYPE_23__* @J2G(i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = call i32 @ptr2addr(i32* %121)
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  %126 = load i8*, i8** @RID_NONE, align 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 2
  store i8* %126, i8** %129, align 8
  %130 = load i8*, i8** @RID_NONE, align 8
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 1
  store i8* %130, i8** %133, align 8
  %134 = load i32, i32* @RID_MRM, align 4
  store i32 %134, i32* %4, align 4
  br label %417

135:                                              ; preds = %112
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %138 = call i32 @asm_fuseloadk64(%struct.TYPE_25__* %136, %struct.TYPE_24__* %137)
  store i32 %138, i32* %4, align 4
  br label %417

139:                                              ; preds = %91
  br label %366

140:                                              ; preds = %85
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %142 = load i64, i64* %6, align 8
  %143 = call i64 @mayfuse(%struct.TYPE_25__* %141, i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %365

145:                                              ; preds = %140
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @RSET_GPR, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i32, i32* %7, align 4
  br label %154

152:                                              ; preds = %145
  %153 = load i32, i32* @RSET_GPR, align 4
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  store i32 %155, i32* %11, align 4
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @IR_SLOAD, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %225

161:                                              ; preds = %154
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @IRSLOAD_PARENT, align 4
  %166 = load i32, i32* @IRSLOAD_CONVERT, align 4
  %167 = or i32 %165, %166
  %168 = and i32 %164, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %224, label %170

170:                                              ; preds = %161
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %172 = load i64, i64* %6, align 8
  %173 = load i64, i64* @IR_RETF, align 8
  %174 = call i64 @noconflict(%struct.TYPE_25__* %171, i64 %172, i64 %173, i32 0)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %224

176:                                              ; preds = %170
  %177 = load i64, i64* @LJ_GC64, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @irt_isaddr(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %224, label %185

185:                                              ; preds = %179, %176
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %187 = load i64, i64* @REF_BASE, align 8
  %188 = load i32, i32* %11, align 4
  %189 = call i64 @ra_alloc1(%struct.TYPE_25__* %186, i64 %187, i32 %188)
  %190 = inttoptr i64 %189 to i8*
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 2
  store i8* %190, i8** %193, align 8
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = sub nsw i32 %197, 1
  %199 = load i32, i32* @LJ_FR2, align 4
  %200 = sub nsw i32 %198, %199
  %201 = mul nsw i32 8, %200
  %202 = load i32, i32* @LJ_FR2, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %211, label %204

204:                                              ; preds = %185
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @IRSLOAD_FRAME, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br label %211

211:                                              ; preds = %204, %185
  %212 = phi i1 [ false, %185 ], [ %210, %204 ]
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i32 4, i32 0
  %215 = add nsw i32 %201, %214
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 0
  store i32 %215, i32* %218, align 8
  %219 = load i8*, i8** @RID_NONE, align 8
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 1
  store i8* %219, i8** %222, align 8
  %223 = load i32, i32* @RID_MRM, align 4
  store i32 %223, i32* %4, align 4
  br label %417

224:                                              ; preds = %179, %170, %161
  br label %364

225:                                              ; preds = %154
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @IR_FLOAD, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %262

231:                                              ; preds = %225
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = call i64 @irt_isint(i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %249, label %237

237:                                              ; preds = %231
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  %241 = call i64 @irt_isu32(i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %249, label %243

243:                                              ; preds = %237
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 4
  %247 = call i64 @irt_isaddr(i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %261

249:                                              ; preds = %243, %237, %231
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %251 = load i64, i64* %6, align 8
  %252 = load i64, i64* @IR_FSTORE, align 8
  %253 = call i64 @noconflict(%struct.TYPE_25__* %250, i64 %251, i64 %252, i32 0)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %249
  %256 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %258 = load i32, i32* %11, align 4
  %259 = call i32 @asm_fusefref(%struct.TYPE_25__* %256, %struct.TYPE_24__* %257, i32 %258)
  %260 = load i32, i32* @RID_MRM, align 4
  store i32 %260, i32* %4, align 4
  br label %417

261:                                              ; preds = %249, %243
  br label %363

262:                                              ; preds = %225
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @IR_ALOAD, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %280, label %268

268:                                              ; preds = %262
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @IR_HLOAD, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %280, label %274

274:                                              ; preds = %268
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @IR_ULOAD, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %308

280:                                              ; preds = %274, %268, %262
  %281 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %282 = load i64, i64* %6, align 8
  %283 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @IRDELTA_L2S, align 8
  %287 = add nsw i64 %285, %286
  %288 = call i64 @noconflict(%struct.TYPE_25__* %281, i64 %282, i64 %287, i32 0)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %307

290:                                              ; preds = %280
  %291 = load i64, i64* @LJ_GC64, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %290
  %294 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 4
  %297 = call i64 @irt_isaddr(i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %307, label %299

299:                                              ; preds = %293, %290
  %300 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %301 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = load i32, i32* %11, align 4
  %305 = call i32 @asm_fuseahuref(%struct.TYPE_25__* %300, i64 %303, i32 %304)
  %306 = load i32, i32* @RID_MRM, align 4
  store i32 %306, i32* %4, align 4
  br label %417

307:                                              ; preds = %293, %280
  br label %362

308:                                              ; preds = %274
  %309 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @IR_XLOAD, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %337

314:                                              ; preds = %308
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @IRT_I8, align 4
  %319 = load i32, i32* @IRT_U16, align 4
  %320 = call i32 @irt_typerange(i32 %317, i32 %318, i32 %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %336, label %322

322:                                              ; preds = %314
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %324 = load i64, i64* %6, align 8
  %325 = load i64, i64* @IR_XSTORE, align 8
  %326 = call i64 @noconflict(%struct.TYPE_25__* %323, i64 %324, i64 %325, i32 0)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %336

328:                                              ; preds = %322
  %329 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 2
  %332 = load i64, i64* %331, align 8
  %333 = load i32, i32* %11, align 4
  %334 = call i32 @asm_fusexref(%struct.TYPE_25__* %329, i64 %332, i32 %333)
  %335 = load i32, i32* @RID_MRM, align 4
  store i32 %335, i32* %4, align 4
  br label %417

336:                                              ; preds = %322, %314
  br label %361

337:                                              ; preds = %308
  %338 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @IR_VLOAD, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %360

343:                                              ; preds = %337
  %344 = load i64, i64* @LJ_GC64, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %343
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 4
  %350 = call i64 @irt_isaddr(i32 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %360, label %352

352:                                              ; preds = %346, %343
  %353 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %354 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %354, i32 0, i32 2
  %356 = load i64, i64* %355, align 8
  %357 = load i32, i32* %11, align 4
  %358 = call i32 @asm_fuseahuref(%struct.TYPE_25__* %353, i64 %356, i32 %357)
  %359 = load i32, i32* @RID_MRM, align 4
  store i32 %359, i32* %4, align 4
  br label %417

360:                                              ; preds = %346, %337
  br label %361

361:                                              ; preds = %360, %336
  br label %362

362:                                              ; preds = %361, %307
  br label %363

363:                                              ; preds = %362, %261
  br label %364

364:                                              ; preds = %363, %224
  br label %365

365:                                              ; preds = %364, %140
  br label %366

366:                                              ; preds = %365, %139
  br label %367

367:                                              ; preds = %366, %80
  %368 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %369 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @IR_FLOAD, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %385

373:                                              ; preds = %367
  %374 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %375 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %374, i32 0, i32 2
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @REF_NIL, align 8
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %379, label %385

379:                                              ; preds = %373
  %380 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %381 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %382 = load i32, i32* @RSET_EMPTY, align 4
  %383 = call i32 @asm_fusefref(%struct.TYPE_25__* %380, %struct.TYPE_24__* %381, i32 %382)
  %384 = load i32, i32* @RID_MRM, align 4
  store i32 %384, i32* %4, align 4
  br label %417

385:                                              ; preds = %373, %367
  %386 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %387 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = load i32, i32* %7, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %412, label %392

392:                                              ; preds = %385
  %393 = load i64, i64* %6, align 8
  %394 = call i32 @emit_canremat(i64 %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %412, label %396

396:                                              ; preds = %392
  %397 = load i32, i32* %7, align 4
  %398 = load i32, i32* @RSET_EMPTY, align 4
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %411, label %400

400:                                              ; preds = %396
  %401 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 8
  %404 = call i64 @ra_hasspill(i32 %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %411, label %406

406:                                              ; preds = %400
  %407 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %408 = load i64, i64* %6, align 8
  %409 = call i64 @iscrossref(%struct.TYPE_25__* %407, i64 %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %406, %400, %396
  br label %33

412:                                              ; preds = %406, %392, %385
  %413 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %414 = load i64, i64* %6, align 8
  %415 = load i32, i32* %7, align 4
  %416 = call i32 @ra_allocref(%struct.TYPE_25__* %413, i64 %414, i32 %415)
  store i32 %416, i32* %4, align 4
  br label %417

417:                                              ; preds = %412, %379, %352, %328, %299, %255, %211, %135, %116, %76, %33, %23
  %418 = load i32, i32* %4, align 4
  ret i32 %418
}

declare dso_local %struct.TYPE_24__* @IR(i64) #1

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @ra_noweak(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ra_spill(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @asm_fuseloadk64(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @ptr2addr(i32*) #1

declare dso_local %struct.TYPE_23__* @J2G(i32) #1

declare dso_local i64 @mayfuse(%struct.TYPE_25__*, i64) #1

declare dso_local i64 @noconflict(%struct.TYPE_25__*, i64, i64, i32) #1

declare dso_local i64 @irt_isaddr(i32) #1

declare dso_local i64 @ra_alloc1(%struct.TYPE_25__*, i64, i32) #1

declare dso_local i64 @irt_isint(i32) #1

declare dso_local i64 @irt_isu32(i32) #1

declare dso_local i32 @asm_fusefref(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @asm_fuseahuref(%struct.TYPE_25__*, i64, i32) #1

declare dso_local i32 @irt_typerange(i32, i32, i32) #1

declare dso_local i32 @asm_fusexref(%struct.TYPE_25__*, i64, i32) #1

declare dso_local i32 @emit_canremat(i64) #1

declare dso_local i64 @ra_hasspill(i32) #1

declare dso_local i64 @iscrossref(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @ra_allocref(%struct.TYPE_25__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
