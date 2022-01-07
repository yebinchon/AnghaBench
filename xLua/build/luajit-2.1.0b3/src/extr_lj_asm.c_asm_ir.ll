; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_asm_ir.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_asm_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_136__ = type { %struct.TYPE_137__*, i32, i32 }
%struct.TYPE_137__ = type { i32 }
%struct.TYPE_135__ = type { i32, i32, i32 }

@RSET_FPR = common dso_local global i32 0, align 4
@RSET_GPR = common dso_local global i32 0, align 4
@LJ_TRERR_NYIIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_136__*, %struct.TYPE_135__*)* @asm_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_ir(%struct.TYPE_136__* %0, %struct.TYPE_135__* %1) #0 {
  %3 = alloca %struct.TYPE_136__*, align 8
  %4 = alloca %struct.TYPE_135__*, align 8
  store %struct.TYPE_136__* %0, %struct.TYPE_136__** %3, align 8
  store %struct.TYPE_135__* %1, %struct.TYPE_135__** %4, align 8
  %5 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_135__, %struct.TYPE_135__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %321 [
    i32 169, label %8
    i32 158, label %11
    i32 131, label %11
    i32 134, label %18
    i32 156, label %35
    i32 176, label %39
    i32 179, label %43
    i32 154, label %47
    i32 167, label %51
    i32 178, label %51
    i32 170, label %51
    i32 177, label %51
    i32 137, label %51
    i32 141, label %51
    i32 139, label %51
    i32 140, label %51
    i32 215, label %51
    i32 184, label %55
    i32 161, label %55
    i32 153, label %87
    i32 206, label %91
    i32 199, label %95
    i32 207, label %99
    i32 205, label %103
    i32 195, label %107
    i32 201, label %111
    i32 200, label %115
    i32 202, label %119
    i32 204, label %123
    i32 203, label %127
    i32 213, label %131
    i32 148, label %135
    i32 163, label %139
    i32 164, label %143
    i32 160, label %147
    i32 185, label %151
    i32 155, label %155
    i32 214, label %159
    i32 208, label %163
    i32 171, label %167
    i32 182, label %171
    i32 143, label %175
    i32 165, label %179
    i32 166, label %183
    i32 212, label %187
    i32 147, label %191
    i32 162, label %195
    i32 210, label %199
    i32 174, label %203
    i32 173, label %207
    i32 159, label %211
    i32 135, label %215
    i32 136, label %215
    i32 181, label %219
    i32 150, label %223
    i32 168, label %227
    i32 211, label %231
    i32 175, label %231
    i32 138, label %231
    i32 132, label %231
    i32 183, label %235
    i32 130, label %239
    i32 152, label %243
    i32 209, label %247
    i32 172, label %247
    i32 133, label %247
    i32 180, label %251
    i32 128, label %255
    i32 151, label %259
    i32 129, label %259
    i32 144, label %263
    i32 145, label %267
    i32 188, label %271
    i32 187, label %271
    i32 198, label %275
    i32 197, label %279
    i32 196, label %283
    i32 146, label %287
    i32 157, label %291
    i32 186, label %295
    i32 142, label %299
    i32 149, label %303
    i32 194, label %307
    i32 192, label %312
    i32 193, label %312
    i32 191, label %312
    i32 190, label %316
    i32 189, label %320
  ]

8:                                                ; preds = %2
  %9 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %10 = call i32 @asm_loop(%struct.TYPE_136__* %9)
  br label %335

