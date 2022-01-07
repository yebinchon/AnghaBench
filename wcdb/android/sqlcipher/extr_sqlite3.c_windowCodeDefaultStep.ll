; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_windowCodeDefaultStep.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_windowCodeDefaultStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_23__*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }

@TK_RANGE = common dso_local global i64 0, align 8
@TK_UNBOUNDED = common dso_local global i64 0, align 8
@TK_CURRENT = common dso_local global i64 0, align 8
@OP_Column = common dso_local global i32 0, align 4
@OP_Compare = common dso_local global i32 0, align 4
@P4_KEYINFO = common dso_local global i32 0, align 4
@OP_Jump = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@OP_Gosub = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@OP_ResetSorter = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OP_Blob = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OP_NewRowid = common dso_local global i32 0, align 4
@OP_Insert = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_21__*, i32*, i32, i32)* @windowCodeDefaultStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windowCodeDefaultStep(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, i32* %2, i32 %3, i32 %4) #0 {
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
  %20 = alloca %struct.TYPE_23__*, align 8
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  store %struct.TYPE_20__* %33, %struct.TYPE_20__** %11, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %35 = call i32* @sqlite3GetVdbe(%struct.TYPE_22__* %34)
  store i32* %35, i32** %12, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %14, align 4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %15, align 4
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %18, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 7
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %64, align 8
  store %struct.TYPE_23__* %65, %struct.TYPE_23__** %20, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 6
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %67, align 8
  store %struct.TYPE_23__* %68, %struct.TYPE_23__** %21, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TK_RANGE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %88, label %74

74:                                               ; preds = %5
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TK_UNBOUNDED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TK_CURRENT, align 8
  %85 = icmp eq i64 %83, %84
  br label %86

86:                                               ; preds = %80, %74
  %87 = phi i1 [ false, %74 ], [ %85, %80 ]
  br label %88

