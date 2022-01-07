; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprCompare.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i64, i32, %struct.TYPE_12__, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32 }

@TK_VARIABLE = common dso_local global i64 0, align 8
@EP_IntValue = common dso_local global i32 0, align 4
@TK_RAISE = common dso_local global i64 0, align 8
@TK_COLLATE = common dso_local global i64 0, align 8
@TK_COLUMN = common dso_local global i64 0, align 8
@TK_AGG_COLUMN = common dso_local global i64 0, align 8
@TK_FUNCTION = common dso_local global i64 0, align 8
@EP_WinFunc = common dso_local global i32 0, align 4
@TK_NULL = common dso_local global i64 0, align 8
@EP_Distinct = common dso_local global i32 0, align 4
@EP_TokenOnly = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@EP_FixedCol = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i64 0, align 8
@TK_TRUEFALSE = common dso_local global i64 0, align 8
@EP_Reduced = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3ExprCompare(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %12 = icmp eq %struct.TYPE_13__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %15 = icmp eq %struct.TYPE_13__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13, %4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = icmp eq %struct.TYPE_13__* %17, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 0, i32 2
  store i32 %21, i32* %5, align 4
  br label %354

22:                                               ; preds = %13
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TK_VARIABLE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = call i64 @exprCompareVariable(i32* %32, %struct.TYPE_13__* %33, %struct.TYPE_13__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %354

38:                                               ; preds = %31, %25, %22
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %41, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @EP_IntValue, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %38
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %53, %56
  %58 = load i32, i32* @EP_IntValue, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %50
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 7
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %65, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %354

72:                                               ; preds = %61, %50
  store i32 2, i32* %5, align 4
  br label %354

73:                                               ; preds = %38
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %73
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TK_RAISE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %120

87:                                               ; preds = %81, %73
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @TK_COLLATE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %87
  %94 = load i32*, i32** %6, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 6
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @sqlite3ExprCompare(i32* %94, %struct.TYPE_13__* %97, %struct.TYPE_13__* %98, i32 %99)
  %101 = icmp slt i32 %100, 2
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  store i32 1, i32* %5, align 4
  br label %354

103:                                              ; preds = %93, %87
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @TK_COLLATE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load i32*, i32** %6, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 6
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @sqlite3ExprCompare(i32* %110, %struct.TYPE_13__* %111, %struct.TYPE_13__* %114, i32 %115)
  %117 = icmp slt i32 %116, 2
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  store i32 1, i32* %5, align 4
  br label %354

119:                                              ; preds = %109, %103
  store i32 2, i32* %5, align 4
  br label %354

120:                                              ; preds = %81
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @TK_COLUMN, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %236

126:                                              ; preds = %120
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @TK_AGG_COLUMN, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %236

132:                                              ; preds = %126
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 7
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %236

138:                                              ; preds = %132
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @TK_FUNCTION, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %185

144:                                              ; preds = %138
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 7
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 7
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @sqlite3StrICmp(i64 %148, i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %144
  store i32 2, i32* %5, align 4
  br label %354

156:                                              ; preds = %144
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %158 = load i32, i32* @EP_WinFunc, align 4
  %159 = call i64 @ExprHasProperty(%struct.TYPE_13__* %157, i32 %158)
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %161 = load i32, i32* @EP_WinFunc, align 4
  %162 = call i64 @ExprHasProperty(%struct.TYPE_13__* %160, i32 %161)
  %163 = icmp eq i64 %159, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %167 = load i32, i32* @EP_WinFunc, align 4
  %168 = call i64 @ExprHasProperty(%struct.TYPE_13__* %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %156
  %171 = load i32*, i32** %6, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i64 @sqlite3WindowCompare(i32* %171, i32 %175, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %170
  store i32 2, i32* %5, align 4
  br label %354

183:                                              ; preds = %170
  br label %184

184:                                              ; preds = %183, %156
  br label %235

185:                                              ; preds = %138
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @TK_NULL, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %185
  store i32 0, i32* %5, align 4
  br label %354

192:                                              ; preds = %185
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @TK_COLLATE, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %211

198:                                              ; preds = %192
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 7
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 7
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = call i64 @sqlite3_stricmp(i64 %202, i64 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %198
  store i32 2, i32* %5, align 4
  br label %354

210:                                              ; preds = %198
  br label %233

211:                                              ; preds = %192
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 7
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  %217 = zext i1 %216 to i32
  %218 = call i64 @ALWAYS(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %232

220:                                              ; preds = %211
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 7
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 7
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = call i64 @strcmp(i64 %224, i64 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %220
  store i32 2, i32* %5, align 4
  br label %354

232:                                              ; preds = %220, %211
  br label %233

233:                                              ; preds = %232, %210
  br label %234

234:                                              ; preds = %233
  br label %235

235:                                              ; preds = %234, %184
  br label %236

236:                                              ; preds = %235, %132, %126, %120
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @EP_Distinct, align 4
  %241 = and i32 %239, %240
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @EP_Distinct, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %241, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %236
  store i32 2, i32* %5, align 4
  br label %354

249:                                              ; preds = %236
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* @EP_TokenOnly, align 4
  %252 = and i32 %250, %251
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %353

254:                                              ; preds = %249
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* @EP_xIsSelect, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %254
  store i32 2, i32* %5, align 4
  br label %354

260:                                              ; preds = %254
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* @EP_FixedCol, align 4
  %263 = and i32 %261, %262
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %277

265:                                              ; preds = %260
  %266 = load i32*, i32** %6, align 8
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 6
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %268, align 8
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 6
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %271, align 8
  %273 = load i32, i32* %9, align 4
  %274 = call i32 @sqlite3ExprCompare(i32* %266, %struct.TYPE_13__* %269, %struct.TYPE_13__* %272, i32 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %265
  store i32 2, i32* %5, align 4
  br label %354

277:                                              ; preds = %265, %260
  %278 = load i32*, i32** %6, align 8
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 5
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %280, align 8
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 5
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %283, align 8
  %285 = load i32, i32* %9, align 4
  %286 = call i32 @sqlite3ExprCompare(i32* %278, %struct.TYPE_13__* %281, %struct.TYPE_13__* %284, i32 %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %277
  store i32 2, i32* %5, align 4
  br label %354

289:                                              ; preds = %277
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 4
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %9, align 4
  %299 = call i64 @sqlite3ExprListCompare(i32 %293, i32 %297, i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %289
  store i32 2, i32* %5, align 4
  br label %354

302:                                              ; preds = %289
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @TK_STRING, align 8
  %307 = icmp ne i64 %305, %306
  br i1 %307, label %308, label %352

308:                                              ; preds = %302
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @TK_TRUEFALSE, align 8
  %313 = icmp ne i64 %311, %312
  br i1 %313, label %314, label %352

314:                                              ; preds = %308
  %315 = load i32, i32* %10, align 4
  %316 = load i32, i32* @EP_Reduced, align 4
  %317 = and i32 %315, %316
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %352

319:                                              ; preds = %314
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 2
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %322, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %319
  store i32 2, i32* %5, align 4
  br label %354

328:                                              ; preds = %319
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 8
  %335 = icmp ne i32 %331, %334
  br i1 %335, label %336, label %351

336:                                              ; preds = %328
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* %9, align 4
  %341 = icmp ne i32 %339, %340
  br i1 %341, label %350, label %342

342:                                              ; preds = %336
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 8
  %346 = icmp sge i32 %345, 0
  %347 = zext i1 %346 to i32
  %348 = call i64 @NEVER(i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %342, %336
  store i32 2, i32* %5, align 4
  br label %354

351:                                              ; preds = %342, %328
  br label %352

352:                                              ; preds = %351, %314, %308, %302
  br label %353

353:                                              ; preds = %352, %249
  store i32 0, i32* %5, align 4
  br label %354

354:                                              ; preds = %353, %350, %327, %301, %288, %276, %259, %248, %231, %209, %191, %182, %155, %119, %118, %102, %72, %71, %37, %16
  %355 = load i32, i32* %5, align 4
  ret i32 %355
}

declare dso_local i64 @exprCompareVariable(i32*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i64 @sqlite3StrICmp(i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ExprHasProperty(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @sqlite3WindowCompare(i32*, i32, i32) #1

declare dso_local i64 @sqlite3_stricmp(i64, i64) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i64 @strcmp(i64, i64) #1

declare dso_local i64 @sqlite3ExprListCompare(i32, i32, i32) #1

declare dso_local i64 @NEVER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
