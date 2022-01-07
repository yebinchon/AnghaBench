; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_pushOntoSorter.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_pushOntoSorter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_23__*, i32* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64, i64, i32 }

@SORTFLAG_UseSorter = common dso_local global i32 0, align 4
@SQLITE_ECEL_DUP = common dso_local global i32 0, align 4
@SQLITE_ECEL_REF = common dso_local global i32 0, align 4
@OP_Sequence = common dso_local global i32 0, align 4
@OP_IfNot = common dso_local global i32 0, align 4
@OP_SequenceTest = common dso_local global i32 0, align 4
@OP_Compare = common dso_local global i32 0, align 4
@P4_KEYINFO = common dso_local global i32 0, align 4
@OP_Jump = common dso_local global i32 0, align 4
@OP_Gosub = common dso_local global i32 0, align 4
@OP_ResetSorter = common dso_local global i32 0, align 4
@OP_IfNotZero = common dso_local global i32 0, align 4
@OP_Last = common dso_local global i32 0, align 4
@OP_IdxLE = common dso_local global i32 0, align 4
@OP_Delete = common dso_local global i32 0, align 4
@OP_SorterInsert = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_27__*, i32, i32, i32, i32)* @pushOntoSorter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushOntoSorter(%struct.TYPE_28__* %0, %struct.TYPE_26__* %1, %struct.TYPE_27__* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
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
  %28 = alloca %struct.TYPE_25__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_29__*, align 8
  %31 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %8, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %9, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %15, align 8
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SORTFLAG_UseSorter, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %16, align 4
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 7
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %16, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %21, align 4
  store i32 0, i32* %24, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %7
  %58 = load i32, i32* %16, align 4
  %59 = icmp eq i32 %58, 1
  br label %60

60:                                               ; preds = %57, %7
  %61 = phi i1 [ true, %7 ], [ %59, %57 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32, i32* %13, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %73, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 0
  br label %73

73:                                               ; preds = %70, %66, %60
  %74 = phi i1 [ true, %66 ], [ true, %60 ], [ %72, %70 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %73
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %81, %82
  %84 = icmp eq i32 %80, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %14, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %19, align 4
  br label %100

90:                                               ; preds = %73
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %90, %79
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi i1 [ true, %100 ], [ %109, %105 ]
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %110
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 1
  br label %128

123:                                              ; preds = %110
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  br label %128

128:                                              ; preds = %123, %118
  %129 = phi i64 [ %122, %118 ], [ %127, %123 ]
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %23, align 4
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %132 = call i8* @sqlite3VdbeMakeLabel(%struct.TYPE_28__* %131)
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 7
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %138, align 8
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @SQLITE_ECEL_DUP, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %128
  %146 = load i32, i32* @SQLITE_ECEL_REF, align 4
  br label %148

147:                                              ; preds = %128
  br label %148

148:                                              ; preds = %147, %145
  %149 = phi i32 [ %146, %145 ], [ 0, %147 ]
  %150 = or i32 %142, %149
  %151 = call i32 @sqlite3ExprCodeExprList(%struct.TYPE_28__* %136, %struct.TYPE_22__* %139, i32 %140, i32 %141, i32 %150)
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %148
  %155 = load i32*, i32** %15, align 8
  %156 = load i32, i32* @OP_Sequence, align 4
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %160, %161
  %163 = call i32 @sqlite3VdbeAddOp2(i32* %155, i32 %156, i32 %159, i32 %162)
  br label %164

164:                                              ; preds = %154, %148
  %165 = load i32, i32* %14, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %164
  %168 = load i32, i32* %13, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %167
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %19, align 4
  %174 = load i32, i32* %17, align 4
  %175 = add nsw i32 %173, %174
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %175, %176
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @sqlite3ExprCodeMove(%struct.TYPE_28__* %171, i32 %172, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %170, %167, %164
  %181 = load i32, i32* %21, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %359

183:                                              ; preds = %180
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* %18, align 4
  %189 = call i32 @makeSorterRecord(%struct.TYPE_28__* %184, %struct.TYPE_26__* %185, %struct.TYPE_27__* %186, i32 %187, i32 %188)
  store i32 %189, i32* %20, align 4
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %25, align 4
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, %196
  store i32 %200, i32* %198, align 8
  %201 = load i32, i32* %17, align 4
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %201, %204
  %206 = load i32, i32* %16, align 4
  %207 = add nsw i32 %205, %206
  store i32 %207, i32* %29, align 4
  %208 = load i32, i32* %16, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %183
  %211 = load i32*, i32** %15, align 8
  %212 = load i32, i32* @OP_IfNot, align 4
  %213 = load i32, i32* %19, align 4
  %214 = load i32, i32* %17, align 4
  %215 = add nsw i32 %213, %214
  %216 = call i32 @sqlite3VdbeAddOp1(i32* %211, i32 %212, i32 %215)
  store i32 %216, i32* %26, align 4
  br label %224

217:                                              ; preds = %183
  %218 = load i32*, i32** %15, align 8
  %219 = load i32, i32* @OP_SequenceTest, align 4
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @sqlite3VdbeAddOp1(i32* %218, i32 %219, i32 %222)
  store i32 %223, i32* %26, align 4
  br label %224

224:                                              ; preds = %217, %210
  %225 = load i32*, i32** %15, align 8
  %226 = call i32 @VdbeCoverage(i32* %225)
  %227 = load i32*, i32** %15, align 8
  %228 = load i32, i32* @OP_Compare, align 4
  %229 = load i32, i32* %25, align 4
  %230 = load i32, i32* %19, align 4
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @sqlite3VdbeAddOp3(i32* %227, i32 %228, i32 %229, i32 %230, i32 %233)
  %235 = load i32*, i32** %15, align 8
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 8
  %238 = load i32, i32* %237, align 8
  %239 = call %struct.TYPE_25__* @sqlite3VdbeGetOp(i32* %235, i32 %238)
  store %struct.TYPE_25__* %239, %struct.TYPE_25__** %28, align 8
  %240 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %224
  br label %449

247:                                              ; preds = %224
  %248 = load i32, i32* %29, align 4
  %249 = load i32, i32* %13, align 4
  %250 = add nsw i32 %248, %249
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 0
  store i32 %250, i32* %252, align 8
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_29__*, %struct.TYPE_29__** %255, align 8
  store %struct.TYPE_29__* %256, %struct.TYPE_29__** %30, align 8
  %257 = load %struct.TYPE_29__*, %struct.TYPE_29__** %30, align 8
  %258 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_29__*, %struct.TYPE_29__** %30, align 8
  %261 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @memset(i32 %259, i32 0, i64 %262)
  %264 = load i32*, i32** %15, align 8
  %265 = load %struct.TYPE_29__*, %struct.TYPE_29__** %30, align 8
  %266 = bitcast %struct.TYPE_29__* %265 to i8*
  %267 = load i32, i32* @P4_KEYINFO, align 4
  %268 = call i32 @sqlite3VdbeChangeP4(i32* %264, i32 -1, i8* %266, i32 %267)
  %269 = load %struct.TYPE_29__*, %struct.TYPE_29__** %30, align 8
  %270 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.TYPE_29__*, %struct.TYPE_29__** %30, align 8
  %273 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %274, 2
  %276 = icmp sgt i64 %271, %275
  %277 = zext i1 %276 to i32
  %278 = call i32 @testcase(i32 %277)
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %280 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %280, i32 0, i32 7
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %281, align 8
  %283 = load i32, i32* %21, align 4
  %284 = load %struct.TYPE_29__*, %struct.TYPE_29__** %30, align 8
  %285 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.TYPE_29__*, %struct.TYPE_29__** %30, align 8
  %288 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = sub nsw i64 %286, %289
  %291 = sub nsw i64 %290, 1
  %292 = call %struct.TYPE_29__* @sqlite3KeyInfoFromExprList(%struct.TYPE_28__* %279, %struct.TYPE_22__* %282, i32 %283, i64 %291)
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %294, i32 0, i32 0
  store %struct.TYPE_29__* %292, %struct.TYPE_29__** %295, align 8
  %296 = load i32*, i32** %15, align 8
  %297 = call i32 @sqlite3VdbeCurrentAddr(i32* %296)
  store i32 %297, i32* %27, align 4
  %298 = load i32*, i32** %15, align 8
  %299 = load i32, i32* @OP_Jump, align 4
  %300 = load i32, i32* %27, align 4
  %301 = add nsw i32 %300, 1
  %302 = load i32, i32* %27, align 4
  %303 = add nsw i32 %302, 1
  %304 = call i32 @sqlite3VdbeAddOp3(i32* %298, i32 %299, i32 %301, i32 0, i32 %303)
  %305 = load i32*, i32** %15, align 8
  %306 = call i32 @VdbeCoverage(i32* %305)
  %307 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %308 = call i8* @sqlite3VdbeMakeLabel(%struct.TYPE_28__* %307)
  %309 = ptrtoint i8* %308 to i32
  %310 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %310, i32 0, i32 4
  store i32 %309, i32* %311, align 8
  %312 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %313, align 8
  %316 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %317 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %316, i32 0, i32 5
  store i32 %315, i32* %317, align 4
  %318 = load i32*, i32** %15, align 8
  %319 = load i32, i32* @OP_Gosub, align 4
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %321 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %320, i32 0, i32 5
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %324 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @sqlite3VdbeAddOp2(i32* %318, i32 %319, i32 %322, i32 %325)
  %327 = load i32*, i32** %15, align 8
  %328 = load i32, i32* @OP_ResetSorter, align 4
  %329 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %330 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @sqlite3VdbeAddOp1(i32* %327, i32 %328, i32 %331)
  %333 = load i32, i32* %23, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %345

335:                                              ; preds = %247
  %336 = load i32*, i32** %15, align 8
  %337 = load i32, i32* @OP_IfNot, align 4
  %338 = load i32, i32* %23, align 4
  %339 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %340 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @sqlite3VdbeAddOp2(i32* %336, i32 %337, i32 %338, i32 %341)
  %343 = load i32*, i32** %15, align 8
  %344 = call i32 @VdbeCoverage(i32* %343)
  br label %345

345:                                              ; preds = %335, %247
  %346 = load i32*, i32** %15, align 8
  %347 = load i32, i32* %26, align 4
  %348 = call i32 @sqlite3VdbeJumpHere(i32* %346, i32 %347)
  %349 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %350 = load i32, i32* %19, align 4
  %351 = load i32, i32* %25, align 4
  %352 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %353 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @sqlite3ExprCodeMove(%struct.TYPE_28__* %349, i32 %350, i32 %351, i32 %354)
  %356 = load i32*, i32** %15, align 8
  %357 = load i32, i32* %27, align 4
  %358 = call i32 @sqlite3VdbeJumpHere(i32* %356, i32 %357)
  br label %359

359:                                              ; preds = %345, %180
  %360 = load i32, i32* %23, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %395

362:                                              ; preds = %359
  %363 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %364 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %363, i32 0, i32 3
  %365 = load i32, i32* %364, align 4
  store i32 %365, i32* %31, align 4
  %366 = load i32*, i32** %15, align 8
  %367 = load i32, i32* @OP_IfNotZero, align 4
  %368 = load i32, i32* %23, align 4
  %369 = load i32*, i32** %15, align 8
  %370 = call i32 @sqlite3VdbeCurrentAddr(i32* %369)
  %371 = add nsw i32 %370, 4
  %372 = call i32 @sqlite3VdbeAddOp2(i32* %366, i32 %367, i32 %368, i32 %371)
  %373 = load i32*, i32** %15, align 8
  %374 = call i32 @VdbeCoverage(i32* %373)
  %375 = load i32*, i32** %15, align 8
  %376 = load i32, i32* @OP_Last, align 4
  %377 = load i32, i32* %31, align 4
  %378 = call i32 @sqlite3VdbeAddOp2(i32* %375, i32 %376, i32 %377, i32 0)
  %379 = load i32*, i32** %15, align 8
  %380 = load i32, i32* @OP_IdxLE, align 4
  %381 = load i32, i32* %31, align 4
  %382 = load i32, i32* %19, align 4
  %383 = load i32, i32* %21, align 4
  %384 = add nsw i32 %382, %383
  %385 = load i32, i32* %17, align 4
  %386 = load i32, i32* %21, align 4
  %387 = sub nsw i32 %385, %386
  %388 = call i32 @sqlite3VdbeAddOp4Int(i32* %379, i32 %380, i32 %381, i32 0, i32 %384, i32 %387)
  store i32 %388, i32* %24, align 4
  %389 = load i32*, i32** %15, align 8
  %390 = call i32 @VdbeCoverage(i32* %389)
  %391 = load i32*, i32** %15, align 8
  %392 = load i32, i32* @OP_Delete, align 4
  %393 = load i32, i32* %31, align 4
  %394 = call i32 @sqlite3VdbeAddOp1(i32* %391, i32 %392, i32 %393)
  br label %395

395:                                              ; preds = %362, %359
  %396 = load i32, i32* %20, align 4
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %405

398:                                              ; preds = %395
  %399 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %400 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %401 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %402 = load i32, i32* %19, align 4
  %403 = load i32, i32* %18, align 4
  %404 = call i32 @makeSorterRecord(%struct.TYPE_28__* %399, %struct.TYPE_26__* %400, %struct.TYPE_27__* %401, i32 %402, i32 %403)
  store i32 %404, i32* %20, align 4
  br label %405

405:                                              ; preds = %398, %395
  %406 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %407 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* @SORTFLAG_UseSorter, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %414

412:                                              ; preds = %405
  %413 = load i32, i32* @OP_SorterInsert, align 4
  store i32 %413, i32* %22, align 4
  br label %416

414:                                              ; preds = %405
  %415 = load i32, i32* @OP_IdxInsert, align 4
  store i32 %415, i32* %22, align 4
  br label %416

416:                                              ; preds = %414, %412
  %417 = load i32*, i32** %15, align 8
  %418 = load i32, i32* %22, align 4
  %419 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %420 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* %20, align 4
  %423 = load i32, i32* %19, align 4
  %424 = load i32, i32* %21, align 4
  %425 = add nsw i32 %423, %424
  %426 = load i32, i32* %18, align 4
  %427 = load i32, i32* %21, align 4
  %428 = sub nsw i32 %426, %427
  %429 = call i32 @sqlite3VdbeAddOp4Int(i32* %417, i32 %418, i32 %421, i32 %422, i32 %425, i32 %428)
  %430 = load i32, i32* %24, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %449

432:                                              ; preds = %416
  %433 = load i32*, i32** %15, align 8
  %434 = load i32, i32* %24, align 4
  %435 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %436 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %435, i32 0, i32 6
  %437 = load i32, i32* %436, align 8
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %443

439:                                              ; preds = %432
  %440 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %441 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %440, i32 0, i32 6
  %442 = load i32, i32* %441, align 8
  br label %446

443:                                              ; preds = %432
  %444 = load i32*, i32** %15, align 8
  %445 = call i32 @sqlite3VdbeCurrentAddr(i32* %444)
  br label %446

446:                                              ; preds = %443, %439
  %447 = phi i32 [ %442, %439 ], [ %445, %443 ]
  %448 = call i32 @sqlite3VdbeChangeP2(i32* %433, i32 %434, i32 %447)
  br label %449

449:                                              ; preds = %246, %446, %416
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3VdbeMakeLabel(%struct.TYPE_28__*) #1

declare dso_local i32 @sqlite3ExprCodeExprList(%struct.TYPE_28__*, %struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3ExprCodeMove(%struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local i32 @makeSorterRecord(%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_25__* @sqlite3VdbeGetOp(i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @sqlite3VdbeChangeP4(i32*, i32, i8*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local %struct.TYPE_29__* @sqlite3KeyInfoFromExprList(%struct.TYPE_28__*, %struct.TYPE_22__*, i32, i64) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP2(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