88:                                               ; preds = %86, %5
  %89 = phi i1 [ true, %5 ], [ %87, %86 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @TK_UNBOUNDED, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TK_CURRENT, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %145, label %103

103:                                              ; preds = %97, %88
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @TK_UNBOUNDED, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @TK_UNBOUNDED, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %145, label %115

115:                                              ; preds = %109, %103
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @TK_CURRENT, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @TK_CURRENT, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %145, label %127

127:                                              ; preds = %121, %115
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @TK_CURRENT, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %127
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @TK_UNBOUNDED, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %141 = icmp ne %struct.TYPE_23__* %140, null
  %142 = xor i1 %141, true
  br label %143

143:                                              ; preds = %139, %133, %127
  %144 = phi i1 [ false, %133 ], [ false, %127 ], [ %142, %139 ]
  br label %145

145:                                              ; preds = %143, %121, %109, %97
  %146 = phi i1 [ true, %121 ], [ true, %109 ], [ true, %97 ], [ %144, %143 ]
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @TK_UNBOUNDED, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %145
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %21, align 8
  br label %155

155:                                              ; preds = %154, %145
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 2
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 4
  store i32 0, i32* %13, align 4
  br label %162

162:                                              ; preds = %175, %155
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* %15, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %178

166:                                              ; preds = %162
  %167 = load i32*, i32** %12, align 8
  %168 = load i32, i32* @OP_Column, align 4
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %171, %172
  %174 = call i32 @sqlite3VdbeAddOp3(i32* %167, i32 %168, i32 %169, i32 %170, i32 %173)
  br label %175

175:                                              ; preds = %166
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  br label %162

178:                                              ; preds = %162
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %180 = icmp ne %struct.TYPE_23__* %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %183 = icmp ne %struct.TYPE_23__* %182, null
  br i1 %183, label %184, label %372

184:                                              ; preds = %181, %178
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %186 = icmp ne %struct.TYPE_23__* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  br label %192

191:                                              ; preds = %184
  br label %192

192:                                              ; preds = %191, %187
  %193 = phi i32 [ %190, %187 ], [ 0, %191 ]
  store i32 %193, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %195 = icmp ne %struct.TYPE_23__* %194, null
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  br label %201

200:                                              ; preds = %192
  br label %201

201:                                              ; preds = %200, %196
  %202 = phi i32 [ %199, %196 ], [ 0, %200 ]
  store i32 %202, i32* %25, align 4
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %204 = icmp ne %struct.TYPE_23__* %203, null
  br i1 %204, label %205, label %246

205:                                              ; preds = %201
  %206 = load i32, i32* %16, align 4
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = add nsw i32 %206, %209
  store i32 %210, i32* %26, align 4
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %213 = call i32* @sqlite3KeyInfoFromExprList(%struct.TYPE_22__* %211, %struct.TYPE_23__* %212, i32 0, i32 0)
  store i32* %213, i32** %27, align 8
  %214 = load i32*, i32** %12, align 8
  %215 = load i32, i32* @OP_Compare, align 4
  %216 = load i32, i32* %26, align 4
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %22, align 4
  %221 = call i32 @sqlite3VdbeAddOp3(i32* %214, i32 %215, i32 %216, i32 %219, i32 %220)
  store i32 %221, i32* %19, align 4
  %222 = load i32*, i32** %12, align 8
  %223 = load i32*, i32** %27, align 8
  %224 = bitcast i32* %223 to i8*
  %225 = load i32, i32* @P4_KEYINFO, align 4
  %226 = call i32 @sqlite3VdbeAppendP4(i32* %222, i8* %224, i32 %225)
  %227 = load i32*, i32** %12, align 8
  %228 = load i32, i32* @OP_Jump, align 4
  %229 = load i32, i32* %19, align 4
  %230 = add nsw i32 %229, 2
  %231 = load i32, i32* %19, align 4
  %232 = add nsw i32 %231, 2
  %233 = call i32 @sqlite3VdbeAddOp3(i32* %227, i32 %228, i32 %230, i32 0, i32 %232)
  store i32 %233, i32* %24, align 4
  %234 = load i32*, i32** %12, align 8
  %235 = call i32 @VdbeCoverageEqNe(i32* %234)
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %238 = call i32 @windowAggFinal(%struct.TYPE_22__* %236, %struct.TYPE_20__* %237, i32 1)
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %240 = icmp ne %struct.TYPE_23__* %239, null
  br i1 %240, label %241, label %245

241:                                              ; preds = %205
  %242 = load i32*, i32** %12, align 8
  %243 = load i32, i32* @OP_Goto, align 4
  %244 = call i32 @sqlite3VdbeAddOp0(i32* %242, i32 %243)
  store i32 %244, i32* %23, align 4
  br label %245

245:                                              ; preds = %241, %205
  br label %246

246:                                              ; preds = %245, %201
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %248 = icmp ne %struct.TYPE_23__* %247, null
  br i1 %248, label %249, label %316

249:                                              ; preds = %246
  %250 = load i32, i32* %16, align 4
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = add nsw i32 %250, %253
  %255 = load i32, i32* %22, align 4
  %256 = add nsw i32 %254, %255
  store i32 %256, i32* %28, align 4
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %22, align 4
  %261 = add nsw i32 %259, %260
  store i32 %261, i32* %29, align 4
  %262 = load i32, i32* %24, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %249
  %265 = load i32*, i32** %12, align 8
  %266 = load i32, i32* %24, align 4
  %267 = call i32 @sqlite3VdbeJumpHere(i32* %265, i32 %266)
  br label %268

268:                                              ; preds = %264, %249
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @TK_RANGE, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %298

274:                                              ; preds = %268
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %277 = call i32* @sqlite3KeyInfoFromExprList(%struct.TYPE_22__* %275, %struct.TYPE_23__* %276, i32 0, i32 0)
  store i32* %277, i32** %30, align 8
  %278 = load i32*, i32** %12, align 8
  %279 = load i32, i32* @OP_Compare, align 4
  %280 = load i32, i32* %28, align 4
  %281 = load i32, i32* %29, align 4
  %282 = load i32, i32* %25, align 4
  %283 = call i32 @sqlite3VdbeAddOp3(i32* %278, i32 %279, i32 %280, i32 %281, i32 %282)
  store i32 %283, i32* %19, align 4
  %284 = load i32*, i32** %12, align 8
  %285 = load i32*, i32** %30, align 8
  %286 = bitcast i32* %285 to i8*
  %287 = load i32, i32* @P4_KEYINFO, align 4
  %288 = call i32 @sqlite3VdbeAppendP4(i32* %284, i8* %286, i32 %287)
  %289 = load i32*, i32** %12, align 8
  %290 = load i32, i32* @OP_Jump, align 4
  %291 = load i32, i32* %19, align 4
  %292 = add nsw i32 %291, 2
  %293 = load i32, i32* %19, align 4
  %294 = add nsw i32 %293, 2
  %295 = call i32 @sqlite3VdbeAddOp3(i32* %289, i32 %290, i32 %292, i32 0, i32 %294)
  store i32 %295, i32* %24, align 4
  %296 = load i32*, i32** %12, align 8
  %297 = call i32 @VdbeCoverage(i32* %296)
  br label %299

298:                                              ; preds = %268
  store i32 0, i32* %24, align 4
  br label %299

299:                                              ; preds = %298, %274
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @TK_CURRENT, align 8
  %306 = icmp eq i64 %304, %305
  %307 = zext i1 %306 to i32
  %308 = call i32 @windowAggFinal(%struct.TYPE_22__* %300, %struct.TYPE_20__* %301, i32 %307)
  %309 = load i32, i32* %23, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %299
  %312 = load i32*, i32** %12, align 8
  %313 = load i32, i32* %23, align 4
  %314 = call i32 @sqlite3VdbeJumpHere(i32* %312, i32 %313)
  br label %315

315:                                              ; preds = %311, %299
  br label %316

316:                                              ; preds = %315, %246
  %317 = load i32*, i32** %12, align 8
  %318 = load i32, i32* @OP_Rewind, align 4
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %319, i32 0, i32 5
  %321 = load i32, i32* %320, align 8
  %322 = load i32*, i32** %12, align 8
  %323 = call i32 @sqlite3VdbeCurrentAddr(i32* %322)
  %324 = add nsw i32 %323, 3
  %325 = call i32 @sqlite3VdbeAddOp2(i32* %317, i32 %318, i32 %321, i32 %324)
  %326 = load i32*, i32** %12, align 8
  %327 = call i32 @VdbeCoverage(i32* %326)
  %328 = load i32*, i32** %12, align 8
  %329 = load i32, i32* @OP_Gosub, align 4
  %330 = load i32, i32* %9, align 4
  %331 = load i32, i32* %10, align 4
  %332 = call i32 @sqlite3VdbeAddOp2(i32* %328, i32 %329, i32 %330, i32 %331)
  %333 = load i32*, i32** %12, align 8
  %334 = load i32, i32* @OP_Next, align 4
  %335 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 5
  %337 = load i32, i32* %336, align 8
  %338 = load i32*, i32** %12, align 8
  %339 = call i32 @sqlite3VdbeCurrentAddr(i32* %338)
  %340 = sub nsw i32 %339, 1
  %341 = call i32 @sqlite3VdbeAddOp2(i32* %333, i32 %334, i32 %337, i32 %340)
  %342 = load i32*, i32** %12, align 8
  %343 = call i32 @VdbeCoverage(i32* %342)
  %344 = load i32*, i32** %12, align 8
  %345 = load i32, i32* @OP_ResetSorter, align 4
  %346 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %347 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %346, i32 0, i32 5
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @sqlite3VdbeAddOp1(i32* %344, i32 %345, i32 %348)
  %350 = load i32*, i32** %12, align 8
  %351 = load i32, i32* @OP_Copy, align 4
  %352 = load i32, i32* %16, align 4
  %353 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %354 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 8
  %356 = add nsw i32 %352, %355
  %357 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %357, i32 0, i32 4
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* %22, align 4
  %361 = load i32, i32* %25, align 4
  %362 = add nsw i32 %360, %361
  %363 = sub nsw i32 %362, 1
  %364 = call i32 @sqlite3VdbeAddOp3(i32* %350, i32 %351, i32 %356, i32 %359, i32 %363)
  %365 = load i32, i32* %24, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %316
  %368 = load i32*, i32** %12, align 8
  %369 = load i32, i32* %24, align 4
  %370 = call i32 @sqlite3VdbeJumpHere(i32* %368, i32 %369)
  br label %371

371:                                              ; preds = %367, %316
  br label %372

372:                                              ; preds = %371, %181
  %373 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %374 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %375 = load i32, i32* %16, align 4
  %376 = call i32 @windowAggStep(%struct.TYPE_22__* %373, %struct.TYPE_20__* %374, i32 -1, i32 0, i32 %375, i32 0)
  %377 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %378 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 8
  %380 = icmp sgt i32 %379, 0
  br i1 %380, label %381, label %390

381:                                              ; preds = %372
  %382 = load i32*, i32** %12, align 8
  %383 = load i32, i32* @OP_MakeRecord, align 4
  %384 = load i32, i32* %16, align 4
  %385 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %386 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 8
  %388 = load i32, i32* %17, align 4
  %389 = call i32 @sqlite3VdbeAddOp3(i32* %382, i32 %383, i32 %384, i32 %387, i32 %388)
  br label %397

390:                                              ; preds = %372
  %391 = load i32*, i32** %12, align 8
  %392 = load i32, i32* @OP_Blob, align 4
  %393 = load i32, i32* %17, align 4
  %394 = call i32 @sqlite3VdbeAddOp2(i32* %391, i32 %392, i32 0, i32 %393)
  %395 = load i32*, i32** %12, align 8
  %396 = call i32 @sqlite3VdbeAppendP4(i32* %395, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %397

397:                                              ; preds = %390, %381
  %398 = load i32*, i32** %12, align 8
  %399 = load i32, i32* @OP_NewRowid, align 4
  %400 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 5
  %402 = load i32, i32* %401, align 8
  %403 = load i32, i32* %18, align 4
  %404 = call i32 @sqlite3VdbeAddOp2(i32* %398, i32 %399, i32 %402, i32 %403)
  %405 = load i32*, i32** %12, align 8
  %406 = load i32, i32* @OP_Insert, align 4
  %407 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %408 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %407, i32 0, i32 5
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* %17, align 4
  %411 = load i32, i32* %18, align 4
  %412 = call i32 @sqlite3VdbeAddOp3(i32* %405, i32 %406, i32 %409, i32 %410, i32 %411)
  %413 = load i32*, i32** %8, align 8
  %414 = call i32 @sqlite3WhereEnd(i32* %413)
  %415 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %416 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %417 = call i32 @windowAggFinal(%struct.TYPE_22__* %415, %struct.TYPE_20__* %416, i32 1)
  %418 = load i32*, i32** %12, align 8
  %419 = load i32, i32* @OP_Rewind, align 4
  %420 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %421 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %420, i32 0, i32 5
  %422 = load i32, i32* %421, align 8
  %423 = load i32*, i32** %12, align 8
  %424 = call i32 @sqlite3VdbeCurrentAddr(i32* %423)
  %425 = add nsw i32 %424, 3
  %426 = call i32 @sqlite3VdbeAddOp2(i32* %418, i32 %419, i32 %422, i32 %425)
  %427 = load i32*, i32** %12, align 8
  %428 = call i32 @VdbeCoverage(i32* %427)
  %429 = load i32*, i32** %12, align 8
  %430 = load i32, i32* @OP_Gosub, align 4
  %431 = load i32, i32* %9, align 4
  %432 = load i32, i32* %10, align 4
  %433 = call i32 @sqlite3VdbeAddOp2(i32* %429, i32 %430, i32 %431, i32 %432)
  %434 = load i32*, i32** %12, align 8
  %435 = load i32, i32* @OP_Next, align 4
  %436 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %437 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %436, i32 0, i32 5
  %438 = load i32, i32* %437, align 8
  %439 = load i32*, i32** %12, align 8
  %440 = call i32 @sqlite3VdbeCurrentAddr(i32* %439)
  %441 = sub nsw i32 %440, 1
  %442 = call i32 @sqlite3VdbeAddOp2(i32* %434, i32 %435, i32 %438, i32 %441)
  %443 = load i32*, i32** %12, align 8
  %444 = call i32 @VdbeCoverage(i32* %443)
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_22__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @sqlite3KeyInfoFromExprList(%struct.TYPE_22__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAppendP4(i32*, i8*, i32) #1

declare dso_local i32 @VdbeCoverageEqNe(i32*) #1

declare dso_local i32 @windowAggFinal(%struct.TYPE_22__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @windowAggStep(%struct.TYPE_22__*, %struct.TYPE_20__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3WhereEnd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
