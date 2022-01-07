; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_arith_ptr.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_arith_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@MM_sub = common dso_local global i64 0, align 8
@MM_eq = common dso_local global i64 0, align 8
@MM_lt = common dso_local global i64 0, align 8
@MM_le = common dso_local global i64 0, align 8
@IR_SUB = common dso_local global i64 0, align 8
@IRT_INTP = common dso_local global i64 0, align 8
@IR_BSAR = common dso_local global i64 0, align 8
@IR_EQ = common dso_local global i32 0, align 4
@IR_ULT = common dso_local global i32 0, align 4
@IR_ULE = common dso_local global i32 0, align 4
@IRT_PTR = common dso_local global i64 0, align 8
@LJ_POST_FIXGUARD = common dso_local global i32 0, align 4
@TREF_TRUE = common dso_local global i32 0, align 4
@MM_add = common dso_local global i64 0, align 8
@IRT_I8 = common dso_local global i64 0, align 8
@IRT_U32 = common dso_local global i32 0, align 4
@IRT_NUM = common dso_local global i64 0, align 8
@IRT_FLOAT = common dso_local global i64 0, align 8
@IRCONV_ANY = common dso_local global i32 0, align 4
@IR_MUL = common dso_local global i64 0, align 8
@IR_ADD = common dso_local global i64 0, align 8
@CT_PTR = common dso_local global i32 0, align 4
@CTALIGN_PTR = common dso_local global i32 0, align 4
@CTSIZE_PTR = common dso_local global i32 0, align 4
@IR_CNEWI = common dso_local global i32 0, align 4
@IRT_CDATA = common dso_local global i64 0, align 8
@IRCONV_SEXT = common dso_local global i32 0, align 4
@IRT_I64 = common dso_local global i64 0, align 8
@IRT_INT = common dso_local global i64 0, align 8
@IRT_U64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, %struct.TYPE_10__**, i64)* @crec_arith_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crec_arith_ptr(%struct.TYPE_9__* %0, i32* %1, %struct.TYPE_10__** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = call i32 @J2G(%struct.TYPE_9__* %20)
  %22 = call i32* @ctype_ctsG(i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %23, i64 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %11, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ctype_isptr(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ctype_isrefarray(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %161

37:                                               ; preds = %31, %4
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @MM_sub, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @MM_eq, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @MM_lt, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @MM_le, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %143

53:                                               ; preds = %49, %45, %41, %37
  %54 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %54, i64 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @ctype_isptr(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %62, i64 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @ctype_isrefarray(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %143

69:                                               ; preds = %61, %53
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* @MM_sub, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %110

73:                                               ; preds = %69
  %74 = load i32*, i32** %10, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ctype_cid(i32 %77)
  %79 = call i32 @lj_ctype_size(i32* %74, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %73
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = sub nsw i32 %84, 1
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82, %73
  store i32 0, i32* %5, align 4
  br label %284

89:                                               ; preds = %82
  %90 = load i64, i64* @IR_SUB, align 8
  %91 = load i64, i64* @IRT_INTP, align 8
  %92 = call i32 @IRT(i64 %90, i64 %91)
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @emitir(i32 %92, i32 %95, i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load i64, i64* @IR_BSAR, align 8
  %101 = load i64, i64* @IRT_INTP, align 8
  %102 = call i32 @IRT(i64 %100, i64 %101)
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @lj_fls(i32 %105)
  %107 = call i32 @lj_ir_kint(%struct.TYPE_9__* %104, i32 %106)
  %108 = call i32 @emitir(i32 %102, i32 %103, i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %5, align 4
  br label %284

110:                                              ; preds = %69
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* @MM_eq, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* @IR_EQ, align 4
  br label %126

116:                                              ; preds = %110
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* @MM_lt, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* @IR_ULT, align 4
  br label %124

122:                                              ; preds = %116
  %123 = load i32, i32* @IR_ULE, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  br label %126

126:                                              ; preds = %124, %114
  %127 = phi i32 [ %115, %114 ], [ %125, %124 ]
  store i32 %127, i32* %14, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load i64, i64* @IRT_PTR, align 8
  %131 = call i32 @IRTG(i32 %129, i64 %130)
  %132 = load i32*, i32** %7, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @lj_ir_set(%struct.TYPE_9__* %128, i32 %131, i32 %134, i32 %137)
  %139 = load i32, i32* @LJ_POST_FIXGUARD, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @TREF_TRUE, align 4
  store i32 %142, i32* %5, align 4
  br label %284

143:                                              ; preds = %61, %49
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* @MM_add, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load i64, i64* %9, align 8
  %149 = load i64, i64* @MM_sub, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %147, %143
  %152 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %152, i64 1
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @ctype_isnum(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %151, %147
  store i32 0, i32* %5, align 4
  br label %284

160:                                              ; preds = %151
  br label %204

161:                                              ; preds = %31
  %162 = load i64, i64* %9, align 8
  %163 = load i64, i64* @MM_add, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %202

165:                                              ; preds = %161
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @ctype_isnum(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %202

171:                                              ; preds = %165
  %172 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %172, i64 1
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @ctype_isptr(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %187, label %179

179:                                              ; preds = %171
  %180 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %180, i64 1
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @ctype_isrefarray(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %202

187:                                              ; preds = %179, %171
  %188 = load i32*, i32** %7, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %15, align 4
  %191 = load i32*, i32** %7, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %7, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %15, align 4
  %197 = load i32*, i32** %7, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  store i32 %196, i32* %198, align 4
  %199 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %199, i64 1
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  store %struct.TYPE_10__* %201, %struct.TYPE_10__** %11, align 8
  br label %203

202:                                              ; preds = %179, %165, %161
  store i32 0, i32* %5, align 4
  br label %284

203:                                              ; preds = %187
  br label %204

204:                                              ; preds = %203, %160
  %205 = load i32*, i32** %7, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %16, align 4
  %208 = load i32, i32* %16, align 4
  %209 = call i64 @tref_type(i32 %208)
  store i64 %209, i64* %17, align 8
  %210 = load i32*, i32** %10, align 8
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ctype_cid(i32 %213)
  %215 = call i32 @lj_ctype_size(i32* %210, i32 %214)
  store i32 %215, i32* %18, align 4
  %216 = load i32*, i32** %7, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  %218 = load i32, i32* %217, align 4
  %219 = load i64, i64* @IRT_I8, align 8
  %220 = load i32, i32* @IRT_U32, align 4
  %221 = call i32 @tref_typerange(i32 %218, i64 %219, i32 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %240, label %223

223:                                              ; preds = %204
  %224 = load i32, i32* %16, align 4
  %225 = load i64, i64* @IRT_INTP, align 8
  %226 = load i64, i64* %17, align 8
  %227 = load i64, i64* %17, align 8
  %228 = load i64, i64* @IRT_NUM, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %234, label %230

230:                                              ; preds = %223
  %231 = load i64, i64* %17, align 8
  %232 = load i64, i64* @IRT_FLOAT, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %230, %223
  %235 = load i32, i32* @IRCONV_ANY, align 4
  br label %237

236:                                              ; preds = %230
  br label %237

237:                                              ; preds = %236, %234
  %238 = phi i32 [ %235, %234 ], [ 0, %236 ]
  %239 = call i32 @emitconv(i32 %224, i64 %225, i64 %226, i32 %238)
  store i32 %239, i32* %16, align 4
  br label %240

240:                                              ; preds = %237, %204
  %241 = load i64, i64* @IR_MUL, align 8
  %242 = load i64, i64* @IRT_INTP, align 8
  %243 = call i32 @IRT(i64 %241, i64 %242)
  %244 = load i32, i32* %16, align 4
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %246 = load i32, i32* %18, align 4
  %247 = call i32 @lj_ir_kintp(%struct.TYPE_9__* %245, i32 %246)
  %248 = call i32 @emitir(i32 %243, i32 %244, i32 %247)
  store i32 %248, i32* %16, align 4
  %249 = load i64, i64* %9, align 8
  %250 = load i64, i64* @IR_ADD, align 8
  %251 = trunc i64 %250 to i32
  %252 = sext i32 %251 to i64
  %253 = add nsw i64 %249, %252
  %254 = load i64, i64* @MM_add, align 8
  %255 = trunc i64 %254 to i32
  %256 = sext i32 %255 to i64
  %257 = sub nsw i64 %253, %256
  %258 = load i64, i64* @IRT_PTR, align 8
  %259 = call i32 @IRT(i64 %257, i64 %258)
  %260 = load i32*, i32** %7, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %16, align 4
  %264 = call i32 @emitir(i32 %259, i32 %262, i32 %263)
  store i32 %264, i32* %16, align 4
  %265 = load i32*, i32** %10, align 8
  %266 = load i32, i32* @CT_PTR, align 4
  %267 = load i32, i32* @CTALIGN_PTR, align 4
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @ctype_cid(i32 %270)
  %272 = or i32 %267, %271
  %273 = call i32 @CTINFO(i32 %266, i32 %272)
  %274 = load i32, i32* @CTSIZE_PTR, align 4
  %275 = call i32 @lj_ctype_intern(i32* %265, i32 %273, i32 %274)
  store i32 %275, i32* %19, align 4
  %276 = load i32, i32* @IR_CNEWI, align 4
  %277 = load i64, i64* @IRT_CDATA, align 8
  %278 = call i32 @IRTG(i32 %276, i64 %277)
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %280 = load i32, i32* %19, align 4
  %281 = call i32 @lj_ir_kint(%struct.TYPE_9__* %279, i32 %280)
  %282 = load i32, i32* %16, align 4
  %283 = call i32 @emitir(i32 %278, i32 %281, i32 %282)
  store i32 %283, i32* %5, align 4
  br label %284

284:                                              ; preds = %240, %202, %159, %126, %89, %88
  %285 = load i32, i32* %5, align 4
  ret i32 %285
}

declare dso_local i32* @ctype_ctsG(i32) #1

declare dso_local i32 @J2G(%struct.TYPE_9__*) #1

declare dso_local i64 @ctype_isptr(i32) #1

declare dso_local i64 @ctype_isrefarray(i32) #1

declare dso_local i32 @lj_ctype_size(i32*, i32) #1

declare dso_local i32 @ctype_cid(i32) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRT(i64, i64) #1

declare dso_local i32 @lj_ir_kint(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @lj_fls(i32) #1

declare dso_local i32 @lj_ir_set(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @IRTG(i32, i64) #1

declare dso_local i64 @ctype_isnum(i32) #1

declare dso_local i64 @tref_type(i32) #1

declare dso_local i32 @tref_typerange(i32, i64, i32) #1

declare dso_local i32 @emitconv(i32, i64, i64, i32) #1

declare dso_local i32 @lj_ir_kintp(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @lj_ctype_intern(i32*, i32, i32) #1

declare dso_local i32 @CTINFO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
