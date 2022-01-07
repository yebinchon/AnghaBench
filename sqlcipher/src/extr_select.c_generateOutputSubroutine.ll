; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_select.c_generateOutputSubroutine.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_select.c_generateOutputSubroutine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__*, i32* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i8* }

@OP_IfNot = common dso_local global i32 0, align 4
@OP_Compare = common dso_local global i32 0, align 4
@P4_KEYINFO = common dso_local global i32 0, align 4
@OP_Jump = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@OP_Integer = common dso_local global i32 0, align 4
@SRT_Exists = common dso_local global i32 0, align 4
@SRT_Table = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_NewRowid = common dso_local global i32 0, align 4
@OP_Insert = common dso_local global i32 0, align 4
@OPFLAG_APPEND = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OP_Yield = common dso_local global i32 0, align 4
@SRT_Output = common dso_local global i32 0, align 4
@OP_ResultRow = common dso_local global i32 0, align 4
@OP_DecrJumpZero = common dso_local global i32 0, align 4
@OP_Return = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32, i32*, i32)* @generateOutputSubroutine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generateOutputSubroutine(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_15__* %2, %struct.TYPE_15__* %3, i32 %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %18, align 8
  %29 = load i32*, i32** %18, align 8
  %30 = call i32 @sqlite3VdbeCurrentAddr(i32* %29)
  store i32 %30, i32* %20, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %32 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_17__* %31)
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %86

35:                                               ; preds = %8
  %36 = load i32*, i32** %18, align 8
  %37 = load i32, i32* @OP_IfNot, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @sqlite3VdbeAddOp1(i32* %36, i32 %37, i32 %38)
  store i32 %39, i32* %21, align 4
  %40 = load i32*, i32** %18, align 8
  %41 = call i32 @VdbeCoverage(i32* %40)
  %42 = load i32*, i32** %18, align 8
  %43 = load i32, i32* @OP_Compare, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, 1
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %16, align 8
  %53 = call i64 @sqlite3KeyInfoRef(i32* %52)
  %54 = inttoptr i64 %53 to i8*
  %55 = load i32, i32* @P4_KEYINFO, align 4
  %56 = call i32 @sqlite3VdbeAddOp4(i32* %42, i32 %43, i32 %46, i32 %48, i32 %51, i8* %54, i32 %55)
  store i32 %56, i32* %22, align 4
  %57 = load i32*, i32** %18, align 8
  %58 = load i32, i32* @OP_Jump, align 4
  %59 = load i32, i32* %22, align 4
  %60 = add nsw i32 %59, 2
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %22, align 4
  %63 = add nsw i32 %62, 2
  %64 = call i32 @sqlite3VdbeAddOp3(i32* %57, i32 %58, i32 %60, i32 %61, i32 %63)
  %65 = load i32*, i32** %18, align 8
  %66 = call i32 @VdbeCoverage(i32* %65)
  %67 = load i32*, i32** %18, align 8
  %68 = load i32, i32* %21, align 4
  %69 = call i32 @sqlite3VdbeJumpHere(i32* %67, i32 %68)
  %70 = load i32*, i32** %18, align 8
  %71 = load i32, i32* @OP_Copy, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @sqlite3VdbeAddOp3(i32* %70, i32 %71, i32 %74, i32 %76, i32 %80)
  %82 = load i32*, i32** %18, align 8
  %83 = load i32, i32* @OP_Integer, align 4
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @sqlite3VdbeAddOp2(i32* %82, i32 %83, i32 1, i32 %84)
  br label %86

86:                                               ; preds = %35, %8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 0, i32* %9, align 4
  br label %303

94:                                               ; preds = %86
  %95 = load i32*, i32** %18, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %19, align 4
  %100 = call i32 @codeOffset(i32* %95, i32 %98, i32 %99)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SRT_Exists, align 4
  %105 = icmp ne i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @SRT_Table, align 4
  %112 = icmp ne i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  switch i32 %117, label %262 [
    i32 130, label %118
    i32 128, label %157
    i32 129, label %198
    i32 131, label %226
  ]

