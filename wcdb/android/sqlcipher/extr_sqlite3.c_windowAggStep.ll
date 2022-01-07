; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_windowAggStep.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_windowAggStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_12__*, i64, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@OP_Column = common dso_local global i32 0, align 4
@SQLITE_FUNC_WINDOW_SIZE = common dso_local global i32 0, align 4
@OP_SCopy = common dso_local global i32 0, align 4
@SQLITE_FUNC_MINMAX = common dso_local global i32 0, align 4
@TK_UNBOUNDED = common dso_local global i64 0, align 8
@OP_IsNull = common dso_local global i32 0, align 4
@OP_AddImm = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OP_SeekGE = common dso_local global i32 0, align 4
@OP_Delete = common dso_local global i32 0, align 4
@nth_valueName = common dso_local global i64 0, align 8
@first_valueName = common dso_local global i64 0, align 8
@leadName = common dso_local global i64 0, align 8
@lagName = common dso_local global i64 0, align 8
@OP_IfNot = common dso_local global i32 0, align 4
@SQLITE_FUNC_NEEDCOLL = common dso_local global i32 0, align 4
@OP_CollSeq = common dso_local global i32 0, align 4
@P4_COLLSEQ = common dso_local global i32 0, align 4
@OP_AggInverse = common dso_local global i32 0, align 4
@OP_AggStep = common dso_local global i32 0, align 4
@P4_FUNCDEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, i32, i32, i32, i32)* @windowAggStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windowAggStep(i32* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32* @sqlite3GetVdbe(i32* %23)
  store i32* %24, i32** %13, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %14, align 8
  br label %26

26:                                               ; preds = %378, %6
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %28 = icmp ne %struct.TYPE_13__* %27, null
  br i1 %28, label %29, label %382

29:                                               ; preds = %26
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %15, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %36 = call i32 @windowArgCount(%struct.TYPE_13__* %35)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %83

39:                                               ; preds = %29
  store i32 0, i32* %18, align 4
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* @OP_Column, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %18, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %18, align 4
  %55 = add nsw i32 %53, %54
  %56 = call i32 @sqlite3VdbeAddOp3(i32* %45, i32 %46, i32 %47, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %18, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %18, align 4
  br label %40

60:                                               ; preds = %40
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @SQLITE_FUNC_WINDOW_SIZE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %60
  %67 = load i32, i32* %17, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %16, align 4
  br label %79

71:                                               ; preds = %66
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* @OP_SCopy, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %75, %76
  %78 = call i32 @sqlite3VdbeAddOp2(i32* %72, i32 %73, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %71, %69
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %17, align 4
  br label %82

82:                                               ; preds = %79, %60
  br label %96

83:                                               ; preds = %29
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @SQLITE_FUNC_WINDOW_SIZE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %91, %94
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %83, %82
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @SQLITE_FUNC_MINMAX, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %180

105:                                              ; preds = %96
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @TK_UNBOUNDED, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %180

111:                                              ; preds = %105
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* @OP_IsNull, align 4
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @sqlite3VdbeAddOp1(i32* %112, i32 %113, i32 %114)
  store i32 %115, i32* %19, align 4
  %116 = load i32*, i32** %13, align 8
  %117 = call i32 @VdbeCoverage(i32* %116)
  %118 = load i32, i32* %10, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %155

120:                                              ; preds = %111
  %121 = load i32*, i32** %13, align 8
  %122 = load i32, i32* @OP_AddImm, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  %127 = call i32 @sqlite3VdbeAddOp2(i32* %121, i32 %122, i32 %126, i32 1)
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* @OP_SCopy, align 4
  %130 = load i32, i32* %16, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @sqlite3VdbeAddOp2(i32* %128, i32 %129, i32 %130, i32 %133)
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* @OP_MakeRecord, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 2
  %144 = call i32 @sqlite3VdbeAddOp3(i32* %135, i32 %136, i32 %139, i32 2, i32 %143)
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* @OP_IdxInsert, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 2
  %154 = call i32 @sqlite3VdbeAddOp2(i32* %145, i32 %146, i32 %149, i32 %153)
  br label %176

155:                                              ; preds = %111
  %156 = load i32*, i32** %13, align 8
  %157 = load i32, i32* @OP_SeekGE, align 4
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %16, align 4
  %162 = call i32 @sqlite3VdbeAddOp4Int(i32* %156, i32 %157, i32 %160, i32 0, i32 %161, i32 1)
  %163 = load i32*, i32** %13, align 8
  %164 = call i32 @VdbeCoverageNeverTaken(i32* %163)
  %165 = load i32*, i32** %13, align 8
  %166 = load i32, i32* @OP_Delete, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @sqlite3VdbeAddOp1(i32* %165, i32 %166, i32 %169)
  %171 = load i32*, i32** %13, align 8
  %172 = load i32*, i32** %13, align 8
  %173 = call i32 @sqlite3VdbeCurrentAddr(i32* %172)
  %174 = sub nsw i32 %173, 2
  %175 = call i32 @sqlite3VdbeJumpHere(i32* %171, i32 %174)
  br label %176

176:                                              ; preds = %155, %120
  %177 = load i32*, i32** %13, align 8
  %178 = load i32, i32* %19, align 4
  %179 = call i32 @sqlite3VdbeJumpHere(i32* %177, i32 %178)
  br label %377

180:                                              ; preds = %105, %96
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %223

185:                                              ; preds = %180
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 5
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @nth_valueName, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %201, label %193

193:                                              ; preds = %185
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 5
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @first_valueName, align 8
  %200 = icmp eq i64 %198, %199
  br label %201

201:                                              ; preds = %193, %185
  %202 = phi i1 [ true, %185 ], [ %200, %193 ]
  %203 = zext i1 %202 to i32
  %204 = call i32 @assert(i32 %203)
  %205 = load i32, i32* %10, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %201
  %208 = load i32, i32* %10, align 4
  %209 = icmp eq i32 %208, 1
  br label %210

210:                                              ; preds = %207, %201
  %211 = phi i1 [ true, %201 ], [ %209, %207 ]
  %212 = zext i1 %211 to i32
  %213 = call i32 @assert(i32 %212)
  %214 = load i32*, i32** %13, align 8
  %215 = load i32, i32* @OP_AddImm, align 4
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, 1
  %220 = load i32, i32* %10, align 4
  %221 = sub nsw i32 %219, %220
  %222 = call i32 @sqlite3VdbeAddOp2(i32* %214, i32 %215, i32 %221, i32 1)
  br label %376

223:                                              ; preds = %180
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 5
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @leadName, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %239, label %231

231:                                              ; preds = %223
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 5
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @lagName, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %231, %223
  br label %375

240:                                              ; preds = %231
  store i32 0, i32* %20, align 4
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 7
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %310

245:                                              ; preds = %240
  %246 = load i32, i32* %17, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %259, label %248

248:                                              ; preds = %245
  %249 = load i32, i32* %17, align 4
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 6
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp eq i32 %249, %257
  br label %259

259:                                              ; preds = %248, %245
  %260 = phi i1 [ true, %245 ], [ %258, %248 ]
  %261 = zext i1 %260 to i32
  %262 = call i32 @assert(i32 %261)
  %263 = load i32, i32* %17, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %273, label %265

265:                                              ; preds = %259
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 6
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %270, align 8
  %272 = icmp eq %struct.TYPE_10__* %271, null
  br label %273

273:                                              ; preds = %265, %259
  %274 = phi i1 [ true, %259 ], [ %272, %265 ]
  %275 = zext i1 %274 to i32
  %276 = call i32 @assert(i32 %275)
  %277 = load i32, i32* %9, align 4
  %278 = icmp sgt i32 %277, 0
  br i1 %278, label %279, label %292

279:                                              ; preds = %273
  %280 = load i32*, i32** %7, align 8
  %281 = call i32 @sqlite3GetTempReg(i32* %280)
  store i32 %281, i32* %21, align 4
  %282 = load i32*, i32** %13, align 8
  %283 = load i32, i32* @OP_Column, align 4
  %284 = load i32, i32* %9, align 4
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* %17, align 4
  %289 = add nsw i32 %287, %288
  %290 = load i32, i32* %21, align 4
  %291 = call i32 @sqlite3VdbeAddOp3(i32* %282, i32 %283, i32 %284, i32 %289, i32 %290)
  br label %296

292:                                              ; preds = %273
  %293 = load i32, i32* %16, align 4
  %294 = load i32, i32* %17, align 4
  %295 = add nsw i32 %293, %294
  store i32 %295, i32* %21, align 4
  br label %296

296:                                              ; preds = %292, %279
  %297 = load i32*, i32** %13, align 8
  %298 = load i32, i32* @OP_IfNot, align 4
  %299 = load i32, i32* %21, align 4
  %300 = call i32 @sqlite3VdbeAddOp3(i32* %297, i32 %298, i32 %299, i32 0, i32 1)
  store i32 %300, i32* %20, align 4
  %301 = load i32*, i32** %13, align 8
  %302 = call i32 @VdbeCoverage(i32* %301)
  %303 = load i32, i32* %9, align 4
  %304 = icmp sgt i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %296
  %306 = load i32*, i32** %7, align 8
  %307 = load i32, i32* %21, align 4
  %308 = call i32 @sqlite3ReleaseTempReg(i32* %306, i32 %307)
  br label %309

309:                                              ; preds = %305, %296
  br label %310

310:                                              ; preds = %309, %240
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 5
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @SQLITE_FUNC_NEEDCOLL, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %343

319:                                              ; preds = %310
  %320 = load i32, i32* %17, align 4
  %321 = icmp sgt i32 %320, 0
  %322 = zext i1 %321 to i32
  %323 = call i32 @assert(i32 %322)
  %324 = load i32*, i32** %7, align 8
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 6
  %327 = load %struct.TYPE_12__*, %struct.TYPE_12__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 0
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 1
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i64 0
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = call i32* @sqlite3ExprNNCollSeq(i32* %324, i32 %335)
  store i32* %336, i32** %22, align 8
  %337 = load i32*, i32** %13, align 8
  %338 = load i32, i32* @OP_CollSeq, align 4
  %339 = load i32*, i32** %22, align 8
  %340 = bitcast i32* %339 to i8*
  %341 = load i32, i32* @P4_COLLSEQ, align 4
  %342 = call i32 @sqlite3VdbeAddOp4(i32* %337, i32 %338, i32 0, i32 0, i32 0, i8* %340, i32 %341)
  br label %343

343:                                              ; preds = %319, %310
  %344 = load i32*, i32** %13, align 8
  %345 = load i32, i32* %10, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %343
  %348 = load i32, i32* @OP_AggInverse, align 4
  br label %351

349:                                              ; preds = %343
  %350 = load i32, i32* @OP_AggStep, align 4
  br label %351

351:                                              ; preds = %349, %347
  %352 = phi i32 [ %348, %347 ], [ %350, %349 ]
  %353 = load i32, i32* %10, align 4
  %354 = load i32, i32* %16, align 4
  %355 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i32 0, i32 4
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @sqlite3VdbeAddOp3(i32* %344, i32 %352, i32 %353, i32 %354, i32 %357)
  %359 = load i32*, i32** %13, align 8
  %360 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 5
  %362 = load %struct.TYPE_14__*, %struct.TYPE_14__** %361, align 8
  %363 = load i32, i32* @P4_FUNCDEF, align 4
  %364 = call i32 @sqlite3VdbeAppendP4(i32* %359, %struct.TYPE_14__* %362, i32 %363)
  %365 = load i32*, i32** %13, align 8
  %366 = load i32, i32* %17, align 4
  %367 = call i32 @sqlite3VdbeChangeP5(i32* %365, i32 %366)
  %368 = load i32, i32* %20, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %374

370:                                              ; preds = %351
  %371 = load i32*, i32** %13, align 8
  %372 = load i32, i32* %20, align 4
  %373 = call i32 @sqlite3VdbeJumpHere(i32* %371, i32 %372)
  br label %374

374:                                              ; preds = %370, %351
  br label %375

375:                                              ; preds = %374, %239
  br label %376

376:                                              ; preds = %375, %210
  br label %377

377:                                              ; preds = %376, %176
  br label %378

378:                                              ; preds = %377
  %379 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i32 0, i32 8
  %381 = load %struct.TYPE_13__*, %struct.TYPE_13__** %380, align 8
  store %struct.TYPE_13__* %381, %struct.TYPE_13__** %14, align 8
  br label %26

382:                                              ; preds = %26
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(i32*) #1

declare dso_local i32 @windowArgCount(%struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverageNeverTaken(i32*) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3GetTempReg(i32*) #1

declare dso_local i32 @sqlite3ReleaseTempReg(i32*, i32) #1

declare dso_local i32* @sqlite3ExprNNCollSeq(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeAppendP4(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
