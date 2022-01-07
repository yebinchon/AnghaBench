; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_fxstore.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_fxstore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64, i32, i32, i32 }

@RSET_GPR = common dso_local global i32 0, align 4
@RID_NONE = common dso_local global i32 0, align 4
@RID_SINK = common dso_local global i64 0, align 8
@RSET_FPR = common dso_local global i32 0, align 4
@RSET_GPR8 = common dso_local global i32 0, align 4
@LJ_64 = common dso_local global i64 0, align 8
@IR_FSTORE = common dso_local global i64 0, align 8
@LJ_32 = common dso_local global i64 0, align 8
@IR_HIOP = common dso_local global i64 0, align 8
@XO_MOVtob = common dso_local global i32 0, align 4
@FORCE_REX = common dso_local global i32 0, align 4
@XO_MOVtow = common dso_local global i32 0, align 4
@XO_MOVSDto = common dso_local global i32 0, align 4
@XO_MOVSSto = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@XO_MOVto = common dso_local global i32 0, align 4
@RID_MRM = common dso_local global i32 0, align 4
@XO_MOV = common dso_local global i32 0, align 4
@XO_MOVmib = common dso_local global i32 0, align 4
@XO_MOVmi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_18__*)* @asm_fxstore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_fxstore(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %11 = load i32, i32* @RSET_GPR, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @RID_NONE, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @RID_NONE, align 4
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RID_SINK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %270

20:                                               ; preds = %2
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @irt_isi16(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @irt_isu16(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @irt_isfp(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @asm_isk32(%struct.TYPE_19__* %39, i32 %42, i32* %8)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %97, label %45

45:                                               ; preds = %38, %32, %26, %20
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @irt_isfp(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @RSET_FPR, align 4
  br label %71

53:                                               ; preds = %45
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @irt_isi8(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @irt_isu8(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59, %53
  %66 = load i32, i32* @RSET_GPR8, align 4
  br label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @RSET_GPR, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  br label %71

71:                                               ; preds = %69, %51
  %72 = phi i32 [ %52, %51 ], [ %70, %69 ]
  store i32 %72, i32* %9, align 4
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @ra_alloc1(%struct.TYPE_19__* %73, i32 %76, i32 %77)
  store i32 %78, i32* %7, align 4
  store i32 %78, i32* %6, align 4
  %79 = load i64, i64* @LJ_64, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @rset_test(i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @rset_clear(i32 %87, i32 %88)
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @ra_scratch(%struct.TYPE_19__* %90, i32 %91)
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %86, %81, %71
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @rset_clear(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %38
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @IR_FSTORE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @IR(i32 %107)
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @asm_fusefref(%struct.TYPE_19__* %104, i32 %108, i32 %109)
  br label %133

111:                                              ; preds = %97
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @asm_fusexref(%struct.TYPE_19__* %112, i32 %115, i32 %116)
  %118 = load i64, i64* @LJ_32, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %111
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @IR_HIOP, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 4
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %126, %120, %111
  br label %133

133:                                              ; preds = %132, %103
  %134 = load i32, i32* %6, align 4
  %135 = call i64 @ra_hasreg(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %212

137:                                              ; preds = %133
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @irt_type(i32 %140)
  switch i32 %141, label %153 [
    i32 132, label %142
    i32 128, label %142
    i32 133, label %147
    i32 129, label %147
    i32 130, label %149
    i32 134, label %151
  ]

142:                                              ; preds = %137, %137
  %143 = load i32, i32* @XO_MOVtob, align 4
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* @FORCE_REX, align 4
  %145 = load i32, i32* %6, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %6, align 4
  br label %190

147:                                              ; preds = %137, %137
  %148 = load i32, i32* @XO_MOVtow, align 4
  store i32 %148, i32* %10, align 4
  br label %190

149:                                              ; preds = %137
  %150 = load i32, i32* @XO_MOVSDto, align 4
  store i32 %150, i32* %10, align 4
  br label %190

151:                                              ; preds = %137
  %152 = load i32, i32* @XO_MOVSSto, align 4
  store i32 %152, i32* %10, align 4
  br label %190

153:                                              ; preds = %137
  %154 = load i64, i64* @LJ_64, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i64 @irt_is64(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load i32, i32* @REX_64, align 4
  %164 = load i32, i32* %6, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %6, align 4
  br label %188

166:                                              ; preds = %156, %153
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @irt_isint(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %184, label %172

172:                                              ; preds = %166
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @irt_isu32(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %172
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @irt_isaddr(i32 %181)
  %183 = icmp ne i64 %182, 0
  br label %184

184:                                              ; preds = %178, %172, %166
  %185 = phi i1 [ true, %172 ], [ true, %166 ], [ %183, %178 ]
  %186 = zext i1 %185 to i32
  %187 = call i32 @lua_assert(i32 %186)
  br label %188

188:                                              ; preds = %184, %162
  %189 = load i32, i32* @XO_MOVto, align 4
  store i32 %189, i32* %10, align 4
  br label %190

190:                                              ; preds = %188, %151, %149, %147, %142
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @RID_MRM, align 4
  %195 = call i32 @emit_mrm(%struct.TYPE_19__* %191, i32 %192, i32 %193, i32 %194)
  %196 = load i64, i64* @LJ_64, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %211, label %198

198:                                              ; preds = %190
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %198
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %204 = load i32, i32* %7, align 4
  %205 = call i32 @ra_noweak(%struct.TYPE_19__* %203, i32 %204)
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %207 = load i32, i32* @XO_MOV, align 4
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @emit_rr(%struct.TYPE_19__* %206, i32 %207, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %202, %198, %190
  br label %270

212:                                              ; preds = %133
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i64 @irt_isi8(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %212
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i64 @irt_isu8(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %218, %212
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %226 = load i32, i32* %8, align 4
  %227 = call i32 @emit_i8(%struct.TYPE_19__* %225, i32 %226)
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %229 = load i32, i32* @XO_MOVmib, align 4
  %230 = load i32, i32* @RID_MRM, align 4
  %231 = call i32 @emit_mrm(%struct.TYPE_19__* %228, i32 %229, i32 0, i32 %230)
  br label %269

232:                                              ; preds = %218
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = call i64 @irt_is64(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %256, label %238

238:                                              ; preds = %232
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = call i64 @irt_isint(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %256, label %244

244:                                              ; preds = %238
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = call i64 @irt_isu32(i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %256, label %250

250:                                              ; preds = %244
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = call i64 @irt_isaddr(i32 %253)
  %255 = icmp ne i64 %254, 0
  br label %256

256:                                              ; preds = %250, %244, %238, %232
  %257 = phi i1 [ true, %244 ], [ true, %238 ], [ true, %232 ], [ %255, %250 ]
  %258 = zext i1 %257 to i32
  %259 = call i32 @lua_assert(i32 %258)
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %261 = load i32, i32* %8, align 4
  %262 = call i32 @emit_i32(%struct.TYPE_19__* %260, i32 %261)
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %264 = load i32, i32* @XO_MOVmi, align 4
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %266 = call i32 @REX_64IR(%struct.TYPE_18__* %265, i32 0)
  %267 = load i32, i32* @RID_MRM, align 4
  %268 = call i32 @emit_mrm(%struct.TYPE_19__* %263, i32 %264, i32 %266, i32 %267)
  br label %269

269:                                              ; preds = %256, %224
  br label %270

270:                                              ; preds = %19, %269, %211
  ret void
}

declare dso_local i64 @irt_isi16(i32) #1

declare dso_local i64 @irt_isu16(i32) #1

declare dso_local i64 @irt_isfp(i32) #1

declare dso_local i32 @asm_isk32(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local i64 @irt_isi8(i32) #1

declare dso_local i64 @irt_isu8(i32) #1

declare dso_local i32 @ra_alloc1(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @rset_test(i32, i32) #1

declare dso_local i32 @rset_clear(i32, i32) #1

declare dso_local i32 @ra_scratch(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @asm_fusefref(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @IR(i32) #1

declare dso_local i32 @asm_fusexref(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @irt_type(i32) #1

declare dso_local i64 @irt_is64(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @irt_isint(i32) #1

declare dso_local i64 @irt_isu32(i32) #1

declare dso_local i64 @irt_isaddr(i32) #1

declare dso_local i32 @emit_mrm(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @ra_noweak(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @emit_rr(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @emit_i8(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @emit_i32(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @REX_64IR(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
