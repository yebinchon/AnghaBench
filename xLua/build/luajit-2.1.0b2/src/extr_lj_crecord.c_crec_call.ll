; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_call.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32*, i32, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { i32, i32 }

@IRT_PTR = common dso_local global i64 0, align 8
@LJ_64 = common dso_local global i64 0, align 8
@IRT_P64 = common dso_local global i64 0, align 8
@IRT_P32 = common dso_local global i64 0, align 8
@IR_FLOAD = common dso_local global i32 0, align 4
@IRFL_CDATA_PTR = common dso_local global i32 0, align 4
@LJ_TRERR_BLACKL = common dso_local global i32 0, align 4
@IRT_NIL = common dso_local global i64 0, align 8
@IRT_CDATA = common dso_local global i64 0, align 8
@LJ_TRERR_NYICALL = common dso_local global i32 0, align 4
@CTF_VARARG = common dso_local global i32 0, align 4
@IR_CARG = common dso_local global i32 0, align 4
@IR_CALLXS = common dso_local global i32 0, align 4
@TREF_NIL = common dso_local global i32 0, align 4
@IR_NE = common dso_local global i32 0, align 4
@LJ_POST_FIXGUARDSNAP = common dso_local global i32 0, align 4
@TREF_TRUE = common dso_local global i32 0, align 4
@IRT_I64 = common dso_local global i64 0, align 8
@IRT_U64 = common dso_local global i64 0, align 8
@IR_CNEWI = common dso_local global i32 0, align 4
@IRT_FLOAT = common dso_local global i64 0, align 8
@IRT_U32 = common dso_local global i64 0, align 8
@IRT_NUM = common dso_local global i32 0, align 4
@IRT_I8 = common dso_local global i64 0, align 8
@IRT_I16 = common dso_local global i64 0, align 8
@IRT_INT = common dso_local global i32 0, align 4
@IRCONV_SEXT = common dso_local global i32 0, align 4
@IRT_U8 = common dso_local global i64 0, align 8
@IRT_U16 = common dso_local global i64 0, align 8
@CTCC_CDECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.TYPE_32__*, %struct.TYPE_33__*)* @crec_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crec_call(%struct.TYPE_31__* %0, %struct.TYPE_32__* %1, %struct.TYPE_33__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %6, align 8
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %7, align 8
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %18 = call i32 @J2G(%struct.TYPE_31__* %17)
  %19 = call %struct.TYPE_35__* @ctype_ctsG(i32 %18)
  store %struct.TYPE_35__* %19, %struct.TYPE_35__** %8, align 8
  %20 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %21 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_34__* @ctype_raw(%struct.TYPE_35__* %20, i32 %23)
  store %struct.TYPE_34__* %24, %struct.TYPE_34__** %9, align 8
  %25 = load i64, i64* @IRT_PTR, align 8
  store i64 %25, i64* %10, align 8
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ctype_isptr(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %3
  %32 = load i64, i64* @LJ_64, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* @IRT_P64, align 8
  br label %43

41:                                               ; preds = %34, %31
  %42 = load i64, i64* @IRT_P32, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i64 [ %40, %39 ], [ %42, %41 ]
  store i64 %44, i64* %10, align 8
  %45 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %46 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %47 = call %struct.TYPE_34__* @ctype_rawchild(%struct.TYPE_35__* %45, %struct.TYPE_34__* %46)
  store %struct.TYPE_34__* %47, %struct.TYPE_34__** %9, align 8
  br label %48

48:                                               ; preds = %43, %3
  %49 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ctype_isfunc(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %308

54:                                               ; preds = %48
  %55 = load i32, i32* @IR_FLOAD, align 4
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @IRT(i32 %55, i64 %56)
  %58 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IRFL_CDATA_PTR, align 4
  %64 = call i32 @emitir(i32 %57, i32 %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %66 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %67 = call %struct.TYPE_34__* @ctype_rawchild(%struct.TYPE_35__* %65, %struct.TYPE_34__* %66)
  store %struct.TYPE_34__* %67, %struct.TYPE_34__** %12, align 8
  %68 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %69 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %70 = call i64 @crec_ct2irt(%struct.TYPE_35__* %68, %struct.TYPE_34__* %69)
  store i64 %70, i64* %13, align 8
  %71 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %72 = call i32 @cdataptr(%struct.TYPE_33__* %71)
  %73 = load i64, i64* @LJ_64, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %54
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @IRT_P64, align 8
  %78 = icmp eq i64 %76, %77
  br label %79

79:                                               ; preds = %75, %54
  %80 = phi i1 [ false, %54 ], [ %78, %75 ]
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 8, i32 4
  %83 = call i32 @cdata_getptr(i32 %72, i32 %82)
  %84 = call i32 @setlightudV(i32* %15, i32 %83)
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_36__*, %struct.TYPE_36__** %86, align 8
  %88 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @lj_tab_get(%struct.TYPE_36__* %87, i32 %90, i32* %15)
  %92 = call i64 @tvistrue(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %79
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %96 = load i32, i32* @LJ_TRERR_BLACKL, align 4
  %97 = call i32 @lj_trace_err(%struct.TYPE_31__* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %79
  %99 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @ctype_isvoid(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i64, i64* @IRT_NIL, align 8
  store i64 %105, i64* %13, align 8
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  br label %135

108:                                              ; preds = %98
  %109 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @ctype_isnum(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %108
  %115 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @ctype_isptr(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @ctype_isenum(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %120, %114, %108
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* @IRT_CDATA, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126, %120
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %132 = load i32, i32* @LJ_TRERR_NYICALL, align 4
  %133 = call i32 @lj_trace_err(%struct.TYPE_31__* %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %126
  br label %135

135:                                              ; preds = %134, %104
  %136 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @CTF_VARARG, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %135
  %143 = load i32, i32* @IR_CARG, align 4
  %144 = load i64, i64* @IRT_NIL, align 8
  %145 = call i32 @IRT(i32 %143, i64 %144)
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %148 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %149 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %150 = call i32 @ctype_typeid(%struct.TYPE_35__* %148, %struct.TYPE_34__* %149)
  %151 = call i32 @lj_ir_kint(%struct.TYPE_31__* %147, i32 %150)
  %152 = call i32 @emitir(i32 %145, i32 %146, i32 %151)
  store i32 %152, i32* %11, align 4
  br label %153

153:                                              ; preds = %142, %135
  %154 = load i32, i32* @IR_CALLXS, align 4
  %155 = load i64, i64* %13, align 8
  %156 = call i32 @IRT(i32 %154, i64 %155)
  %157 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %158 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %159 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %160 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %161 = call i32 @crec_call_args(%struct.TYPE_31__* %157, %struct.TYPE_32__* %158, %struct.TYPE_35__* %159, %struct.TYPE_34__* %160)
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @emitir(i32 %156, i32 %161, i32 %162)
  store i32 %163, i32* %14, align 4
  %164 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @ctype_isbool(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %207

169:                                              ; preds = %153
  %170 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_36__*, %struct.TYPE_36__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = sub nsw i64 %174, 1
  %176 = call i64 @frame_islua(i64 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %192

178:                                              ; preds = %169
  %179 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_36__*, %struct.TYPE_36__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = sub nsw i64 %183, 1
  %185 = call i32* @frame_pc(i64 %184)
  %186 = getelementptr inbounds i32, i32* %185, i64 -1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @bc_b(i32 %187)
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %192

190:                                              ; preds = %178
  %191 = load i32, i32* @TREF_NIL, align 4
  store i32 %191, i32* %14, align 4
  br label %206

192:                                              ; preds = %178, %169
  %193 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %194 = call i32 @crec_snap_caller(%struct.TYPE_31__* %193)
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %196 = load i32, i32* @IR_NE, align 4
  %197 = call i32 @IRTGI(i32 %196)
  %198 = load i32, i32* %14, align 4
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %200 = call i32 @lj_ir_kint(%struct.TYPE_31__* %199, i32 0)
  %201 = call i32 @lj_ir_set(%struct.TYPE_31__* %195, i32 %197, i32 %198, i32 %200)
  %202 = load i32, i32* @LJ_POST_FIXGUARDSNAP, align 4
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* @TREF_TRUE, align 4
  store i32 %205, i32* %14, align 4
  br label %206

206:                                              ; preds = %192, %190
  br label %300

207:                                              ; preds = %153
  %208 = load i64, i64* %13, align 8
  %209 = load i64, i64* @IRT_PTR, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %232, label %211

211:                                              ; preds = %207
  %212 = load i64, i64* @LJ_64, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load i64, i64* %13, align 8
  %216 = load i64, i64* @IRT_P32, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %232, label %218

218:                                              ; preds = %214, %211
  %219 = load i64, i64* %13, align 8
  %220 = load i64, i64* @IRT_I64, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %232, label %222

222:                                              ; preds = %218
  %223 = load i64, i64* %13, align 8
  %224 = load i64, i64* @IRT_U64, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %232, label %226

226:                                              ; preds = %222
  %227 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i64 @ctype_isenum(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %256

232:                                              ; preds = %226, %222, %218, %214, %207
  %233 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %234 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @ctype_cid(i32 %236)
  %238 = call i32 @lj_ir_kint(%struct.TYPE_31__* %233, i32 %237)
  store i32 %238, i32* %16, align 4
  %239 = load i32, i32* @IR_CNEWI, align 4
  %240 = load i64, i64* @IRT_CDATA, align 8
  %241 = call i32 @IRTG(i32 %239, i64 %240)
  %242 = load i32, i32* %16, align 4
  %243 = load i32, i32* %14, align 4
  %244 = call i32 @emitir(i32 %241, i32 %242, i32 %243)
  store i32 %244, i32* %14, align 4
  %245 = load i64, i64* %13, align 8
  %246 = load i64, i64* @IRT_I64, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %252, label %248

248:                                              ; preds = %232
  %249 = load i64, i64* %13, align 8
  %250 = load i64, i64* @IRT_U64, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %248, %232
  %253 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %254 = call i32 @lj_needsplit(%struct.TYPE_31__* %253)
  br label %255

255:                                              ; preds = %252, %248
  br label %299

256:                                              ; preds = %226
  %257 = load i64, i64* %13, align 8
  %258 = load i64, i64* @IRT_FLOAT, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %264, label %260

260:                                              ; preds = %256
  %261 = load i64, i64* %13, align 8
  %262 = load i64, i64* @IRT_U32, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %269

264:                                              ; preds = %260, %256
  %265 = load i32, i32* %14, align 4
  %266 = load i32, i32* @IRT_NUM, align 4
  %267 = load i64, i64* %13, align 8
  %268 = call i32 @emitconv(i32 %265, i32 %266, i64 %267, i32 0)
  store i32 %268, i32* %14, align 4
  br label %298

269:                                              ; preds = %260
  %270 = load i64, i64* %13, align 8
  %271 = load i64, i64* @IRT_I8, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %277, label %273

273:                                              ; preds = %269
  %274 = load i64, i64* %13, align 8
  %275 = load i64, i64* @IRT_I16, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %283

277:                                              ; preds = %273, %269
  %278 = load i32, i32* %14, align 4
  %279 = load i32, i32* @IRT_INT, align 4
  %280 = load i64, i64* %13, align 8
  %281 = load i32, i32* @IRCONV_SEXT, align 4
  %282 = call i32 @emitconv(i32 %278, i32 %279, i64 %280, i32 %281)
  store i32 %282, i32* %14, align 4
  br label %297

283:                                              ; preds = %273
  %284 = load i64, i64* %13, align 8
  %285 = load i64, i64* @IRT_U8, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %291, label %287

287:                                              ; preds = %283
  %288 = load i64, i64* %13, align 8
  %289 = load i64, i64* @IRT_U16, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %296

291:                                              ; preds = %287, %283
  %292 = load i32, i32* %14, align 4
  %293 = load i32, i32* @IRT_INT, align 4
  %294 = load i64, i64* %13, align 8
  %295 = call i32 @emitconv(i32 %292, i32 %293, i64 %294, i32 0)
  store i32 %295, i32* %14, align 4
  br label %296

296:                                              ; preds = %291, %287
  br label %297

297:                                              ; preds = %296, %277
  br label %298

298:                                              ; preds = %297, %264
  br label %299

299:                                              ; preds = %298, %255
  br label %300

300:                                              ; preds = %299, %206
  %301 = load i32, i32* %14, align 4
  %302 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %302, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  store i32 %301, i32* %305, align 4
  %306 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %306, i32 0, i32 0
  store i32 1, i32* %307, align 8
  store i32 1, i32* %4, align 4
  br label %309

308:                                              ; preds = %48
  store i32 0, i32* %4, align 4
  br label %309

309:                                              ; preds = %308, %300
  %310 = load i32, i32* %4, align 4
  ret i32 %310
}

declare dso_local %struct.TYPE_35__* @ctype_ctsG(i32) #1

declare dso_local i32 @J2G(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_34__* @ctype_raw(%struct.TYPE_35__*, i32) #1

declare dso_local i64 @ctype_isptr(i32) #1

declare dso_local %struct.TYPE_34__* @ctype_rawchild(%struct.TYPE_35__*, %struct.TYPE_34__*) #1

declare dso_local i64 @ctype_isfunc(i32) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRT(i32, i64) #1

declare dso_local i64 @crec_ct2irt(%struct.TYPE_35__*, %struct.TYPE_34__*) #1

declare dso_local i32 @setlightudV(i32*, i32) #1

declare dso_local i32 @cdata_getptr(i32, i32) #1

declare dso_local i32 @cdataptr(%struct.TYPE_33__*) #1

declare dso_local i64 @tvistrue(i32) #1

declare dso_local i32 @lj_tab_get(%struct.TYPE_36__*, i32, i32*) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_31__*, i32) #1

declare dso_local i64 @ctype_isvoid(i32) #1

declare dso_local i64 @ctype_isnum(i32) #1

declare dso_local i64 @ctype_isenum(i32) #1

declare dso_local i32 @lj_ir_kint(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @ctype_typeid(%struct.TYPE_35__*, %struct.TYPE_34__*) #1

declare dso_local i32 @crec_call_args(%struct.TYPE_31__*, %struct.TYPE_32__*, %struct.TYPE_35__*, %struct.TYPE_34__*) #1

declare dso_local i64 @ctype_isbool(i32) #1

declare dso_local i64 @frame_islua(i64) #1

declare dso_local i32 @bc_b(i32) #1

declare dso_local i32* @frame_pc(i64) #1

declare dso_local i32 @crec_snap_caller(%struct.TYPE_31__*) #1

declare dso_local i32 @lj_ir_set(%struct.TYPE_31__*, i32, i32, i32) #1

declare dso_local i32 @IRTGI(i32) #1

declare dso_local i32 @ctype_cid(i32) #1

declare dso_local i32 @IRTG(i32, i64) #1

declare dso_local i32 @lj_needsplit(%struct.TYPE_31__*) #1

declare dso_local i32 @emitconv(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
