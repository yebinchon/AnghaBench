; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprIfTrue.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprIfTrue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32* }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_25__*, %struct.TYPE_25__* }

@SQLITE_JUMPIFNULL = common dso_local global i32 0, align 4
@SQLITE_NULLEQ = common dso_local global i32 0, align 4
@OP_Lt = common dso_local global i32 0, align 4
@OP_Le = common dso_local global i32 0, align 4
@OP_Gt = common dso_local global i32 0, align 4
@OP_Ge = common dso_local global i32 0, align 4
@OP_Eq = common dso_local global i32 0, align 4
@OP_Ne = common dso_local global i32 0, align 4
@OP_IsNull = common dso_local global i32 0, align 4
@OP_NotNull = common dso_local global i32 0, align 4
@OP_If = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3ExprIfTrue(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @SQLITE_JUMPIFNULL, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %26, %4
  %30 = phi i1 [ true, %4 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32*, i32** %9, align 8
  %34 = icmp eq i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i64 @NEVER(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %470

39:                                               ; preds = %29
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %41 = icmp eq %struct.TYPE_25__* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i64 @NEVER(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %470

46:                                               ; preds = %39
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  switch i32 %50, label %425 [
    i32 143, label %51
    i32 129, label %76
    i32 131, label %93
    i32 128, label %105
    i32 137, label %169
    i32 136, label %169
    i32 133, label %183
    i32 134, label %183
    i32 139, label %183
    i32 140, label %183
    i32 132, label %183
    i32 141, label %183
    i32 135, label %352
    i32 130, label %352
    i32 142, label %393
    i32 138, label %403
  ]

51:                                               ; preds = %46
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %53 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_24__* %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @testcase(i32 %56)
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @SQLITE_JUMPIFNULL, align 4
  %65 = xor i32 %63, %64
  %66 = call i32 @sqlite3ExprIfFalse(%struct.TYPE_24__* %58, %struct.TYPE_25__* %61, i32 %62, i32 %65)
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  call void @sqlite3ExprIfTrue(%struct.TYPE_24__* %67, %struct.TYPE_25__* %70, i32 %71, i32 %72)
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @sqlite3VdbeResolveLabel(i32* %73, i32 %74)
  br label %463

76:                                               ; preds = %46
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @testcase(i32 %79)
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  call void @sqlite3ExprIfTrue(%struct.TYPE_24__* %81, %struct.TYPE_25__* %84, i32 %85, i32 %86)
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  call void @sqlite3ExprIfTrue(%struct.TYPE_24__* %87, %struct.TYPE_25__* %90, i32 %91, i32 %92)
  br label %463

93:                                               ; preds = %46
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @testcase(i32 %96)
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @sqlite3ExprIfFalse(%struct.TYPE_24__* %98, %struct.TYPE_25__* %101, i32 %102, i32 %103)
  br label %463

105:                                              ; preds = %46
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @testcase(i32 %108)
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 136
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %16, align 4
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %116, align 8
  %118 = call i32 @sqlite3ExprTruthValue(%struct.TYPE_25__* %117)
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %105
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  br label %124

124:                                              ; preds = %121, %105
  %125 = phi i1 [ false, %105 ], [ %123, %121 ]
  %126 = zext i1 %125 to i32
  %127 = call i32 @testcase(i32 %126)
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %124
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br label %133

133:                                              ; preds = %130, %124
  %134 = phi i1 [ false, %124 ], [ %132, %130 ]
  %135 = zext i1 %134 to i32
  %136 = call i32 @testcase(i32 %135)
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %16, align 4
  %139 = xor i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %133
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %16, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i32, i32* @SQLITE_JUMPIFNULL, align 4
  br label %152

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %151, %149
  %153 = phi i32 [ %150, %149 ], [ 0, %151 ]
  call void @sqlite3ExprIfTrue(%struct.TYPE_24__* %142, %struct.TYPE_25__* %145, i32 %146, i32 %153)
  br label %168

154:                                              ; preds = %133
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %16, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %154
  %163 = load i32, i32* @SQLITE_JUMPIFNULL, align 4
  br label %165

164:                                              ; preds = %154
  br label %165

165:                                              ; preds = %164, %162
  %166 = phi i32 [ %163, %162 ], [ 0, %164 ]
  %167 = call i32 @sqlite3ExprIfFalse(%struct.TYPE_24__* %155, %struct.TYPE_25__* %158, i32 %159, i32 %166)
  br label %168

168:                                              ; preds = %165, %152
  br label %463

169:                                              ; preds = %46, %46
  %170 = load i32, i32* %10, align 4
  %171 = icmp eq i32 %170, 137
  %172 = zext i1 %171 to i32
  %173 = call i32 @testcase(i32 %172)
  %174 = load i32, i32* %10, align 4
  %175 = icmp eq i32 %174, 136
  %176 = zext i1 %175 to i32
  %177 = call i32 @testcase(i32 %176)
  %178 = load i32, i32* %10, align 4
  %179 = icmp eq i32 %178, 137
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 141, i32 132
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* @SQLITE_NULLEQ, align 4
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %46, %46, %46, %46, %46, %46, %169
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %185, align 8
  %187 = call i32 @sqlite3ExprIsVector(%struct.TYPE_25__* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %426

190:                                              ; preds = %183
  %191 = load i32, i32* %8, align 4
  %192 = icmp eq i32 %191, 0
  %193 = zext i1 %192 to i32
  %194 = call i32 @testcase(i32 %193)
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %197, align 8
  %199 = call i32 @sqlite3ExprCodeTemp(%struct.TYPE_24__* %195, %struct.TYPE_25__* %198, i32* %11)
  store i32 %199, i32* %13, align 4
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %202, align 8
  %204 = call i32 @sqlite3ExprCodeTemp(%struct.TYPE_24__* %200, %struct.TYPE_25__* %203, i32* %12)
  store i32 %204, i32* %14, align 4
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %207, align 8
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 3
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %210, align 8
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* %8, align 4
  %217 = call i32 @codeCompare(%struct.TYPE_24__* %205, %struct.TYPE_25__* %208, %struct.TYPE_25__* %211, i32 %212, i32 %213, i32 %214, i32 %215, i32 %216)
  %218 = load i32, i32* @OP_Lt, align 4
  %219 = icmp eq i32 133, %218
  %220 = zext i1 %219 to i32
  %221 = call i32 @assert(i32 %220)
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* @OP_Lt, align 4
  %224 = icmp eq i32 %222, %223
  %225 = zext i1 %224 to i32
  %226 = call i32 @testcase(i32 %225)
  %227 = load i32*, i32** %9, align 8
  %228 = load i32, i32* %10, align 4
  %229 = load i32, i32* @OP_Lt, align 4
  %230 = icmp eq i32 %228, %229
  %231 = zext i1 %230 to i32
  %232 = call i32 @VdbeCoverageIf(i32* %227, i32 %231)
  %233 = load i32, i32* @OP_Le, align 4
  %234 = icmp eq i32 134, %233
  %235 = zext i1 %234 to i32
  %236 = call i32 @assert(i32 %235)
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* @OP_Le, align 4
  %239 = icmp eq i32 %237, %238
  %240 = zext i1 %239 to i32
  %241 = call i32 @testcase(i32 %240)
  %242 = load i32*, i32** %9, align 8
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* @OP_Le, align 4
  %245 = icmp eq i32 %243, %244
  %246 = zext i1 %245 to i32
  %247 = call i32 @VdbeCoverageIf(i32* %242, i32 %246)
  %248 = load i32, i32* @OP_Gt, align 4
  %249 = icmp eq i32 139, %248
  %250 = zext i1 %249 to i32
  %251 = call i32 @assert(i32 %250)
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* @OP_Gt, align 4
  %254 = icmp eq i32 %252, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 @testcase(i32 %255)
  %257 = load i32*, i32** %9, align 8
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* @OP_Gt, align 4
  %260 = icmp eq i32 %258, %259
  %261 = zext i1 %260 to i32
  %262 = call i32 @VdbeCoverageIf(i32* %257, i32 %261)
  %263 = load i32, i32* @OP_Ge, align 4
  %264 = icmp eq i32 140, %263
  %265 = zext i1 %264 to i32
  %266 = call i32 @assert(i32 %265)
  %267 = load i32, i32* %10, align 4
  %268 = load i32, i32* @OP_Ge, align 4
  %269 = icmp eq i32 %267, %268
  %270 = zext i1 %269 to i32
  %271 = call i32 @testcase(i32 %270)
  %272 = load i32*, i32** %9, align 8
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* @OP_Ge, align 4
  %275 = icmp eq i32 %273, %274
  %276 = zext i1 %275 to i32
  %277 = call i32 @VdbeCoverageIf(i32* %272, i32 %276)
  %278 = load i32, i32* @OP_Eq, align 4
  %279 = icmp eq i32 141, %278
  %280 = zext i1 %279 to i32
  %281 = call i32 @assert(i32 %280)
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* @OP_Eq, align 4
  %284 = icmp eq i32 %282, %283
  %285 = zext i1 %284 to i32
  %286 = call i32 @testcase(i32 %285)
  %287 = load i32*, i32** %9, align 8
  %288 = load i32, i32* %10, align 4
  %289 = load i32, i32* @OP_Eq, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %295

291:                                              ; preds = %190
  %292 = load i32, i32* %8, align 4
  %293 = load i32, i32* @SQLITE_NULLEQ, align 4
  %294 = icmp eq i32 %292, %293
  br label %295

295:                                              ; preds = %291, %190
  %296 = phi i1 [ false, %190 ], [ %294, %291 ]
  %297 = zext i1 %296 to i32
  %298 = call i32 @VdbeCoverageIf(i32* %287, i32 %297)
  %299 = load i32*, i32** %9, align 8
  %300 = load i32, i32* %10, align 4
  %301 = load i32, i32* @OP_Eq, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %307

303:                                              ; preds = %295
  %304 = load i32, i32* %8, align 4
  %305 = load i32, i32* @SQLITE_NULLEQ, align 4
  %306 = icmp ne i32 %304, %305
  br label %307

307:                                              ; preds = %303, %295
  %308 = phi i1 [ false, %295 ], [ %306, %303 ]
  %309 = zext i1 %308 to i32
  %310 = call i32 @VdbeCoverageIf(i32* %299, i32 %309)
  %311 = load i32, i32* @OP_Ne, align 4
  %312 = icmp eq i32 132, %311
  %313 = zext i1 %312 to i32
  %314 = call i32 @assert(i32 %313)
  %315 = load i32, i32* %10, align 4
  %316 = load i32, i32* @OP_Ne, align 4
  %317 = icmp eq i32 %315, %316
  %318 = zext i1 %317 to i32
  %319 = call i32 @testcase(i32 %318)
  %320 = load i32*, i32** %9, align 8
  %321 = load i32, i32* %10, align 4
  %322 = load i32, i32* @OP_Ne, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %328

324:                                              ; preds = %307
  %325 = load i32, i32* %8, align 4
  %326 = load i32, i32* @SQLITE_NULLEQ, align 4
  %327 = icmp eq i32 %325, %326
  br label %328

328:                                              ; preds = %324, %307
  %329 = phi i1 [ false, %307 ], [ %327, %324 ]
  %330 = zext i1 %329 to i32
  %331 = call i32 @VdbeCoverageIf(i32* %320, i32 %330)
  %332 = load i32*, i32** %9, align 8
  %333 = load i32, i32* %10, align 4
  %334 = load i32, i32* @OP_Ne, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %336, label %340

336:                                              ; preds = %328
  %337 = load i32, i32* %8, align 4
  %338 = load i32, i32* @SQLITE_NULLEQ, align 4
  %339 = icmp ne i32 %337, %338
  br label %340

340:                                              ; preds = %336, %328
  %341 = phi i1 [ false, %328 ], [ %339, %336 ]
  %342 = zext i1 %341 to i32
  %343 = call i32 @VdbeCoverageIf(i32* %332, i32 %342)
  %344 = load i32, i32* %11, align 4
  %345 = icmp eq i32 %344, 0
  %346 = zext i1 %345 to i32
  %347 = call i32 @testcase(i32 %346)
  %348 = load i32, i32* %12, align 4
  %349 = icmp eq i32 %348, 0
  %350 = zext i1 %349 to i32
  %351 = call i32 @testcase(i32 %350)
  br label %463

352:                                              ; preds = %46, %46
  %353 = load i32, i32* @OP_IsNull, align 4
  %354 = icmp eq i32 135, %353
  %355 = zext i1 %354 to i32
  %356 = call i32 @assert(i32 %355)
  %357 = load i32, i32* %10, align 4
  %358 = icmp eq i32 %357, 135
  %359 = zext i1 %358 to i32
  %360 = call i32 @testcase(i32 %359)
  %361 = load i32, i32* @OP_NotNull, align 4
  %362 = icmp eq i32 130, %361
  %363 = zext i1 %362 to i32
  %364 = call i32 @assert(i32 %363)
  %365 = load i32, i32* %10, align 4
  %366 = icmp eq i32 %365, 130
  %367 = zext i1 %366 to i32
  %368 = call i32 @testcase(i32 %367)
  %369 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %370 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %370, i32 0, i32 2
  %372 = load %struct.TYPE_25__*, %struct.TYPE_25__** %371, align 8
  %373 = call i32 @sqlite3ExprCodeTemp(%struct.TYPE_24__* %369, %struct.TYPE_25__* %372, i32* %11)
  store i32 %373, i32* %13, align 4
  %374 = load i32*, i32** %9, align 8
  %375 = load i32, i32* %10, align 4
  %376 = load i32, i32* %13, align 4
  %377 = load i32, i32* %7, align 4
  %378 = call i32 @sqlite3VdbeAddOp2(i32* %374, i32 %375, i32 %376, i32 %377)
  %379 = load i32*, i32** %9, align 8
  %380 = load i32, i32* %10, align 4
  %381 = icmp eq i32 %380, 135
  %382 = zext i1 %381 to i32
  %383 = call i32 @VdbeCoverageIf(i32* %379, i32 %382)
  %384 = load i32*, i32** %9, align 8
  %385 = load i32, i32* %10, align 4
  %386 = icmp eq i32 %385, 130
  %387 = zext i1 %386 to i32
  %388 = call i32 @VdbeCoverageIf(i32* %384, i32 %387)
  %389 = load i32, i32* %11, align 4
  %390 = icmp eq i32 %389, 0
  %391 = zext i1 %390 to i32
  %392 = call i32 @testcase(i32 %391)
  br label %463

393:                                              ; preds = %46
  %394 = load i32, i32* %8, align 4
  %395 = icmp eq i32 %394, 0
  %396 = zext i1 %395 to i32
  %397 = call i32 @testcase(i32 %396)
  %398 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %399 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %400 = load i32, i32* %7, align 4
  %401 = load i32, i32* %8, align 4
  %402 = call i32 @exprCodeBetween(%struct.TYPE_24__* %398, %struct.TYPE_25__* %399, i32 %400, void (%struct.TYPE_24__*, %struct.TYPE_25__*, i32, i32)* @sqlite3ExprIfTrue, i32 %401)
  br label %463

403:                                              ; preds = %46
  %404 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %405 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_24__* %404)
  store i32 %405, i32* %18, align 4
  %406 = load i32, i32* %8, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %403
  %409 = load i32, i32* %7, align 4
  br label %412

410:                                              ; preds = %403
  %411 = load i32, i32* %18, align 4
  br label %412

412:                                              ; preds = %410, %408
  %413 = phi i32 [ %409, %408 ], [ %411, %410 ]
  store i32 %413, i32* %19, align 4
  %414 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %415 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %416 = load i32, i32* %18, align 4
  %417 = load i32, i32* %19, align 4
  %418 = call i32 @sqlite3ExprCodeIN(%struct.TYPE_24__* %414, %struct.TYPE_25__* %415, i32 %416, i32 %417)
  %419 = load i32*, i32** %9, align 8
  %420 = load i32, i32* %7, align 4
  %421 = call i32 @sqlite3VdbeGoto(i32* %419, i32 %420)
  %422 = load i32*, i32** %9, align 8
  %423 = load i32, i32* %18, align 4
  %424 = call i32 @sqlite3VdbeResolveLabel(i32* %422, i32 %423)
  br label %463

425:                                              ; preds = %46
  br label %426

426:                                              ; preds = %425, %189
  %427 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %428 = call i32 @exprAlwaysTrue(%struct.TYPE_25__* %427)
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %426
  %431 = load i32*, i32** %9, align 8
  %432 = load i32, i32* %7, align 4
  %433 = call i32 @sqlite3VdbeGoto(i32* %431, i32 %432)
  br label %462

434:                                              ; preds = %426
  %435 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %436 = call i32 @exprAlwaysFalse(%struct.TYPE_25__* %435)
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %434
  br label %461

439:                                              ; preds = %434
  %440 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %441 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %442 = call i32 @sqlite3ExprCodeTemp(%struct.TYPE_24__* %440, %struct.TYPE_25__* %441, i32* %11)
  store i32 %442, i32* %13, align 4
  %443 = load i32*, i32** %9, align 8
  %444 = load i32, i32* @OP_If, align 4
  %445 = load i32, i32* %13, align 4
  %446 = load i32, i32* %7, align 4
  %447 = load i32, i32* %8, align 4
  %448 = icmp ne i32 %447, 0
  %449 = zext i1 %448 to i32
  %450 = call i32 @sqlite3VdbeAddOp3(i32* %443, i32 %444, i32 %445, i32 %446, i32 %449)
  %451 = load i32*, i32** %9, align 8
  %452 = call i32 @VdbeCoverage(i32* %451)
  %453 = load i32, i32* %11, align 4
  %454 = icmp eq i32 %453, 0
  %455 = zext i1 %454 to i32
  %456 = call i32 @testcase(i32 %455)
  %457 = load i32, i32* %8, align 4
  %458 = icmp eq i32 %457, 0
  %459 = zext i1 %458 to i32
  %460 = call i32 @testcase(i32 %459)
  br label %461

461:                                              ; preds = %439, %438
  br label %462

462:                                              ; preds = %461, %430
  br label %463

463:                                              ; preds = %462, %412, %393, %352, %340, %168, %93, %76, %51
  %464 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %465 = load i32, i32* %11, align 4
  %466 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_24__* %464, i32 %465)
  %467 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %468 = load i32, i32* %12, align 4
  %469 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_24__* %467, i32 %468)
  br label %470

470:                                              ; preds = %463, %45, %38
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_24__*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3ExprIfFalse(%struct.TYPE_24__*, %struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3ExprTruthValue(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3ExprIsVector(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3ExprCodeTemp(%struct.TYPE_24__*, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @codeCompare(%struct.TYPE_24__*, %struct.TYPE_25__*, %struct.TYPE_25__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverageIf(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @exprCodeBetween(%struct.TYPE_24__*, %struct.TYPE_25__*, i32, void (%struct.TYPE_24__*, %struct.TYPE_25__*, i32, i32)*, i32) #1

declare dso_local i32 @sqlite3ExprCodeIN(%struct.TYPE_24__*, %struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeGoto(i32*, i32) #1

declare dso_local i32 @exprAlwaysTrue(%struct.TYPE_25__*) #1

declare dso_local i32 @exprAlwaysFalse(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
