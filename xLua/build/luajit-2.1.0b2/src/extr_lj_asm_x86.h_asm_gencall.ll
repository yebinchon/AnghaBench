; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_gencall.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_gencall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32*, i32 }
%struct.TYPE_29__ = type { i32, i64 }
%struct.TYPE_28__ = type { i64, i32, i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64, i64 }

@STACKARG_OFS = common dso_local global i32 0, align 4
@CCI_CC_MASK = common dso_local global i32 0, align 4
@CCI_CC_CDECL = common dso_local global i32 0, align 4
@CCI_CC_THISCALL = common dso_local global i32 0, align 4
@REGARG_GPRS = common dso_local global i32 0, align 4
@CCI_CC_FASTCALL = common dso_local global i32 0, align 4
@RID_MAX_GPR = common dso_local global i32 0, align 4
@ASMREF_TMP1 = common dso_local global i64 0, align 8
@LJ_32 = common dso_local global i64 0, align 8
@RID_ESP = common dso_local global i32 0, align 4
@RSET_FPR = common dso_local global i32 0, align 4
@XO_MOVSDto = common dso_local global i32 0, align 4
@XO_MOVSSto = common dso_local global i32 0, align 4
@RSET_GPR = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@CCI_VARARG = common dso_local global i32 0, align 4
@IR_KINT64 = common dso_local global i64 0, align 8
@REGARG_FIRSTFPR = common dso_local global i8* null, align 8
@REGARG_LASTFPR = common dso_local global i32 0, align 4
@RID_EAX = common dso_local global i32 0, align 4
@XI_MOVrib = common dso_local global i32 0, align 4
@XO_MOVDto = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_30__*, %struct.TYPE_29__*, i64*)* @asm_gencall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_gencall(%struct.TYPE_30__* %0, %struct.TYPE_29__* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  store i64* %2, i64** %6, align 8
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %15 = call i32 @CCI_XNARGS(%struct.TYPE_29__* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @STACKARG_OFS, align 4
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CCI_CC_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @CCI_CC_CDECL, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %3
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CCI_CC_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @CCI_CC_THISCALL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @REGARG_GPRS, align 4
  %34 = and i32 %33, 31
  store i32 %34, i32* %10, align 4
  br label %46

35:                                               ; preds = %24
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CCI_CC_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @CCI_CC_FASTCALL, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @REGARG_GPRS, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %43, %35
  br label %46

46:                                               ; preds = %45, %32
  br label %47

47:                                               ; preds = %46, %3
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @emit_call(%struct.TYPE_30__* %54, i64 %57)
  br label %59

59:                                               ; preds = %53, %47
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %266, %59
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %269

64:                                               ; preds = %60
  %65 = load i64*, i64** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call %struct.TYPE_28__* @IR(i64 %70)
  store %struct.TYPE_28__* %71, %struct.TYPE_28__** %12, align 8
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @irt_isfp(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 0, i32* %13, align 4
  br label %90

81:                                               ; preds = %74, %64
  %82 = load i32, i32* %10, align 4
  %83 = and i32 %82, 31
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %10, align 4
  %85 = ashr i32 %84, 5
  store i32 %85, i32* %10, align 4
  %86 = load i64, i64* %11, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  br label %266

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %80
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %141

93:                                               ; preds = %90
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @RID_MAX_GPR, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* @ASMREF_TMP1, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @emit_loadi(%struct.TYPE_30__* %102, i32 %103, i32 %106)
  br label %140

108:                                              ; preds = %97, %93
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @rset_test(i32 %111, i32 %112)
  %114 = call i32 @lua_assert(i32 %113)
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @ra_hasreg(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %108
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @ra_noweak(%struct.TYPE_30__* %121, i32 %124)
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @emit_movrr(%struct.TYPE_30__* %126, %struct.TYPE_28__* %127, i32 %128, i32 %131)
  br label %139

133:                                              ; preds = %108
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %135 = load i64, i64* %11, align 8
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @RID2RSET(i32 %136)
  %138 = call i32 @ra_allocref(%struct.TYPE_30__* %134, i64 %135, i32 %137)
  br label %139

139:                                              ; preds = %133, %120
  br label %140

140:                                              ; preds = %139, %101
  br label %263

141:                                              ; preds = %90
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @irt_isfp(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %230

147:                                              ; preds = %141
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @irt_isfloat(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8
  %155 = call i64 @irref_isk(i64 %154)
  %156 = icmp ne i64 %155, 0
  br label %157

157:                                              ; preds = %153, %147
  %158 = phi i1 [ false, %147 ], [ %156, %153 ]
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = call i32 @lua_assert(i32 %160)
  %162 = load i64, i64* @LJ_32, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %194

164:                                              ; preds = %157
  %165 = load i32, i32* %9, align 4
  %166 = and i32 %165, 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %194

168:                                              ; preds = %164
  %169 = load i64, i64* %11, align 8
  %170 = call i64 @irref_isk(i64 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %194

172:                                              ; preds = %168
  %173 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %174 = load i32, i32* @RID_ESP, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %177 = call %struct.TYPE_31__* @ir_knum(%struct.TYPE_28__* %176)
  %178 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = trunc i64 %180 to i32
  %182 = call i32 @emit_movmroi(%struct.TYPE_30__* %173, i32 %174, i32 %175, i32 %181)
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %184 = load i32, i32* @RID_ESP, align 4
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %185, 4
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %188 = call %struct.TYPE_31__* @ir_knum(%struct.TYPE_28__* %187)
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = call i32 @emit_movmroi(%struct.TYPE_30__* %183, i32 %184, i32 %186, i32 %192)
  br label %215

194:                                              ; preds = %168, %164, %157
  %195 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %196 = load i64, i64* %11, align 8
  %197 = load i32, i32* @RSET_FPR, align 4
  %198 = call i32 @ra_alloc1(%struct.TYPE_30__* %195, i64 %196, i32 %197)
  store i32 %198, i32* %13, align 4
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @irt_isnum(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %194
  %206 = load i32, i32* @XO_MOVSDto, align 4
  br label %209

207:                                              ; preds = %194
  %208 = load i32, i32* @XO_MOVSSto, align 4
  br label %209

209:                                              ; preds = %207, %205
  %210 = phi i32 [ %206, %205 ], [ %208, %207 ]
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* @RID_ESP, align 4
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @emit_rmro(%struct.TYPE_30__* %199, i32 %210, i32 %211, i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %209, %172
  %216 = load i64, i64* @LJ_32, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %215
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call i64 @irt_isfloat(i32 %221)
  %223 = icmp ne i64 %222, 0
  br label %224

224:                                              ; preds = %218, %215
  %225 = phi i1 [ false, %215 ], [ %223, %218 ]
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i32 4, i32 8
  %228 = load i32, i32* %9, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %9, align 4
  br label %262

230:                                              ; preds = %141
  %231 = load i64, i64* @LJ_32, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %245

233:                                              ; preds = %230
  %234 = load i64, i64* %11, align 8
  %235 = load i64, i64* @ASMREF_TMP1, align 8
  %236 = icmp slt i64 %234, %235
  br i1 %236, label %237, label %245

237:                                              ; preds = %233
  %238 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %239 = load i32, i32* @RID_ESP, align 4
  %240 = load i32, i32* %9, align 4
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @emit_movmroi(%struct.TYPE_30__* %238, i32 %239, i32 %240, i32 %243)
  br label %257

245:                                              ; preds = %233, %230
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %247 = load i64, i64* %11, align 8
  %248 = load i32, i32* @RSET_GPR, align 4
  %249 = call i32 @ra_alloc1(%struct.TYPE_30__* %246, i64 %247, i32 %248)
  store i32 %249, i32* %13, align 4
  %250 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %251 = load i32, i32* @REX_64, align 4
  %252 = load i32, i32* %13, align 4
  %253 = add nsw i32 %251, %252
  %254 = load i32, i32* @RID_ESP, align 4
  %255 = load i32, i32* %9, align 4
  %256 = call i32 @emit_movtomro(%struct.TYPE_30__* %250, i32 %253, i32 %254, i32 %255)
  br label %257

257:                                              ; preds = %245, %237
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = add i64 %259, 8
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %9, align 4
  br label %262

262:                                              ; preds = %257, %224
  br label %263

263:                                              ; preds = %262, %140
  %264 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %265 = call i32 @checkmclim(%struct.TYPE_30__* %264)
  br label %266

266:                                              ; preds = %263, %88
  %267 = load i32, i32* %7, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %7, align 4
  br label %60

269:                                              ; preds = %60
  ret void
}

declare dso_local i32 @CCI_XNARGS(%struct.TYPE_29__*) #1

declare dso_local i32 @emit_call(%struct.TYPE_30__*, i64) #1

declare dso_local %struct.TYPE_28__* @IR(i64) #1

declare dso_local i64 @irt_isfp(i32) #1

declare dso_local i32 @emit_loadi(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @rset_test(i32, i32) #1

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @ra_noweak(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @emit_movrr(%struct.TYPE_30__*, %struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @ra_allocref(%struct.TYPE_30__*, i64, i32) #1

declare dso_local i32 @RID2RSET(i32) #1

declare dso_local i64 @irt_isfloat(i32) #1

declare dso_local i64 @irref_isk(i64) #1

declare dso_local i32 @emit_movmroi(%struct.TYPE_30__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_31__* @ir_knum(%struct.TYPE_28__*) #1

declare dso_local i32 @ra_alloc1(%struct.TYPE_30__*, i64, i32) #1

declare dso_local i32 @emit_rmro(%struct.TYPE_30__*, i32, i32, i32, i32) #1

declare dso_local i64 @irt_isnum(i32) #1

declare dso_local i32 @emit_movtomro(%struct.TYPE_30__*, i32, i32, i32) #1

declare dso_local i32 @checkmclim(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
