; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_fuseload.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_fuseload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i8*, i8* }
%struct.TYPE_21__ = type { i64, i32, i32, i64, i32, i32 }

@RSET_EMPTY = common dso_local global i32 0, align 4
@RID_ESP = common dso_local global i8* null, align 8
@RID_NONE = common dso_local global i8* null, align 8
@RID_MRM = common dso_local global i32 0, align 4
@IR_KNUM = common dso_local global i64 0, align 8
@RSET_FPR = common dso_local global i32 0, align 4
@IR_KINT64 = common dso_local global i64 0, align 8
@RSET_GPR = common dso_local global i32 0, align 4
@IR_SLOAD = common dso_local global i64 0, align 8
@IRSLOAD_PARENT = common dso_local global i32 0, align 4
@IRSLOAD_CONVERT = common dso_local global i32 0, align 4
@IR_RETF = common dso_local global i64 0, align 8
@REF_BASE = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32, i32)* @asm_fuseload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asm_fuseload(%struct.TYPE_22__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.TYPE_21__* @IR(i32 %12)
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %8, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ra_hasreg(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @RSET_EMPTY, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ra_noweak(%struct.TYPE_22__* %24, i32 %27)
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  br label %362

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %356, %32
  %34 = load i8*, i8** @RID_ESP, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  store i8* %34, i8** %37, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %40 = call i32 @ra_spill(%struct.TYPE_22__* %38, %struct.TYPE_21__* %39)
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i8*, i8** @RID_NONE, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load i32, i32* @RID_MRM, align 4
  store i32 %48, i32* %4, align 4
  br label %362

49:                                               ; preds = %3
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IR_KNUM, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %93

55:                                               ; preds = %49
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 1
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
  br i1 %75, label %92, label %76

76:                                               ; preds = %55
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %78 = call i32 @ir_knum(%struct.TYPE_21__* %77)
  %79 = call i8* @ptr2addr(i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load i8*, i8** @RID_NONE, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  store i8* %84, i8** %87, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 2
  store i8* %84, i8** %90, align 8
  %91 = load i32, i32* @RID_MRM, align 4
  store i32 %91, i32* %4, align 4
  br label %362

92:                                               ; preds = %55
  br label %330

93:                                               ; preds = %49
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @IR_KINT64, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %137

99:                                               ; preds = %93
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %105, -1
  %107 = and i32 %102, %106
  %108 = load i32, i32* @RSET_GPR, align 4
  %109 = and i32 %107, %108
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @RSET_EMPTY, align 4
  %112 = icmp ne i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @lua_assert(i32 %113)
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = sub nsw i32 %116, 1
  %118 = and i32 %115, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %136, label %120

120:                                              ; preds = %99
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %122 = call i32 @ir_kint64(%struct.TYPE_21__* %121)
  %123 = call i8* @ptr2addr(i32 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  %128 = load i8*, i8** @RID_NONE, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  store i8* %128, i8** %131, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 2
  store i8* %128, i8** %134, align 8
  %135 = load i32, i32* @RID_MRM, align 4
  store i32 %135, i32* %4, align 4
  br label %362

136:                                              ; preds = %99
  br label %329

137:                                              ; preds = %93
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %139 = load i32, i32* %6, align 4
  %140 = call i64 @mayfuse(%struct.TYPE_22__* %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %328

142:                                              ; preds = %137
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @RSET_GPR, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* %7, align 4
  br label %151

149:                                              ; preds = %142
  %150 = load i32, i32* @RSET_GPR, align 4
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i32 [ %148, %147 ], [ %150, %149 ]
  store i32 %152, i32* %11, align 4
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @IR_SLOAD, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %206

158:                                              ; preds = %151
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @IRSLOAD_PARENT, align 4
  %163 = load i32, i32* @IRSLOAD_CONVERT, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %161, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %205, label %167

167:                                              ; preds = %158
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %169 = load i32, i32* %6, align 4
  %170 = load i64, i64* @IR_RETF, align 8
  %171 = call i64 @noconflict(%struct.TYPE_22__* %168, i32 %169, i64 %170, i32 0)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %205

173:                                              ; preds = %167
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %175 = load i32, i32* @REF_BASE, align 4
  %176 = load i32, i32* %11, align 4
  %177 = call i64 @ra_alloc1(%struct.TYPE_22__* %174, i32 %175, i32 %176)
  %178 = inttoptr i64 %177 to i8*
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 2
  store i8* %178, i8** %181, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  %186 = sub nsw i32 %185, 1
  %187 = mul nsw i32 8, %186
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @IRSLOAD_FRAME, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 4, i32 0
  %196 = add nsw i32 %187, %195
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 0
  store i32 %196, i32* %199, align 8
  %200 = load i8*, i8** @RID_NONE, align 8
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 1
  store i8* %200, i8** %203, align 8
  %204 = load i32, i32* @RID_MRM, align 4
  store i32 %204, i32* %4, align 4
  br label %362

205:                                              ; preds = %167, %158
  br label %327

206:                                              ; preds = %151
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @IR_FLOAD, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %243

212:                                              ; preds = %206
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = call i64 @irt_isint(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %230, label %218

218:                                              ; preds = %212
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = call i64 @irt_isu32(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %218
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = call i64 @irt_isaddr(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %242

230:                                              ; preds = %224, %218, %212
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %232 = load i32, i32* %6, align 4
  %233 = load i64, i64* @IR_FSTORE, align 8
  %234 = call i64 @noconflict(%struct.TYPE_22__* %231, i32 %232, i64 %233, i32 0)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %230
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %239 = load i32, i32* %11, align 4
  %240 = call i32 @asm_fusefref(%struct.TYPE_22__* %237, %struct.TYPE_21__* %238, i32 %239)
  %241 = load i32, i32* @RID_MRM, align 4
  store i32 %241, i32* %4, align 4
  br label %362

242:                                              ; preds = %230, %224
  br label %326

243:                                              ; preds = %206
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @IR_ALOAD, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %261, label %249

249:                                              ; preds = %243
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @IR_HLOAD, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %261, label %255

255:                                              ; preds = %249
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @IR_ULOAD, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %280

261:                                              ; preds = %255, %249, %243
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %263 = load i32, i32* %6, align 4
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @IRDELTA_L2S, align 8
  %268 = add nsw i64 %266, %267
  %269 = call i64 @noconflict(%struct.TYPE_22__* %262, i32 %263, i64 %268, i32 0)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %261
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = load i32, i32* %11, align 4
  %277 = call i32 @asm_fuseahuref(%struct.TYPE_22__* %272, i64 %275, i32 %276)
  %278 = load i32, i32* @RID_MRM, align 4
  store i32 %278, i32* %4, align 4
  br label %362

279:                                              ; preds = %261
  br label %325

280:                                              ; preds = %255
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @IR_XLOAD, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %309

286:                                              ; preds = %280
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @IRT_I8, align 4
  %291 = load i32, i32* @IRT_U16, align 4
  %292 = call i32 @irt_typerange(i32 %289, i32 %290, i32 %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %308, label %294

294:                                              ; preds = %286
  %295 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %296 = load i32, i32* %6, align 4
  %297 = load i64, i64* @IR_XSTORE, align 8
  %298 = call i64 @noconflict(%struct.TYPE_22__* %295, i32 %296, i64 %297, i32 0)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %294
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = load i32, i32* %11, align 4
  %306 = call i32 @asm_fusexref(%struct.TYPE_22__* %301, i64 %304, i32 %305)
  %307 = load i32, i32* @RID_MRM, align 4
  store i32 %307, i32* %4, align 4
  br label %362

308:                                              ; preds = %294, %286
  br label %324

309:                                              ; preds = %280
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @IR_VLOAD, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %323

315:                                              ; preds = %309
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i32 0, i32 3
  %319 = load i64, i64* %318, align 8
  %320 = load i32, i32* %11, align 4
  %321 = call i32 @asm_fuseahuref(%struct.TYPE_22__* %316, i64 %319, i32 %320)
  %322 = load i32, i32* @RID_MRM, align 4
  store i32 %322, i32* %4, align 4
  br label %362

323:                                              ; preds = %309
  br label %324

324:                                              ; preds = %323, %308
  br label %325

325:                                              ; preds = %324, %279
  br label %326

326:                                              ; preds = %325, %242
  br label %327

327:                                              ; preds = %326, %205
  br label %328

328:                                              ; preds = %327, %137
  br label %329

329:                                              ; preds = %328, %136
  br label %330

330:                                              ; preds = %329, %92
  %331 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* %7, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %357, label %337

337:                                              ; preds = %330
  %338 = load i32, i32* %6, align 4
  %339 = call i32 @irref_isk(i32 %338)
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %357, label %341

341:                                              ; preds = %337
  %342 = load i32, i32* %7, align 4
  %343 = load i32, i32* @RSET_EMPTY, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %356, label %345

345:                                              ; preds = %341
  %346 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 4
  %349 = call i64 @ra_hasspill(i32 %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %356, label %351

351:                                              ; preds = %345
  %352 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %353 = load i32, i32* %6, align 4
  %354 = call i64 @iscrossref(%struct.TYPE_22__* %352, i32 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %351, %345, %341
  br label %33

357:                                              ; preds = %351, %337, %330
  %358 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %359 = load i32, i32* %6, align 4
  %360 = load i32, i32* %7, align 4
  %361 = call i32 @ra_allocref(%struct.TYPE_22__* %358, i32 %359, i32 %360)
  store i32 %361, i32* %4, align 4
  br label %362

362:                                              ; preds = %357, %315, %300, %271, %236, %173, %120, %76, %33, %23
  %363 = load i32, i32* %4, align 4
  ret i32 %363
}

declare dso_local %struct.TYPE_21__* @IR(i32) #1

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @ra_noweak(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ra_spill(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i8* @ptr2addr(i32) #1

declare dso_local i32 @ir_knum(%struct.TYPE_21__*) #1

declare dso_local i32 @ir_kint64(%struct.TYPE_21__*) #1

declare dso_local i64 @mayfuse(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @noconflict(%struct.TYPE_22__*, i32, i64, i32) #1

declare dso_local i64 @ra_alloc1(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @irt_isint(i32) #1

declare dso_local i64 @irt_isu32(i32) #1

declare dso_local i64 @irt_isaddr(i32) #1

declare dso_local i32 @asm_fusefref(%struct.TYPE_22__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @asm_fuseahuref(%struct.TYPE_22__*, i64, i32) #1

declare dso_local i32 @irt_typerange(i32, i32, i32) #1

declare dso_local i32 @asm_fusexref(%struct.TYPE_22__*, i64, i32) #1

declare dso_local i32 @irref_isk(i32) #1

declare dso_local i64 @ra_hasspill(i32) #1

declare dso_local i64 @iscrossref(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ra_allocref(%struct.TYPE_22__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
