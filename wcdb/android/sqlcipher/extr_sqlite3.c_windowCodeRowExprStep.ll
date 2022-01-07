; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_windowCodeRowExprStep.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_windowCodeRowExprStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64, i32, i64, i64 }

@TK_PRECEDING = common dso_local global i64 0, align 8
@TK_CURRENT = common dso_local global i64 0, align 8
@TK_FOLLOWING = common dso_local global i64 0, align 8
@TK_UNBOUNDED = common dso_local global i64 0, align 8
@OP_Goto = common dso_local global i32 0, align 4
@OP_Once = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Flush_partition subroutine\00", align 1
@OP_OpenDup = common dso_local global i32 0, align 4
@OP_Ge = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@OP_Subtract = common dso_local global i32 0, align 4
@OP_Le = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@OP_IfPos = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@OP_ResetSorter = common dso_local global i32 0, align 4
@OP_Return = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"end flush_partition subroutine\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_21__*, i32*, i32, i32)* @windowCodeRowExprStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windowCodeRowExprStep(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  store %struct.TYPE_20__* %30, %struct.TYPE_20__** %11, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %32 = call i32* @sqlite3GetVdbe(%struct.TYPE_22__* %31)
  store i32* %32, i32** %12, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  store i32 %35, i32* %18, align 4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  store i32 %39, i32* %19, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TK_PRECEDING, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %64, label %46

46:                                               ; preds = %5
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TK_CURRENT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TK_FOLLOWING, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TK_UNBOUNDED, align 8
  %63 = icmp eq i64 %61, %62
  br label %64

64:                                               ; preds = %58, %52, %46, %5
  %65 = phi i1 [ true, %52 ], [ true, %46 ], [ true, %5 ], [ %63, %58 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TK_FOLLOWING, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %91, label %73

73:                                               ; preds = %64
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TK_CURRENT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %91, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TK_UNBOUNDED, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @TK_PRECEDING, align 8
  %90 = icmp eq i64 %88, %89
  br label %91

91:                                               ; preds = %85, %79, %73, %64
  %92 = phi i1 [ true, %79 ], [ true, %73 ], [ true, %64 ], [ %90, %85 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  store i32 %98, i32* %13, align 4
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %100 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_22__* %99)
  store i32 %100, i32* %14, align 4
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %102 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_22__* %101)
  store i32 %102, i32* %15, align 4
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  store i32 %106, i32* %20, align 4
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  store i32 %110, i32* %21, align 4
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @windowPartitionCache(%struct.TYPE_22__* %111, %struct.TYPE_21__* %112, i32* %113, i32 %114, i32 %115, i32* %26)
  %117 = load i32*, i32** %12, align 8
  %118 = load i32, i32* @OP_Goto, align 4
  %119 = call i32 @sqlite3VdbeAddOp0(i32* %117, i32 %118)
  store i32 %119, i32* %22, align 4
  %120 = load i32*, i32** %12, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @sqlite3VdbeResolveLabel(i32* %120, i32 %121)
  %123 = load i32*, i32** %12, align 8
  %124 = load i32, i32* @OP_Once, align 4
  %125 = load i32*, i32** %12, align 8
  %126 = call i32 @sqlite3VdbeCurrentAddr(i32* %125)
  %127 = add nsw i32 %126, 3
  %128 = call i32 @sqlite3VdbeAddOp2(i32* %123, i32 %124, i32 0, i32 %127)
  %129 = load i32*, i32** %12, align 8
  %130 = call i32 @VdbeCoverage(i32* %129)
  %131 = load i32*, i32** %12, align 8
  %132 = call i32 @VdbeComment(i32* bitcast ([27 x i8]* @.str to i32*))
  %133 = load i32*, i32** %12, align 8
  %134 = load i32, i32* @OP_OpenDup, align 4
  %135 = load i32, i32* %18, align 4
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @sqlite3VdbeAddOp2(i32* %133, i32 %134, i32 %135, i32 %138)
  %140 = load i32*, i32** %12, align 8
  %141 = load i32, i32* @OP_OpenDup, align 4
  %142 = load i32, i32* %19, align 4
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @sqlite3VdbeAddOp2(i32* %140, i32 %141, i32 %142, i32 %145)
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %91
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %20, align 4
  %157 = call i32 @sqlite3ExprCode(%struct.TYPE_22__* %152, i64 %155, i32 %156)
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %159 = load i32, i32* %20, align 4
  %160 = call i32 @windowCheckIntValue(%struct.TYPE_22__* %158, i32 %159, i32 0)
  br label %161