11:                                               ; preds = %2, %2
  %12 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %13 = call i32 @ra_used(%struct.TYPE_135__* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @lua_assert(i32 %16)
  br label %335

18:                                               ; preds = %2
  %19 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %20 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_135__, %struct.TYPE_135__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_135__, %struct.TYPE_135__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @irt_isfp(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @RSET_FPR, align 4
  br label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @RSET_GPR, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = call i32 @ra_alloc1(%struct.TYPE_136__* %19, i32 %22, i32 %33)
  br label %335

35:                                               ; preds = %2
  %36 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %37 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %38 = call i32 @asm_phi(%struct.TYPE_136__* %36, %struct.TYPE_135__* %37)
  br label %335

39:                                               ; preds = %2
  %40 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %41 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %42 = call i32 @asm_hiop(%struct.TYPE_136__* %40, %struct.TYPE_135__* %41)
  br label %335

43:                                               ; preds = %2
  %44 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %45 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %46 = call i32 @asm_gcstep(%struct.TYPE_136__* %44, %struct.TYPE_135__* %45)
  br label %335

47:                                               ; preds = %2
  %48 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %49 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %50 = call i32 @asm_prof(%struct.TYPE_136__* %48, %struct.TYPE_135__* %49)
  br label %335

51:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %52 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %53 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %54 = call i32 @asm_comp(%struct.TYPE_136__* %52, %struct.TYPE_135__* %53)
  br label %335

55:                                               ; preds = %2, %2
  %56 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_135__, %struct.TYPE_135__* %56, i64 -1
  %58 = getelementptr inbounds %struct.TYPE_135__, %struct.TYPE_135__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 174
  br i1 %60, label %61, label %82

61:                                               ; preds = %55
  %62 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_135__, %struct.TYPE_135__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_136__, %struct.TYPE_136__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  %69 = icmp eq i32 %64, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %61
  %71 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_136__, %struct.TYPE_136__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %76 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_135__, %struct.TYPE_135__* %76, i64 -1
  %78 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_135__, %struct.TYPE_135__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @asm_href(%struct.TYPE_136__* %75, %struct.TYPE_135__* %77, i32 %80)
  br label %86

82:                                               ; preds = %61, %55
  %83 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %84 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %85 = call i32 @asm_equal(%struct.TYPE_136__* %83, %struct.TYPE_135__* %84)
  br label %86

86:                                               ; preds = %82, %70
  br label %335

87:                                               ; preds = %2
  %88 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %89 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %90 = call i32 @asm_retf(%struct.TYPE_136__* %88, %struct.TYPE_135__* %89)
  br label %335

91:                                               ; preds = %2
  %92 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %93 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %94 = call i32 @asm_bnot(%struct.TYPE_136__* %92, %struct.TYPE_135__* %93)
  br label %335

95:                                               ; preds = %2
  %96 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %97 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %98 = call i32 @asm_bswap(%struct.TYPE_136__* %96, %struct.TYPE_135__* %97)
  br label %335

99:                                               ; preds = %2
  %100 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %101 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %102 = call i32 @asm_band(%struct.TYPE_136__* %100, %struct.TYPE_135__* %101)
  br label %335

103:                                              ; preds = %2
  %104 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %105 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %106 = call i32 @asm_bor(%struct.TYPE_136__* %104, %struct.TYPE_135__* %105)
  br label %335

107:                                              ; preds = %2
  %108 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %109 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %110 = call i32 @asm_bxor(%struct.TYPE_136__* %108, %struct.TYPE_135__* %109)
  br label %335

111:                                              ; preds = %2
  %112 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %113 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %114 = call i32 @asm_bshl(%struct.TYPE_136__* %112, %struct.TYPE_135__* %113)
  br label %335

115:                                              ; preds = %2
  %116 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %117 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %118 = call i32 @asm_bshr(%struct.TYPE_136__* %116, %struct.TYPE_135__* %117)
  br label %335

119:                                              ; preds = %2
  %120 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %121 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %122 = call i32 @asm_bsar(%struct.TYPE_136__* %120, %struct.TYPE_135__* %121)
  br label %335

123:                                              ; preds = %2
  %124 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %125 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %126 = call i32 @asm_brol(%struct.TYPE_136__* %124, %struct.TYPE_135__* %125)
  br label %335

127:                                              ; preds = %2
  %128 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %129 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %130 = call i32 @asm_bror(%struct.TYPE_136__* %128, %struct.TYPE_135__* %129)
  br label %335

131:                                              ; preds = %2
  %132 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %133 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %134 = call i32 @asm_add(%struct.TYPE_136__* %132, %struct.TYPE_135__* %133)
  br label %335

135:                                              ; preds = %2
  %136 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %137 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %138 = call i32 @asm_sub(%struct.TYPE_136__* %136, %struct.TYPE_135__* %137)
  br label %335

139:                                              ; preds = %2
  %140 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %141 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %142 = call i32 @asm_mul(%struct.TYPE_136__* %140, %struct.TYPE_135__* %141)
  br label %335

143:                                              ; preds = %2
  %144 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %145 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %146 = call i32 @asm_mod(%struct.TYPE_136__* %144, %struct.TYPE_135__* %145)
  br label %335

147:                                              ; preds = %2
  %148 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %149 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %150 = call i32 @asm_neg(%struct.TYPE_136__* %148, %struct.TYPE_135__* %149)
  br label %335

151:                                              ; preds = %2
  %152 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %153 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %154 = call i32 @asm_div(%struct.TYPE_136__* %152, %struct.TYPE_135__* %153)
  br label %335

155:                                              ; preds = %2
  %156 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %157 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %158 = call i32 @asm_pow(%struct.TYPE_136__* %156, %struct.TYPE_135__* %157)
  br label %335

159:                                              ; preds = %2
  %160 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %161 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %162 = call i32 @asm_abs(%struct.TYPE_136__* %160, %struct.TYPE_135__* %161)
  br label %335

163:                                              ; preds = %2
  %164 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %165 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %166 = call i32 @asm_atan2(%struct.TYPE_136__* %164, %struct.TYPE_135__* %165)
  br label %335

167:                                              ; preds = %2
  %168 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %169 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %170 = call i32 @asm_ldexp(%struct.TYPE_136__* %168, %struct.TYPE_135__* %169)
  br label %335

171:                                              ; preds = %2
  %172 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %173 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %174 = call i32 @asm_fpmath(%struct.TYPE_136__* %172, %struct.TYPE_135__* %173)
  br label %335

175:                                              ; preds = %2
  %176 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %177 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %178 = call i32 @asm_tobit(%struct.TYPE_136__* %176, %struct.TYPE_135__* %177)
  br label %335

179:                                              ; preds = %2
  %180 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %181 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %182 = call i32 @asm_min(%struct.TYPE_136__* %180, %struct.TYPE_135__* %181)
  br label %335

183:                                              ; preds = %2
  %184 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %185 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %186 = call i32 @asm_max(%struct.TYPE_136__* %184, %struct.TYPE_135__* %185)
  br label %335

187:                                              ; preds = %2
  %188 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %189 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %190 = call i32 @asm_addov(%struct.TYPE_136__* %188, %struct.TYPE_135__* %189)
  br label %335

191:                                              ; preds = %2
  %192 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %193 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %194 = call i32 @asm_subov(%struct.TYPE_136__* %192, %struct.TYPE_135__* %193)
  br label %335

195:                                              ; preds = %2
  %196 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %197 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %198 = call i32 @asm_mulov(%struct.TYPE_136__* %196, %struct.TYPE_135__* %197)
  br label %335

199:                                              ; preds = %2
  %200 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %201 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %202 = call i32 @asm_aref(%struct.TYPE_136__* %200, %struct.TYPE_135__* %201)
  br label %335

203:                                              ; preds = %2
  %204 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %205 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %206 = call i32 @asm_href(%struct.TYPE_136__* %204, %struct.TYPE_135__* %205, i32 0)
  br label %335

207:                                              ; preds = %2
  %208 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %209 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %210 = call i32 @asm_hrefk(%struct.TYPE_136__* %208, %struct.TYPE_135__* %209)
  br label %335

211:                                              ; preds = %2
  %212 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %213 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %214 = call i32 @asm_newref(%struct.TYPE_136__* %212, %struct.TYPE_135__* %213)
  br label %335

215:                                              ; preds = %2, %2
  %216 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %217 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %218 = call i32 @asm_uref(%struct.TYPE_136__* %216, %struct.TYPE_135__* %217)
  br label %335

219:                                              ; preds = %2
  %220 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %221 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %222 = call i32 @asm_fref(%struct.TYPE_136__* %220, %struct.TYPE_135__* %221)
  br label %335

223:                                              ; preds = %2
  %224 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %225 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %226 = call i32 @asm_strref(%struct.TYPE_136__* %224, %struct.TYPE_135__* %225)
  br label %335

227:                                              ; preds = %2
  %228 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %229 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %230 = call i32 @asm_lref(%struct.TYPE_136__* %228, %struct.TYPE_135__* %229)
  br label %335

231:                                              ; preds = %2, %2, %2, %2
  %232 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %233 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %234 = call i32 @asm_ahuvload(%struct.TYPE_136__* %232, %struct.TYPE_135__* %233)
  br label %335

235:                                              ; preds = %2
  %236 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %237 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %238 = call i32 @asm_fload(%struct.TYPE_136__* %236, %struct.TYPE_135__* %237)
  br label %335

239:                                              ; preds = %2
  %240 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %241 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %242 = call i32 @asm_xload(%struct.TYPE_136__* %240, %struct.TYPE_135__* %241)
  br label %335

243:                                              ; preds = %2
  %244 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %245 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %246 = call i32 @asm_sload(%struct.TYPE_136__* %244, %struct.TYPE_135__* %245)
  br label %335

247:                                              ; preds = %2, %2, %2
  %248 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %249 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %250 = call i32 @asm_ahustore(%struct.TYPE_136__* %248, %struct.TYPE_135__* %249)
  br label %335

251:                                              ; preds = %2
  %252 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %253 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %254 = call i32 @asm_fstore(%struct.TYPE_136__* %252, %struct.TYPE_135__* %253)
  br label %335

255:                                              ; preds = %2
  %256 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %257 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %258 = call i32 @asm_xstore(%struct.TYPE_136__* %256, %struct.TYPE_135__* %257)
  br label %335

259:                                              ; preds = %2, %2
  %260 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %261 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %262 = call i32 @asm_snew(%struct.TYPE_136__* %260, %struct.TYPE_135__* %261)
  br label %335

263:                                              ; preds = %2
  %264 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %265 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %266 = call i32 @asm_tnew(%struct.TYPE_136__* %264, %struct.TYPE_135__* %265)
  br label %335

267:                                              ; preds = %2
  %268 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %269 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %270 = call i32 @asm_tdup(%struct.TYPE_136__* %268, %struct.TYPE_135__* %269)
  br label %335

271:                                              ; preds = %2, %2
  %272 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %273 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %274 = call i32 @asm_cnew(%struct.TYPE_136__* %272, %struct.TYPE_135__* %273)
  br label %335

275:                                              ; preds = %2
  %276 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %277 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %278 = call i32 @asm_bufhdr(%struct.TYPE_136__* %276, %struct.TYPE_135__* %277)
  br label %335

279:                                              ; preds = %2
  %280 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %281 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %282 = call i32 @asm_bufput(%struct.TYPE_136__* %280, %struct.TYPE_135__* %281)
  br label %335

283:                                              ; preds = %2
  %284 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %285 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %286 = call i32 @asm_bufstr(%struct.TYPE_136__* %284, %struct.TYPE_135__* %285)
  br label %335

287:                                              ; preds = %2
  %288 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %289 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %290 = call i32 @asm_tbar(%struct.TYPE_136__* %288, %struct.TYPE_135__* %289)
  br label %335

291:                                              ; preds = %2
  %292 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %293 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %294 = call i32 @asm_obar(%struct.TYPE_136__* %292, %struct.TYPE_135__* %293)
  br label %335

295:                                              ; preds = %2
  %296 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %297 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %298 = call i32 @asm_conv(%struct.TYPE_136__* %296, %struct.TYPE_135__* %297)
  br label %335

299:                                              ; preds = %2
  %300 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %301 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %302 = call i32 @asm_tostr(%struct.TYPE_136__* %300, %struct.TYPE_135__* %301)
  br label %335

303:                                              ; preds = %2
  %304 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %305 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %306 = call i32 @asm_strto(%struct.TYPE_136__* %304, %struct.TYPE_135__* %305)
  br label %335

307:                                              ; preds = %2
  %308 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_136__, %struct.TYPE_136__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %309, align 8
  br label %312

312:                                              ; preds = %2, %2, %2, %307
  %313 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %314 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %315 = call i32 @asm_call(%struct.TYPE_136__* %313, %struct.TYPE_135__* %314)
  br label %335

316:                                              ; preds = %2
  %317 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %318 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %319 = call i32 @asm_callx(%struct.TYPE_136__* %317, %struct.TYPE_135__* %318)
  br label %335

320:                                              ; preds = %2
  br label %335

321:                                              ; preds = %2
  %322 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_136__, %struct.TYPE_136__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_137__*, %struct.TYPE_137__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_137__, %struct.TYPE_137__* %324, i32 0, i32 0
  %326 = load %struct.TYPE_135__*, %struct.TYPE_135__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_135__, %struct.TYPE_135__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @setintV(i32* %325, i32 %328)
  %330 = load %struct.TYPE_136__*, %struct.TYPE_136__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_136__, %struct.TYPE_136__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_137__*, %struct.TYPE_137__** %331, align 8
  %333 = load i32, i32* @LJ_TRERR_NYIIR, align 4
  %334 = call i32 @lj_trace_err_info(%struct.TYPE_137__* %332, i32 %333)
  br label %335

335:                                              ; preds = %321, %320, %316, %312, %303, %299, %295, %291, %287, %283, %279, %275, %271, %267, %263, %259, %255, %251, %247, %243, %239, %235, %231, %227, %223, %219, %215, %211, %207, %203, %199, %195, %191, %187, %183, %179, %175, %171, %167, %163, %159, %155, %151, %147, %143, %139, %135, %131, %127, %123, %119, %115, %111, %107, %103, %99, %95, %91, %87, %86, %51, %47, %43, %39, %35, %32, %11, %8
  ret void
}

declare dso_local i32 @asm_loop(%struct.TYPE_136__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @ra_used(%struct.TYPE_135__*) #1

declare dso_local i32 @ra_alloc1(%struct.TYPE_136__*, i32, i32) #1

declare dso_local i32 @irt_isfp(i32) #1

declare dso_local i32 @asm_phi(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_hiop(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_gcstep(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_prof(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_comp(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_href(%struct.TYPE_136__*, %struct.TYPE_135__*, i32) #1

declare dso_local i32 @asm_equal(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_retf(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_bnot(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_bswap(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_band(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_bor(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_bxor(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_bshl(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_bshr(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_bsar(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_brol(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_bror(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_add(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_sub(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_mul(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_mod(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_neg(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_div(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_pow(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_abs(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_atan2(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_ldexp(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_fpmath(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_tobit(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_min(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_max(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_addov(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_subov(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_mulov(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_aref(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_hrefk(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_newref(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_uref(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_fref(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_strref(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_lref(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_ahuvload(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_fload(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_xload(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_sload(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_ahustore(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_fstore(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_xstore(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_snew(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_tnew(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_tdup(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_cnew(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_bufhdr(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_bufput(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_bufstr(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_tbar(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_obar(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_conv(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_tostr(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_strto(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_call(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @asm_callx(%struct.TYPE_136__*, %struct.TYPE_135__*) #1

declare dso_local i32 @setintV(i32*, i32) #1

declare dso_local i32 @lj_trace_err_info(%struct.TYPE_137__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
