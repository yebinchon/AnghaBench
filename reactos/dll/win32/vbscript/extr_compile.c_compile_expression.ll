; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_expression.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@OP_add = common dso_local global i32 0, align 4
@OP_and = common dso_local global i32 0, align 4
@OP_bool = common dso_local global i32 0, align 4
@OP_concat = common dso_local global i32 0, align 4
@OP_div = common dso_local global i32 0, align 4
@OP_double = common dso_local global i32 0, align 4
@OP_empty = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@OP_equal = common dso_local global i32 0, align 4
@OP_eqv = common dso_local global i32 0, align 4
@OP_exp = common dso_local global i32 0, align 4
@OP_gt = common dso_local global i32 0, align 4
@OP_gteq = common dso_local global i32 0, align 4
@OP_idiv = common dso_local global i32 0, align 4
@OP_is = common dso_local global i32 0, align 4
@OP_imp = common dso_local global i32 0, align 4
@OP_lt = common dso_local global i32 0, align 4
@OP_lteq = common dso_local global i32 0, align 4
@OP_me = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@OP_mod = common dso_local global i32 0, align 4
@OP_mul = common dso_local global i32 0, align 4
@OP_neg = common dso_local global i32 0, align 4
@OP_nequal = common dso_local global i32 0, align 4
@OP_new = common dso_local global i32 0, align 4
@OP_hres = common dso_local global i32 0, align 4
@DISP_E_PARAMNOTFOUND = common dso_local global i32 0, align 4
@OP_not = common dso_local global i32 0, align 4
@OP_nothing = common dso_local global i32 0, align 4
@OP_null = common dso_local global i32 0, align 4
@OP_or = common dso_local global i32 0, align 4
@OP_string = common dso_local global i32 0, align 4
@OP_sub = common dso_local global i32 0, align 4
@OP_short = common dso_local global i32 0, align 4
@OP_long = common dso_local global i32 0, align 4
@OP_xor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unimplemented expression type %d\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*)* @compile_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_expression(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %251 [
    i32 162, label %9
    i32 161, label %15
    i32 160, label %21
    i32 159, label %29
    i32 158, label %36
    i32 157, label %42
    i32 156, label %48
    i32 155, label %56
    i32 154, label %67
    i32 153, label %73
    i32 152, label %79
    i32 151, label %85
    i32 150, label %91
    i32 149, label %97
    i32 147, label %103
    i32 148, label %109
    i32 146, label %115
    i32 145, label %121
    i32 144, label %127
    i32 143, label %138
    i32 142, label %144
    i32 141, label %150
    i32 140, label %156
    i32 139, label %162
    i32 138, label %168
    i32 137, label %176
    i32 136, label %181
    i32 135, label %187
    i32 134, label %198
    i32 133, label %209
    i32 132, label %215
    i32 131, label %223
    i32 129, label %229
    i32 130, label %237
    i32 128, label %245
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = bitcast %struct.TYPE_12__* %11 to i32*
  %13 = load i32, i32* @OP_add, align 4
  %14 = call i32 @compile_binary_expression(i32* %10, i32* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %257

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = bitcast %struct.TYPE_12__* %17 to i32*
  %19 = load i32, i32* @OP_and, align 4
  %20 = call i32 @compile_binary_expression(i32* %16, i32* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %257

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @OP_bool, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = bitcast %struct.TYPE_12__* %24 to %struct.TYPE_14__*
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @push_instr_int(i32* %22, i32 %23, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %257

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = bitcast %struct.TYPE_12__* %31 to %struct.TYPE_9__*
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = call i32 @compile_expression(i32* %30, %struct.TYPE_12__* %34)
  store i32 %35, i32* %3, align 4
  br label %257

36:                                               ; preds = %2
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = bitcast %struct.TYPE_12__* %38 to i32*
  %40 = load i32, i32* @OP_concat, align 4
  %41 = call i32 @compile_binary_expression(i32* %37, i32* %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %257

42:                                               ; preds = %2
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = bitcast %struct.TYPE_12__* %44 to i32*
  %46 = load i32, i32* @OP_div, align 4
  %47 = call i32 @compile_binary_expression(i32* %43, i32* %45, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %257

48:                                               ; preds = %2
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @OP_double, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = bitcast %struct.TYPE_12__* %51 to %struct.TYPE_13__*
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @push_instr_double(i32* %49, i32 %50, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %257

56:                                               ; preds = %2
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @OP_empty, align 4
  %59 = call i32 @push_instr(i32* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @S_OK, align 4
  br label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @E_OUTOFMEMORY, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %3, align 4
  br label %257

67:                                               ; preds = %2
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = bitcast %struct.TYPE_12__* %69 to i32*
  %71 = load i32, i32* @OP_equal, align 4
  %72 = call i32 @compile_binary_expression(i32* %68, i32* %70, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %257

73:                                               ; preds = %2
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = bitcast %struct.TYPE_12__* %75 to i32*
  %77 = load i32, i32* @OP_eqv, align 4
  %78 = call i32 @compile_binary_expression(i32* %74, i32* %76, i32 %77)
  store i32 %78, i32* %3, align 4
  br label %257

79:                                               ; preds = %2
  %80 = load i32*, i32** %4, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = bitcast %struct.TYPE_12__* %81 to i32*
  %83 = load i32, i32* @OP_exp, align 4
  %84 = call i32 @compile_binary_expression(i32* %80, i32* %82, i32 %83)
  store i32 %84, i32* %3, align 4
  br label %257

85:                                               ; preds = %2
  %86 = load i32*, i32** %4, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = bitcast %struct.TYPE_12__* %87 to i32*
  %89 = load i32, i32* @OP_gt, align 4
  %90 = call i32 @compile_binary_expression(i32* %86, i32* %88, i32 %89)
  store i32 %90, i32* %3, align 4
  br label %257

91:                                               ; preds = %2
  %92 = load i32*, i32** %4, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %94 = bitcast %struct.TYPE_12__* %93 to i32*
  %95 = load i32, i32* @OP_gteq, align 4
  %96 = call i32 @compile_binary_expression(i32* %92, i32* %94, i32 %95)
  store i32 %96, i32* %3, align 4
  br label %257

97:                                               ; preds = %2
  %98 = load i32*, i32** %4, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = bitcast %struct.TYPE_12__* %99 to i32*
  %101 = load i32, i32* @OP_idiv, align 4
  %102 = call i32 @compile_binary_expression(i32* %98, i32* %100, i32 %101)
  store i32 %102, i32* %3, align 4
  br label %257

103:                                              ; preds = %2
  %104 = load i32*, i32** %4, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = bitcast %struct.TYPE_12__* %105 to i32*
  %107 = load i32, i32* @OP_is, align 4
  %108 = call i32 @compile_binary_expression(i32* %104, i32* %106, i32 %107)
  store i32 %108, i32* %3, align 4
  br label %257

109:                                              ; preds = %2
  %110 = load i32*, i32** %4, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %112 = bitcast %struct.TYPE_12__* %111 to i32*
  %113 = load i32, i32* @OP_imp, align 4
  %114 = call i32 @compile_binary_expression(i32* %110, i32* %112, i32 %113)
  store i32 %114, i32* %3, align 4
  br label %257

115:                                              ; preds = %2
  %116 = load i32*, i32** %4, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %118 = bitcast %struct.TYPE_12__* %117 to i32*
  %119 = load i32, i32* @OP_lt, align 4
  %120 = call i32 @compile_binary_expression(i32* %116, i32* %118, i32 %119)
  store i32 %120, i32* %3, align 4
  br label %257

121:                                              ; preds = %2
  %122 = load i32*, i32** %4, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %124 = bitcast %struct.TYPE_12__* %123 to i32*
  %125 = load i32, i32* @OP_lteq, align 4
  %126 = call i32 @compile_binary_expression(i32* %122, i32* %124, i32 %125)
  store i32 %126, i32* %3, align 4
  br label %257

127:                                              ; preds = %2
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* @OP_me, align 4
  %130 = call i32 @push_instr(i32* %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* @S_OK, align 4
  br label %136

134:                                              ; preds = %127
  %135 = load i32, i32* @E_OUTOFMEMORY, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  store i32 %137, i32* %3, align 4
  br label %257

138:                                              ; preds = %2
  %139 = load i32*, i32** %4, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %141 = bitcast %struct.TYPE_12__* %140 to i32*
  %142 = load i32, i32* @TRUE, align 4
  %143 = call i32 @compile_member_expression(i32* %139, i32* %141, i32 %142)
  store i32 %143, i32* %3, align 4
  br label %257

144:                                              ; preds = %2
  %145 = load i32*, i32** %4, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %147 = bitcast %struct.TYPE_12__* %146 to i32*
  %148 = load i32, i32* @OP_mod, align 4
  %149 = call i32 @compile_binary_expression(i32* %145, i32* %147, i32 %148)
  store i32 %149, i32* %3, align 4
  br label %257

150:                                              ; preds = %2
  %151 = load i32*, i32** %4, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %153 = bitcast %struct.TYPE_12__* %152 to i32*
  %154 = load i32, i32* @OP_mul, align 4
  %155 = call i32 @compile_binary_expression(i32* %151, i32* %153, i32 %154)
  store i32 %155, i32* %3, align 4
  br label %257

156:                                              ; preds = %2
  %157 = load i32*, i32** %4, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %159 = bitcast %struct.TYPE_12__* %158 to %struct.TYPE_9__*
  %160 = load i32, i32* @OP_neg, align 4
  %161 = call i32 @compile_unary_expression(i32* %157, %struct.TYPE_9__* %159, i32 %160)
  store i32 %161, i32* %3, align 4
  br label %257

162:                                              ; preds = %2
  %163 = load i32*, i32** %4, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %165 = bitcast %struct.TYPE_12__* %164 to i32*
  %166 = load i32, i32* @OP_nequal, align 4
  %167 = call i32 @compile_binary_expression(i32* %163, i32* %165, i32 %166)
  store i32 %167, i32* %3, align 4
  br label %257

168:                                              ; preds = %2
  %169 = load i32*, i32** %4, align 8
  %170 = load i32, i32* @OP_new, align 4
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %172 = bitcast %struct.TYPE_12__* %171 to %struct.TYPE_10__*
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @push_instr_str(i32* %169, i32 %170, i32 %174)
  store i32 %175, i32* %3, align 4
  br label %257

176:                                              ; preds = %2
  %177 = load i32*, i32** %4, align 8
  %178 = load i32, i32* @OP_hres, align 4
  %179 = load i32, i32* @DISP_E_PARAMNOTFOUND, align 4
  %180 = call i32 @push_instr_int(i32* %177, i32 %178, i32 %179)
  store i32 %180, i32* %3, align 4
  br label %257

181:                                              ; preds = %2
  %182 = load i32*, i32** %4, align 8
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %184 = bitcast %struct.TYPE_12__* %183 to %struct.TYPE_9__*
  %185 = load i32, i32* @OP_not, align 4
  %186 = call i32 @compile_unary_expression(i32* %182, %struct.TYPE_9__* %184, i32 %185)
  store i32 %186, i32* %3, align 4
  br label %257

187:                                              ; preds = %2
  %188 = load i32*, i32** %4, align 8
  %189 = load i32, i32* @OP_nothing, align 4
  %190 = call i32 @push_instr(i32* %188, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i32, i32* @S_OK, align 4
  br label %196

194:                                              ; preds = %187
  %195 = load i32, i32* @E_OUTOFMEMORY, align 4
  br label %196

196:                                              ; preds = %194, %192
  %197 = phi i32 [ %193, %192 ], [ %195, %194 ]
  store i32 %197, i32* %3, align 4
  br label %257

198:                                              ; preds = %2
  %199 = load i32*, i32** %4, align 8
  %200 = load i32, i32* @OP_null, align 4
  %201 = call i32 @push_instr(i32* %199, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i32, i32* @S_OK, align 4
  br label %207

205:                                              ; preds = %198
  %206 = load i32, i32* @E_OUTOFMEMORY, align 4
  br label %207

207:                                              ; preds = %205, %203
  %208 = phi i32 [ %204, %203 ], [ %206, %205 ]
  store i32 %208, i32* %3, align 4
  br label %257

209:                                              ; preds = %2
  %210 = load i32*, i32** %4, align 8
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %212 = bitcast %struct.TYPE_12__* %211 to i32*
  %213 = load i32, i32* @OP_or, align 4
  %214 = call i32 @compile_binary_expression(i32* %210, i32* %212, i32 %213)
  store i32 %214, i32* %3, align 4
  br label %257

215:                                              ; preds = %2
  %216 = load i32*, i32** %4, align 8
  %217 = load i32, i32* @OP_string, align 4
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %219 = bitcast %struct.TYPE_12__* %218 to %struct.TYPE_10__*
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @push_instr_str(i32* %216, i32 %217, i32 %221)
  store i32 %222, i32* %3, align 4
  br label %257

223:                                              ; preds = %2
  %224 = load i32*, i32** %4, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %226 = bitcast %struct.TYPE_12__* %225 to i32*
  %227 = load i32, i32* @OP_sub, align 4
  %228 = call i32 @compile_binary_expression(i32* %224, i32* %226, i32 %227)
  store i32 %228, i32* %3, align 4
  br label %257

229:                                              ; preds = %2
  %230 = load i32*, i32** %4, align 8
  %231 = load i32, i32* @OP_short, align 4
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %233 = bitcast %struct.TYPE_12__* %232 to %struct.TYPE_11__*
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @push_instr_int(i32* %230, i32 %231, i32 %235)
  store i32 %236, i32* %3, align 4
  br label %257

237:                                              ; preds = %2
  %238 = load i32*, i32** %4, align 8
  %239 = load i32, i32* @OP_long, align 4
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %241 = bitcast %struct.TYPE_12__* %240 to %struct.TYPE_11__*
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @push_instr_int(i32* %238, i32 %239, i32 %243)
  store i32 %244, i32* %3, align 4
  br label %257

245:                                              ; preds = %2
  %246 = load i32*, i32** %4, align 8
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %248 = bitcast %struct.TYPE_12__* %247 to i32*
  %249 = load i32, i32* @OP_xor, align 4
  %250 = call i32 @compile_binary_expression(i32* %246, i32* %248, i32 %249)
  store i32 %250, i32* %3, align 4
  br label %257

251:                                              ; preds = %2
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @FIXME(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %254)
  %256 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %256, i32* %3, align 4
  br label %257

257:                                              ; preds = %251, %245, %237, %229, %223, %215, %209, %207, %196, %181, %176, %168, %162, %156, %150, %144, %138, %136, %121, %115, %109, %103, %97, %91, %85, %79, %73, %67, %65, %48, %42, %36, %29, %21, %15, %9
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local i32 @compile_binary_expression(i32*, i32*, i32) #1

declare dso_local i32 @push_instr_int(i32*, i32, i32) #1

declare dso_local i32 @push_instr_double(i32*, i32, i32) #1

declare dso_local i32 @push_instr(i32*, i32) #1

declare dso_local i32 @compile_member_expression(i32*, i32*, i32) #1

declare dso_local i32 @compile_unary_expression(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @push_instr_str(i32*, i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