161:                                              ; preds = %151, %91
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %161
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* %21, align 4
  %172 = call i32 @sqlite3ExprCode(%struct.TYPE_22__* %167, i64 %170, i32 %171)
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %174 = load i32, i32* %21, align 4
  %175 = call i32 @windowCheckIntValue(%struct.TYPE_22__* %173, i32 %174, i32 1)
  br label %176

176:                                              ; preds = %166, %161
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %222

181:                                              ; preds = %176
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @TK_FOLLOWING, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %222

187:                                              ; preds = %181
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @TK_FOLLOWING, align 8
  %198 = icmp eq i64 %196, %197
  %199 = zext i1 %198 to i32
  %200 = call i32 @assert(i32 %199)
  %201 = load i32*, i32** %12, align 8
  %202 = load i32, i32* @OP_Ge, align 4
  %203 = load i32, i32* %20, align 4
  %204 = load i32*, i32** %12, align 8
  %205 = call i32 @sqlite3VdbeCurrentAddr(i32* %204)
  %206 = add nsw i32 %205, 2
  %207 = load i32, i32* %21, align 4
  %208 = call i32 @sqlite3VdbeAddOp3(i32* %201, i32 %202, i32 %203, i32 %206, i32 %207)
  %209 = load i32*, i32** %12, align 8
  %210 = call i32 @VdbeCoverageNeverNull(i32* %209)
  %211 = load i32*, i32** %12, align 8
  %212 = load i32, i32* @OP_Copy, align 4
  %213 = load i32, i32* %26, align 4
  %214 = load i32, i32* %20, align 4
  %215 = call i32 @sqlite3VdbeAddOp2(i32* %211, i32 %212, i32 %213, i32 %214)
  %216 = load i32*, i32** %12, align 8
  %217 = load i32, i32* @OP_Subtract, align 4
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* %21, align 4
  %220 = load i32, i32* %21, align 4
  %221 = call i32 @sqlite3VdbeAddOp3(i32* %216, i32 %217, i32 %218, i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %187, %181, %176
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %267

227:                                              ; preds = %222
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @TK_PRECEDING, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %267

233:                                              ; preds = %227
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  %238 = zext i1 %237 to i32
  %239 = call i32 @assert(i32 %238)
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @TK_PRECEDING, align 8
  %244 = icmp eq i64 %242, %243
  %245 = zext i1 %244 to i32
  %246 = call i32 @assert(i32 %245)
  %247 = load i32*, i32** %12, align 8
  %248 = load i32, i32* @OP_Le, align 4
  %249 = load i32, i32* %20, align 4
  %250 = load i32*, i32** %12, align 8
  %251 = call i32 @sqlite3VdbeCurrentAddr(i32* %250)
  %252 = add nsw i32 %251, 3
  %253 = load i32, i32* %21, align 4
  %254 = call i32 @sqlite3VdbeAddOp3(i32* %247, i32 %248, i32 %249, i32 %252, i32 %253)
  %255 = load i32*, i32** %12, align 8
  %256 = call i32 @VdbeCoverageNeverNull(i32* %255)
  %257 = load i32*, i32** %12, align 8
  %258 = load i32, i32* @OP_Copy, align 4
  %259 = load i32, i32* %26, align 4
  %260 = load i32, i32* %20, align 4
  %261 = call i32 @sqlite3VdbeAddOp2(i32* %257, i32 %258, i32 %259, i32 %260)
  %262 = load i32*, i32** %12, align 8
  %263 = load i32, i32* @OP_Copy, align 4
  %264 = load i32, i32* %26, align 4
  %265 = load i32, i32* %21, align 4
  %266 = call i32 @sqlite3VdbeAddOp2(i32* %262, i32 %263, i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %233, %227, %222
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %270 = call i32 @windowInitAccum(%struct.TYPE_22__* %268, %struct.TYPE_20__* %269)
  store i32 %270, i32* %16, align 4
  %271 = load i32*, i32** %12, align 8
  %272 = load i32, i32* @OP_Rewind, align 4
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* %15, align 4
  %277 = call i32 @sqlite3VdbeAddOp2(i32* %271, i32 %272, i32 %275, i32 %276)
  %278 = load i32*, i32** %12, align 8
  %279 = call i32 @VdbeCoverage(i32* %278)
  %280 = load i32*, i32** %12, align 8
  %281 = load i32, i32* @OP_Rewind, align 4
  %282 = load i32, i32* %18, align 4
  %283 = load i32, i32* %15, align 4
  %284 = call i32 @sqlite3VdbeAddOp2(i32* %280, i32 %281, i32 %282, i32 %283)
  %285 = load i32*, i32** %12, align 8
  %286 = call i32 @VdbeCoverageNeverTaken(i32* %285)
  %287 = load i32*, i32** %12, align 8
  %288 = call i32 @sqlite3VdbeChangeP5(i32* %287, i32 1)
  %289 = load i32*, i32** %12, align 8
  %290 = load i32, i32* @OP_Rewind, align 4
  %291 = load i32, i32* %19, align 4
  %292 = load i32, i32* %15, align 4
  %293 = call i32 @sqlite3VdbeAddOp2(i32* %289, i32 %290, i32 %291, i32 %292)
  %294 = load i32*, i32** %12, align 8
  %295 = call i32 @VdbeCoverageNeverTaken(i32* %294)
  %296 = load i32*, i32** %12, align 8
  %297 = call i32 @sqlite3VdbeChangeP5(i32* %296, i32 1)
  %298 = load i32*, i32** %12, align 8
  %299 = call i32 @sqlite3VdbeCurrentAddr(i32* %298)
  store i32 %299, i32* %23, align 4
  %300 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %301 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @TK_PRECEDING, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %312

305:                                              ; preds = %267
  %306 = load i32*, i32** %12, align 8
  %307 = load i32, i32* @OP_IfPos, align 4
  %308 = load i32, i32* %21, align 4
  %309 = call i32 @sqlite3VdbeAddOp3(i32* %306, i32 %307, i32 %308, i32 0, i32 1)
  store i32 %309, i32* %24, align 4
  %310 = load i32*, i32** %12, align 8
  %311 = call i32 @VdbeCoverage(i32* %310)
  br label %312

312:                                              ; preds = %305, %267
  %313 = load i32*, i32** %12, align 8
  %314 = load i32, i32* @OP_Next, align 4
  %315 = load i32, i32* %19, align 4
  %316 = load i32*, i32** %12, align 8
  %317 = call i32 @sqlite3VdbeCurrentAddr(i32* %316)
  %318 = add nsw i32 %317, 2
  %319 = call i32 @sqlite3VdbeAddOp2(i32* %313, i32 %314, i32 %315, i32 %318)
  %320 = load i32*, i32** %12, align 8
  %321 = call i32 @VdbeCoverage(i32* %320)
  %322 = load i32*, i32** %12, align 8
  %323 = load i32, i32* @OP_Goto, align 4
  %324 = call i32 @sqlite3VdbeAddOp0(i32* %322, i32 %323)
  store i32 %324, i32* %17, align 4
  %325 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %327 = load i32, i32* %19, align 4
  %328 = load i32, i32* %16, align 4
  %329 = load i32, i32* %26, align 4
  %330 = call i32 @windowAggStep(%struct.TYPE_22__* %325, %struct.TYPE_20__* %326, i32 %327, i32 0, i32 %328, i32 %329)
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @TK_UNBOUNDED, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %346

336:                                              ; preds = %312
  %337 = load i32*, i32** %12, align 8
  %338 = load i32, i32* @OP_Goto, align 4
  %339 = load i32, i32* %23, align 4
  %340 = call i32 @sqlite3VdbeAddOp2(i32* %337, i32 %338, i32 0, i32 %339)
  %341 = load i32*, i32** %12, align 8
  %342 = load i32, i32* %17, align 4
  %343 = call i32 @sqlite3VdbeJumpHere(i32* %341, i32 %342)
  %344 = load i32*, i32** %12, align 8
  %345 = call i32 @sqlite3VdbeCurrentAddr(i32* %344)
  store i32 %345, i32* %23, align 4
  br label %360

346:                                              ; preds = %312
  %347 = load i32*, i32** %12, align 8
  %348 = load i32, i32* %17, align 4
  %349 = call i32 @sqlite3VdbeJumpHere(i32* %347, i32 %348)
  %350 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %351 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @TK_PRECEDING, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %359

355:                                              ; preds = %346
  %356 = load i32*, i32** %12, align 8
  %357 = load i32, i32* %24, align 4
  %358 = call i32 @sqlite3VdbeJumpHere(i32* %356, i32 %357)
  br label %359

359:                                              ; preds = %355, %346
  br label %360

360:                                              ; preds = %359, %336
  %361 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %362 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @TK_FOLLOWING, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %366, label %373

366:                                              ; preds = %360
  %367 = load i32*, i32** %12, align 8
  %368 = load i32, i32* @OP_IfPos, align 4
  %369 = load i32, i32* %21, align 4
  %370 = call i32 @sqlite3VdbeAddOp3(i32* %367, i32 %368, i32 %369, i32 0, i32 1)
  store i32 %370, i32* %24, align 4
  %371 = load i32*, i32** %12, align 8
  %372 = call i32 @VdbeCoverage(i32* %371)
  br label %373

373:                                              ; preds = %366, %360
  %374 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %375 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @TK_FOLLOWING, align 8
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %379, label %386

379:                                              ; preds = %373
  %380 = load i32*, i32** %12, align 8
  %381 = load i32, i32* @OP_IfPos, align 4
  %382 = load i32, i32* %20, align 4
  %383 = call i32 @sqlite3VdbeAddOp3(i32* %380, i32 %381, i32 %382, i32 0, i32 1)
  store i32 %383, i32* %25, align 4
  %384 = load i32*, i32** %12, align 8
  %385 = call i32 @VdbeCoverage(i32* %384)
  br label %386

386:                                              ; preds = %379, %373
  %387 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %388 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %389 = call i32 @windowAggFinal(%struct.TYPE_22__* %387, %struct.TYPE_20__* %388, i32 0)
  %390 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %391 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %392 = load i32, i32* %9, align 4
  %393 = load i32, i32* %10, align 4
  %394 = call i32 @windowReturnOneRow(%struct.TYPE_22__* %390, %struct.TYPE_20__* %391, i32 %392, i32 %393)
  %395 = load i32*, i32** %12, align 8
  %396 = load i32, i32* @OP_Next, align 4
  %397 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %398 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  %400 = load i32*, i32** %12, align 8
  %401 = call i32 @sqlite3VdbeCurrentAddr(i32* %400)
  %402 = add nsw i32 %401, 2
  %403 = call i32 @sqlite3VdbeAddOp2(i32* %395, i32 %396, i32 %399, i32 %402)
  %404 = load i32*, i32** %12, align 8
  %405 = call i32 @VdbeCoverage(i32* %404)
  %406 = load i32*, i32** %12, align 8
  %407 = load i32, i32* @OP_Goto, align 4
  %408 = load i32, i32* %15, align 4
  %409 = call i32 @sqlite3VdbeAddOp2(i32* %406, i32 %407, i32 0, i32 %408)
  %410 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %411 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = load i64, i64* @TK_FOLLOWING, align 8
  %414 = icmp eq i64 %412, %413
  br i1 %414, label %415, label %419

415:                                              ; preds = %386
  %416 = load i32*, i32** %12, align 8
  %417 = load i32, i32* %25, align 4
  %418 = call i32 @sqlite3VdbeJumpHere(i32* %416, i32 %417)
  br label %419

419:                                              ; preds = %415, %386
  %420 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %421 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = load i64, i64* @TK_CURRENT, align 8
  %424 = icmp eq i64 %422, %423
  br i1 %424, label %437, label %425

425:                                              ; preds = %419
  %426 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %427 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = load i64, i64* @TK_PRECEDING, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %437, label %431

431:                                              ; preds = %425
  %432 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %433 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %432, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = load i64, i64* @TK_FOLLOWING, align 8
  %436 = icmp eq i64 %434, %435
  br i1 %436, label %437, label %493

437:                                              ; preds = %431, %425, %419
  %438 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %439 = call i32 @sqlite3VdbeMakeLabel(%struct.TYPE_22__* %438)
  store i32 %439, i32* %27, align 4
  %440 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %441 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = load i64, i64* @TK_PRECEDING, align 8
  %444 = icmp eq i64 %442, %443
  br i1 %444, label %445, label %453

445:                                              ; preds = %437
  %446 = load i32*, i32** %12, align 8
  %447 = load i32, i32* @OP_IfPos, align 4
  %448 = load i32, i32* %20, align 4
  %449 = load i32, i32* %27, align 4
  %450 = call i32 @sqlite3VdbeAddOp3(i32* %446, i32 %447, i32 %448, i32 %449, i32 1)
  %451 = load i32*, i32** %12, align 8
  %452 = call i32 @VdbeCoverage(i32* %451)
  br label %453

453:                                              ; preds = %445, %437
  %454 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %455 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = load i64, i64* @TK_FOLLOWING, align 8
  %458 = icmp eq i64 %456, %457
  br i1 %458, label %459, label %473

459:                                              ; preds = %453
  %460 = load i32*, i32** %12, align 8
  %461 = load i32, i32* @OP_Next, align 4
  %462 = load i32, i32* %18, align 4
  %463 = load i32*, i32** %12, align 8
  %464 = call i32 @sqlite3VdbeCurrentAddr(i32* %463)
  %465 = add nsw i32 %464, 2
  %466 = call i32 @sqlite3VdbeAddOp2(i32* %460, i32 %461, i32 %462, i32 %465)
  %467 = load i32*, i32** %12, align 8
  %468 = call i32 @VdbeCoverage(i32* %467)
  %469 = load i32*, i32** %12, align 8
  %470 = load i32, i32* @OP_Goto, align 4
  %471 = load i32, i32* %27, align 4
  %472 = call i32 @sqlite3VdbeAddOp2(i32* %469, i32 %470, i32 0, i32 %471)
  br label %483

473:                                              ; preds = %453
  %474 = load i32*, i32** %12, align 8
  %475 = load i32, i32* @OP_Next, align 4
  %476 = load i32, i32* %18, align 4
  %477 = load i32*, i32** %12, align 8
  %478 = call i32 @sqlite3VdbeCurrentAddr(i32* %477)
  %479 = add nsw i32 %478, 1
  %480 = call i32 @sqlite3VdbeAddOp2(i32* %474, i32 %475, i32 %476, i32 %479)
  %481 = load i32*, i32** %12, align 8
  %482 = call i32 @VdbeCoverageAlwaysTaken(i32* %481)
  br label %483

483:                                              ; preds = %473, %459
  %484 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %485 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %486 = load i32, i32* %18, align 4
  %487 = load i32, i32* %16, align 4
  %488 = load i32, i32* %26, align 4
  %489 = call i32 @windowAggStep(%struct.TYPE_22__* %484, %struct.TYPE_20__* %485, i32 %486, i32 1, i32 %487, i32 %488)
  %490 = load i32*, i32** %12, align 8
  %491 = load i32, i32* %27, align 4
  %492 = call i32 @sqlite3VdbeResolveLabel(i32* %490, i32 %491)
  br label %493

493:                                              ; preds = %483, %431
  %494 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %495 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %494, i32 0, i32 1
  %496 = load i64, i64* %495, align 8
  %497 = load i64, i64* @TK_FOLLOWING, align 8
  %498 = icmp eq i64 %496, %497
  br i1 %498, label %499, label %503

499:                                              ; preds = %493
  %500 = load i32*, i32** %12, align 8
  %501 = load i32, i32* %24, align 4
  %502 = call i32 @sqlite3VdbeJumpHere(i32* %500, i32 %501)
  br label %503

503:                                              ; preds = %499, %493
  %504 = load i32*, i32** %12, align 8
  %505 = load i32, i32* @OP_Goto, align 4
  %506 = load i32, i32* %23, align 4
  %507 = call i32 @sqlite3VdbeAddOp2(i32* %504, i32 %505, i32 0, i32 %506)
  %508 = load i32*, i32** %12, align 8
  %509 = load i32, i32* %15, align 4
  %510 = call i32 @sqlite3VdbeResolveLabel(i32* %508, i32 %509)
  %511 = load i32*, i32** %12, align 8
  %512 = load i32, i32* @OP_ResetSorter, align 4
  %513 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %514 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %513, i32 0, i32 2
  %515 = load i32, i32* %514, align 8
  %516 = call i32 @sqlite3VdbeAddOp1(i32* %511, i32 %512, i32 %515)
  %517 = load i32*, i32** %12, align 8
  %518 = load i32, i32* @OP_Return, align 4
  %519 = load i32, i32* %13, align 4
  %520 = call i32 @sqlite3VdbeAddOp1(i32* %517, i32 %518, i32 %519)
  %521 = load i32*, i32** %12, align 8
  %522 = call i32 @VdbeComment(i32* bitcast ([31 x i8]* @.str.1 to i32*))
  %523 = load i32*, i32** %12, align 8
  %524 = load i32, i32* %22, align 4
  %525 = call i32 @sqlite3VdbeJumpHere(i32* %523, i32 %524)
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_22__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeMakeLabel(%struct.TYPE_22__*) #1

declare dso_local i32 @windowPartitionCache(%struct.TYPE_22__*, %struct.TYPE_21__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeResolveLabel(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3ExprCode(%struct.TYPE_22__*, i64, i32) #1

declare dso_local i32 @windowCheckIntValue(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VdbeCoverageNeverNull(i32*) #1

declare dso_local i32 @windowInitAccum(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @VdbeCoverageNeverTaken(i32*) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @windowAggStep(%struct.TYPE_22__*, %struct.TYPE_20__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @windowAggFinal(%struct.TYPE_22__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @windowReturnOneRow(%struct.TYPE_22__*, %struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @VdbeCoverageAlwaysTaken(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
