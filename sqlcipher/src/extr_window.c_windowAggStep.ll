; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_window.c_windowAggStep.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_window.c_windowAggStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_13__*, i64, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i64 }

@nth_valueName = common dso_local global i64 0, align 8
@OP_Column = common dso_local global i32 0, align 4
@SQLITE_FUNC_MINMAX = common dso_local global i32 0, align 4
@TK_UNBOUNDED = common dso_local global i64 0, align 8
@OP_IsNull = common dso_local global i32 0, align 4
@OP_AddImm = common dso_local global i32 0, align 4
@OP_SCopy = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OP_SeekGE = common dso_local global i32 0, align 4
@OP_Delete = common dso_local global i32 0, align 4
@first_valueName = common dso_local global i64 0, align 8
@noopStepFunc = common dso_local global i64 0, align 8
@OP_IfNot = common dso_local global i32 0, align 4
@SQLITE_FUNC_NEEDCOLL = common dso_local global i32 0, align 4
@OP_CollSeq = common dso_local global i32 0, align 4
@P4_COLLSEQ = common dso_local global i32 0, align 4
@OP_AggInverse = common dso_local global i32 0, align 4
@OP_AggStep = common dso_local global i32 0, align 4
@P4_FUNCDEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*, i32, i32, i32)* @windowAggStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windowAggStep(i32* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @sqlite3GetVdbe(i32* %21)
  store i32* %22, i32** %11, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %12, align 8
  br label %24

24:                                               ; preds = %333, %5
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %26 = icmp ne %struct.TYPE_14__* %25, null
  br i1 %26, label %27, label %337

27:                                               ; preds = %24
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 9
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %13, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %32 = call i32 @windowArgCount(%struct.TYPE_14__* %31)
  store i32 %32, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %33

33:                                               ; preds = %75, %27
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %78

37:                                               ; preds = %33
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @nth_valueName, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %40, %37
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* @OP_Column, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i32 @sqlite3VdbeAddOp3(i32* %47, i32 %48, i32 %49, i32 %54, i32 %57)
  br label %74

59:                                               ; preds = %40
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* @OP_Column, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %70, %71
  %73 = call i32 @sqlite3VdbeAddOp3(i32* %60, i32 %61, i32 %64, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %59, %46
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %16, align 4
  br label %33

78:                                               ; preds = %33
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %14, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %166

84:                                               ; preds = %78
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @SQLITE_FUNC_MINMAX, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %166

91:                                               ; preds = %84
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @TK_UNBOUNDED, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %166

97:                                               ; preds = %91
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* @OP_IsNull, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @sqlite3VdbeAddOp1(i32* %98, i32 %99, i32 %100)
  store i32 %101, i32* %17, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = call i32 @VdbeCoverage(i32* %102)
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %141

106:                                              ; preds = %97
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* @OP_AddImm, align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  %113 = call i32 @sqlite3VdbeAddOp2(i32* %107, i32 %108, i32 %112, i32 1)
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* @OP_SCopy, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @sqlite3VdbeAddOp2(i32* %114, i32 %115, i32 %116, i32 %119)
  %121 = load i32*, i32** %11, align 8
  %122 = load i32, i32* @OP_MakeRecord, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 2
  %130 = call i32 @sqlite3VdbeAddOp3(i32* %121, i32 %122, i32 %125, i32 2, i32 %129)
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* @OP_IdxInsert, align 4
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 2
  %140 = call i32 @sqlite3VdbeAddOp2(i32* %131, i32 %132, i32 %135, i32 %139)
  br label %162

141:                                              ; preds = %97
  %142 = load i32*, i32** %11, align 8
  %143 = load i32, i32* @OP_SeekGE, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @sqlite3VdbeAddOp4Int(i32* %142, i32 %143, i32 %146, i32 0, i32 %147, i32 1)
  %149 = load i32*, i32** %11, align 8
  %150 = call i32 @VdbeCoverageNeverTaken(i32* %149)
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* @OP_Delete, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @sqlite3VdbeAddOp1(i32* %151, i32 %152, i32 %155)
  %157 = load i32*, i32** %11, align 8
  %158 = load i32*, i32** %11, align 8
  %159 = call i32 @sqlite3VdbeCurrentAddr(i32* %158)
  %160 = sub nsw i32 %159, 2
  %161 = call i32 @sqlite3VdbeJumpHere(i32* %157, i32 %160)
  br label %162

162:                                              ; preds = %141, %106
  %163 = load i32*, i32** %11, align 8
  %164 = load i32, i32* %17, align 4
  %165 = call i32 @sqlite3VdbeJumpHere(i32* %163, i32 %164)
  br label %332

166:                                              ; preds = %91, %84, %78
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %205

171:                                              ; preds = %166
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @nth_valueName, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %183, label %177

177:                                              ; preds = %171
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @first_valueName, align 8
  %182 = icmp eq i64 %180, %181
  br label %183

183:                                              ; preds = %177, %171
  %184 = phi i1 [ true, %171 ], [ %182, %177 ]
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load i32, i32* %9, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %183
  %190 = load i32, i32* %9, align 4
  %191 = icmp eq i32 %190, 1
  br label %192

192:                                              ; preds = %189, %183
  %193 = phi i1 [ true, %183 ], [ %191, %189 ]
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert(i32 %194)
  %196 = load i32*, i32** %11, align 8
  %197 = load i32, i32* @OP_AddImm, align 4
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  %202 = load i32, i32* %9, align 4
  %203 = sub nsw i32 %201, %202
  %204 = call i32 @sqlite3VdbeAddOp2(i32* %196, i32 %197, i32 %203, i32 1)
  br label %331

205:                                              ; preds = %166
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @noopStepFunc, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %330

211:                                              ; preds = %205
  store i32 0, i32* %18, align 4
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 8
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %269

216:                                              ; preds = %211
  %217 = load i32, i32* %15, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %230, label %219

219:                                              ; preds = %216
  %220 = load i32, i32* %15, align 4
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 7
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp eq i32 %220, %228
  br label %230

230:                                              ; preds = %219, %216
  %231 = phi i1 [ true, %216 ], [ %229, %219 ]
  %232 = zext i1 %231 to i32
  %233 = call i32 @assert(i32 %232)
  %234 = load i32, i32* %15, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %244, label %236

236:                                              ; preds = %230
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 7
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %241, align 8
  %243 = icmp eq %struct.TYPE_11__* %242, null
  br label %244

244:                                              ; preds = %236, %230
  %245 = phi i1 [ true, %230 ], [ %243, %236 ]
  %246 = zext i1 %245 to i32
  %247 = call i32 @assert(i32 %246)
  %248 = load i32*, i32** %6, align 8
  %249 = call i32 @sqlite3GetTempReg(i32* %248)
  store i32 %249, i32* %19, align 4
  %250 = load i32*, i32** %11, align 8
  %251 = load i32, i32* @OP_Column, align 4
  %252 = load i32, i32* %8, align 4
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* %15, align 4
  %257 = add nsw i32 %255, %256
  %258 = load i32, i32* %19, align 4
  %259 = call i32 @sqlite3VdbeAddOp3(i32* %250, i32 %251, i32 %252, i32 %257, i32 %258)
  %260 = load i32*, i32** %11, align 8
  %261 = load i32, i32* @OP_IfNot, align 4
  %262 = load i32, i32* %19, align 4
  %263 = call i32 @sqlite3VdbeAddOp3(i32* %260, i32 %261, i32 %262, i32 0, i32 1)
  store i32 %263, i32* %18, align 4
  %264 = load i32*, i32** %11, align 8
  %265 = call i32 @VdbeCoverage(i32* %264)
  %266 = load i32*, i32** %6, align 8
  %267 = load i32, i32* %19, align 4
  %268 = call i32 @sqlite3ReleaseTempReg(i32* %266, i32 %267)
  br label %269

269:                                              ; preds = %244, %211
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @SQLITE_FUNC_NEEDCOLL, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %300

276:                                              ; preds = %269
  %277 = load i32, i32* %15, align 4
  %278 = icmp sgt i32 %277, 0
  %279 = zext i1 %278 to i32
  %280 = call i32 @assert(i32 %279)
  %281 = load i32*, i32** %6, align 8
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 7
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i64 0
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = call i32* @sqlite3ExprNNCollSeq(i32* %281, i32 %292)
  store i32* %293, i32** %20, align 8
  %294 = load i32*, i32** %11, align 8
  %295 = load i32, i32* @OP_CollSeq, align 4
  %296 = load i32*, i32** %20, align 8
  %297 = bitcast i32* %296 to i8*
  %298 = load i32, i32* @P4_COLLSEQ, align 4
  %299 = call i32 @sqlite3VdbeAddOp4(i32* %294, i32 %295, i32 0, i32 0, i32 0, i8* %297, i32 %298)
  br label %300

300:                                              ; preds = %276, %269
  %301 = load i32*, i32** %11, align 8
  %302 = load i32, i32* %9, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %300
  %305 = load i32, i32* @OP_AggInverse, align 4
  br label %308

306:                                              ; preds = %300
  %307 = load i32, i32* @OP_AggStep, align 4
  br label %308

308:                                              ; preds = %306, %304
  %309 = phi i32 [ %305, %304 ], [ %307, %306 ]
  %310 = load i32, i32* %9, align 4
  %311 = load i32, i32* %14, align 4
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 6
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @sqlite3VdbeAddOp3(i32* %301, i32 %309, i32 %310, i32 %311, i32 %314)
  %316 = load i32*, i32** %11, align 8
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %318 = load i32, i32* @P4_FUNCDEF, align 4
  %319 = call i32 @sqlite3VdbeAppendP4(i32* %316, %struct.TYPE_15__* %317, i32 %318)
  %320 = load i32*, i32** %11, align 8
  %321 = load i32, i32* %15, align 4
  %322 = call i32 @sqlite3VdbeChangeP5(i32* %320, i32 %321)
  %323 = load i32, i32* %18, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %308
  %326 = load i32*, i32** %11, align 8
  %327 = load i32, i32* %18, align 4
  %328 = call i32 @sqlite3VdbeJumpHere(i32* %326, i32 %327)
  br label %329

329:                                              ; preds = %325, %308
  br label %330

330:                                              ; preds = %329, %205
  br label %331

331:                                              ; preds = %330, %192
  br label %332

332:                                              ; preds = %331, %162
  br label %333

333:                                              ; preds = %332
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 10
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %335, align 8
  store %struct.TYPE_14__* %336, %struct.TYPE_14__** %12, align 8
  br label %24

337:                                              ; preds = %24
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(i32*) #1

declare dso_local i32 @windowArgCount(%struct.TYPE_14__*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverageNeverTaken(i32*) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3GetTempReg(i32*) #1

declare dso_local i32 @sqlite3ReleaseTempReg(i32*, i32) #1

declare dso_local i32* @sqlite3ExprNNCollSeq(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeAppendP4(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