118:                                              ; preds = %94
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %120 = call i32 @sqlite3GetTempReg(%struct.TYPE_17__* %119)
  store i32 %120, i32* %23, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %122 = call i32 @sqlite3GetTempReg(%struct.TYPE_17__* %121)
  store i32 %122, i32* %24, align 4
  %123 = load i32*, i32** %18, align 8
  %124 = load i32, i32* @OP_MakeRecord, align 4
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %23, align 4
  %132 = call i32 @sqlite3VdbeAddOp3(i32* %123, i32 %124, i32 %127, i32 %130, i32 %131)
  %133 = load i32*, i32** %18, align 8
  %134 = load i32, i32* @OP_NewRowid, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %24, align 4
  %139 = call i32 @sqlite3VdbeAddOp2(i32* %133, i32 %134, i32 %137, i32 %138)
  %140 = load i32*, i32** %18, align 8
  %141 = load i32, i32* @OP_Insert, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %23, align 4
  %146 = load i32, i32* %24, align 4
  %147 = call i32 @sqlite3VdbeAddOp3(i32* %140, i32 %141, i32 %144, i32 %145, i32 %146)
  %148 = load i32*, i32** %18, align 8
  %149 = load i32, i32* @OPFLAG_APPEND, align 4
  %150 = call i32 @sqlite3VdbeChangeP5(i32* %148, i32 %149)
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %152 = load i32, i32* %24, align 4
  %153 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_17__* %151, i32 %152)
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %155 = load i32, i32* %23, align 4
  %156 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_17__* %154, i32 %155)
  br label %279

157:                                              ; preds = %94
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp sgt i32 %160, 1
  %162 = zext i1 %161 to i32
  %163 = call i32 @testcase(i32 %162)
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %165 = call i32 @sqlite3GetTempReg(%struct.TYPE_17__* %164)
  store i32 %165, i32* %25, align 4
  %166 = load i32*, i32** %18, align 8
  %167 = load i32, i32* @OP_MakeRecord, align 4
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %25, align 4
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 4
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @sqlite3VdbeAddOp4(i32* %166, i32 %167, i32 %170, i32 %173, i32 %174, i8* %177, i32 %180)
  %182 = load i32*, i32** %18, align 8
  %183 = load i32, i32* @OP_IdxInsert, align 4
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %25, align 4
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @sqlite3VdbeAddOp4Int(i32* %182, i32 %183, i32 %186, i32 %187, i32 %190, i32 %193)
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %196 = load i32, i32* %25, align 4
  %197 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_17__* %195, i32 %196)
  br label %279

198:                                              ; preds = %94
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %208, label %203

203:                                              ; preds = %198
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp sgt i32 %206, 0
  br label %208

208:                                              ; preds = %203, %198
  %209 = phi i1 [ true, %198 ], [ %207, %203 ]
  %210 = zext i1 %209 to i32
  %211 = call i32 @assert(i32 %210)
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 1
  %216 = zext i1 %215 to i32
  %217 = call i32 @testcase(i32 %216)
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @sqlite3ExprCodeMove(%struct.TYPE_17__* %218, i32 %221, i32 %224, i32 1)
  br label %279

226:                                              ; preds = %94
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %226
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @sqlite3GetTempRange(%struct.TYPE_17__* %232, i32 %235)
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 8
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 1
  store i32 %241, i32* %243, align 4
  br label %244

244:                                              ; preds = %231, %226
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @sqlite3ExprCodeMove(%struct.TYPE_17__* %245, i32 %248, i32 %251, i32 %254)
  %256 = load i32*, i32** %18, align 8
  %257 = load i32, i32* @OP_Yield, align 4
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @sqlite3VdbeAddOp1(i32* %256, i32 %257, i32 %260)
  br label %279

262:                                              ; preds = %94
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @SRT_Output, align 4
  %267 = icmp eq i32 %265, %266
  %268 = zext i1 %267 to i32
  %269 = call i32 @assert(i32 %268)
  %270 = load i32*, i32** %18, align 8
  %271 = load i32, i32* @OP_ResultRow, align 4
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @sqlite3VdbeAddOp2(i32* %270, i32 %271, i32 %274, i32 %277)
  br label %279

279:                                              ; preds = %262, %244, %208, %157, %118
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %294

284:                                              ; preds = %279
  %285 = load i32*, i32** %18, align 8
  %286 = load i32, i32* @OP_DecrJumpZero, align 4
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %17, align 4
  %291 = call i32 @sqlite3VdbeAddOp2(i32* %285, i32 %286, i32 %289, i32 %290)
  %292 = load i32*, i32** %18, align 8
  %293 = call i32 @VdbeCoverage(i32* %292)
  br label %294

294:                                              ; preds = %284, %279
  %295 = load i32*, i32** %18, align 8
  %296 = load i32, i32* %19, align 4
  %297 = call i32 @sqlite3VdbeResolveLabel(i32* %295, i32 %296)
  %298 = load i32*, i32** %18, align 8
  %299 = load i32, i32* @OP_Return, align 4
  %300 = load i32, i32* %14, align 4
  %301 = call i32 @sqlite3VdbeAddOp1(i32* %298, i32 %299, i32 %300)
  %302 = load i32, i32* %20, align 4
  store i32 %302, i32* %9, align 4
  br label %303

303:                                              ; preds = %294, %93
  %304 = load i32, i32* %9, align 4
  ret i32 %304
}

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i64 @sqlite3KeyInfoRef(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @codeOffset(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ExprCodeMove(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
