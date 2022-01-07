; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_treeInsert.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_treeInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_17__ = type { i64, i32*, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32*, i8**, i64 }

@LSM_OK = common dso_local global i32 0, align 4
@WORKING_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_17__*, i8*, i8*, i8*, i32)* @treeInsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @treeInsert(%struct.TYPE_15__* %0, %struct.TYPE_17__* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_16__*, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i8**, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %28 = load i32, i32* @LSM_OK, align 4
  store i32 %28, i32* %14, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %30, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %31, i64 %34
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  store %struct.TYPE_16__* %36, %struct.TYPE_16__** %15, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %287

49:                                               ; preds = %6
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %287

56:                                               ; preds = %49
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %58 = call %struct.TYPE_16__* @newTreeNode(%struct.TYPE_15__* %57, i8** %16, i32* %14)
  store %struct.TYPE_16__* %58, %struct.TYPE_16__** %17, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %60 = call %struct.TYPE_16__* @newTreeNode(%struct.TYPE_15__* %59, i8** %18, i32* %14)
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %19, align 8
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %7, align 4
  br label %417

65:                                               ; preds = %56
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %67 = load i32, i32* @WORKING_VERSION, align 4
  %68 = call i8* @getChildPtr(%struct.TYPE_16__* %66, i32 %67, i32 0)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  store i8* %68, i8** %72, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %77, i32* %81, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %83 = load i32, i32* @WORKING_VERSION, align 4
  %84 = call i8* @getChildPtr(%struct.TYPE_16__* %82, i32 %83, i32 1)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i8**, i8*** %86, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 2
  store i8* %84, i8** %88, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %90 = load i32, i32* @WORKING_VERSION, align 4
  %91 = call i8* @getChildPtr(%struct.TYPE_16__* %89, i32 %90, i32 2)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load i8**, i8*** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  store i8* %91, i8** %95, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %100, i32* %104, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %106 = load i32, i32* @WORKING_VERSION, align 4
  %107 = call i8* @getChildPtr(%struct.TYPE_16__* %105, i32 %106, i32 3)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 2
  store i8* %107, i8** %111, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %149

116:                                              ; preds = %65
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %118 = call %struct.TYPE_16__* @newTreeNode(%struct.TYPE_15__* %117, i8** %20, i32* %14)
  store %struct.TYPE_16__* %118, %struct.TYPE_16__** %21, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  store i32 %123, i32* %127, align 4
  %128 = load i8*, i8** %16, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 1
  store i8* %128, i8** %132, align 8
  %133 = load i8*, i8** %18, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load i8**, i8*** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 2
  store i8* %133, i8** %137, align 8
  %138 = load i8*, i8** %20, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  store i8* %138, i8** %142, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  br label %174

149:                                              ; preds = %65
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, -1
  store i64 %153, i64* %151, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %156 = load i8*, i8** %16, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i8*
  %164 = load i8*, i8** %18, align 8
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @treeInsert(%struct.TYPE_15__* %154, %struct.TYPE_17__* %155, i8* %156, i8* %163, i8* %164, i32 %172)
  store i32 %173, i32* %14, align 4
  br label %174

174:                                              ; preds = %149, %116
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load i32, i32* %13, align 4
  switch i32 %187, label %286 [
    i32 0, label %188
    i32 1, label %209
    i32 2, label %237
    i32 3, label %258
  ]

188:                                              ; preds = %174
  %189 = load i8*, i8** %11, align 8
  %190 = ptrtoint i8* %189 to i32
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  store i32 %190, i32* %194, align 4
  %195 = load i8*, i8** %10, align 8
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  %198 = load i8**, i8*** %197, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 0
  store i8* %195, i8** %199, align 8
  %200 = load i8*, i8** %12, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %208

202:                                              ; preds = %188
  %203 = load i8*, i8** %12, align 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 1
  %206 = load i8**, i8*** %205, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 1
  store i8* %203, i8** %207, align 8
  br label %208

208:                                              ; preds = %202, %188
  br label %286

209:                                              ; preds = %174
  %210 = load i8*, i8** %12, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = load i8*, i8** %12, align 8
  br label %220

214:                                              ; preds = %209
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 1
  %217 = load i8**, i8*** %216, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 2
  %219 = load i8*, i8** %218, align 8
  br label %220

220:                                              ; preds = %214, %212
  %221 = phi i8* [ %213, %212 ], [ %219, %214 ]
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 1
  %224 = load i8**, i8*** %223, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 3
  store i8* %221, i8** %225, align 8
  %226 = load i8*, i8** %11, align 8
  %227 = ptrtoint i8* %226 to i32
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 2
  store i32 %227, i32* %231, align 4
  %232 = load i8*, i8** %10, align 8
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 1
  %235 = load i8**, i8*** %234, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i64 2
  store i8* %232, i8** %236, align 8
  br label %286

237:                                              ; preds = %174
  %238 = load i8*, i8** %11, align 8
  %239 = ptrtoint i8* %238 to i32
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  store i32 %239, i32* %243, align 4
  %244 = load i8*, i8** %10, align 8
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 1
  %247 = load i8**, i8*** %246, align 8
  %248 = getelementptr inbounds i8*, i8** %247, i64 0
  store i8* %244, i8** %248, align 8
  %249 = load i8*, i8** %12, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %257

251:                                              ; preds = %237
  %252 = load i8*, i8** %12, align 8
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 1
  %255 = load i8**, i8*** %254, align 8
  %256 = getelementptr inbounds i8*, i8** %255, i64 1
  store i8* %252, i8** %256, align 8
  br label %257

257:                                              ; preds = %251, %237
  br label %286

258:                                              ; preds = %174
  %259 = load i8*, i8** %12, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %263

261:                                              ; preds = %258
  %262 = load i8*, i8** %12, align 8
  br label %269

263:                                              ; preds = %258
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 1
  %266 = load i8**, i8*** %265, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 2
  %268 = load i8*, i8** %267, align 8
  br label %269

269:                                              ; preds = %263, %261
  %270 = phi i8* [ %262, %261 ], [ %268, %263 ]
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 1
  %273 = load i8**, i8*** %272, align 8
  %274 = getelementptr inbounds i8*, i8** %273, i64 3
  store i8* %270, i8** %274, align 8
  %275 = load i8*, i8** %11, align 8
  %276 = ptrtoint i8* %275 to i32
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 2
  store i32 %276, i32* %280, align 4
  %281 = load i8*, i8** %10, align 8
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 1
  %284 = load i8**, i8*** %283, align 8
  %285 = getelementptr inbounds i8*, i8** %284, i64 2
  store i8* %281, i8** %285, align 8
  br label %286

286:                                              ; preds = %174, %269, %257, %220, %208
  br label %415

287:                                              ; preds = %49, %6
  store i8* null, i8** %25, align 8
  store i8* null, i8** %26, align 8
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %289 = call %struct.TYPE_16__* @newTreeNode(%struct.TYPE_15__* %288, i8** %26, i32* %14)
  store %struct.TYPE_16__* %289, %struct.TYPE_16__** %22, align 8
  %290 = load i32, i32* %14, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %287
  %293 = load i32, i32* %14, align 4
  store i32 %293, i32* %7, align 4
  br label %417

294:                                              ; preds = %287
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = bitcast i32* %297 to i8**
  store i8** %298, i8*** %23, align 8
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 1
  %301 = load i8**, i8*** %300, align 8
  store i8** %301, i8*** %24, align 8
  store i32 0, i32* %27, align 4
  br label %302

302:                                              ; preds = %334, %294
  %303 = load i32, i32* %27, align 4
  %304 = load i32, i32* %13, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %337

306:                                              ; preds = %302
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 0
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %27, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %333

315:                                              ; preds = %306
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %27, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = sext i32 %322 to i64
  %324 = inttoptr i64 %323 to i8*
  %325 = load i8**, i8*** %23, align 8
  %326 = getelementptr inbounds i8*, i8** %325, i32 1
  store i8** %326, i8*** %23, align 8
  store i8* %324, i8** %325, align 8
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %328 = load i32, i32* @WORKING_VERSION, align 4
  %329 = load i32, i32* %27, align 4
  %330 = call i8* @getChildPtr(%struct.TYPE_16__* %327, i32 %328, i32 %329)
  %331 = load i8**, i8*** %24, align 8
  %332 = getelementptr inbounds i8*, i8** %331, i32 1
  store i8** %332, i8*** %24, align 8
  store i8* %330, i8** %331, align 8
  br label %333

333:                                              ; preds = %315, %306
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %27, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %27, align 4
  br label %302

337:                                              ; preds = %302
  %338 = load i8*, i8** %11, align 8
  %339 = load i8**, i8*** %23, align 8
  %340 = getelementptr inbounds i8*, i8** %339, i32 1
  store i8** %340, i8*** %23, align 8
  store i8* %338, i8** %339, align 8
  %341 = load i8*, i8** %10, align 8
  %342 = load i8**, i8*** %24, align 8
  %343 = getelementptr inbounds i8*, i8** %342, i32 1
  store i8** %343, i8*** %24, align 8
  store i8* %341, i8** %342, align 8
  %344 = load i8*, i8** %12, align 8
  store i8* %344, i8** %25, align 8
  %345 = load i32, i32* %13, align 4
  store i32 %345, i32* %27, align 4
  br label %346

346:                                              ; preds = %384, %337
  %347 = load i32, i32* %27, align 4
  %348 = icmp slt i32 %347, 3
  br i1 %348, label %349, label %387

349:                                              ; preds = %346
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 0
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* %27, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %383

358:                                              ; preds = %349
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %27, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = sext i32 %365 to i64
  %367 = inttoptr i64 %366 to i8*
  %368 = load i8**, i8*** %23, align 8
  %369 = getelementptr inbounds i8*, i8** %368, i32 1
  store i8** %369, i8*** %23, align 8
  store i8* %367, i8** %368, align 8
  %370 = load i8*, i8** %25, align 8
  %371 = icmp ne i8* %370, null
  br i1 %371, label %372, label %374

372:                                              ; preds = %358
  %373 = load i8*, i8** %25, align 8
  br label %379

374:                                              ; preds = %358
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %376 = load i32, i32* @WORKING_VERSION, align 4
  %377 = load i32, i32* %27, align 4
  %378 = call i8* @getChildPtr(%struct.TYPE_16__* %375, i32 %376, i32 %377)
  br label %379

379:                                              ; preds = %374, %372
  %380 = phi i8* [ %373, %372 ], [ %378, %374 ]
  %381 = load i8**, i8*** %24, align 8
  %382 = getelementptr inbounds i8*, i8** %381, i32 1
  store i8** %382, i8*** %24, align 8
  store i8* %380, i8** %381, align 8
  store i8* null, i8** %25, align 8
  br label %383

383:                                              ; preds = %379, %349
  br label %384

384:                                              ; preds = %383
  %385 = load i32, i32* %27, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %27, align 4
  br label %346

387:                                              ; preds = %346
  %388 = load i8*, i8** %25, align 8
  %389 = icmp ne i8* %388, null
  br i1 %389, label %390, label %393

390:                                              ; preds = %387
  %391 = load i8*, i8** %25, align 8
  %392 = load i8**, i8*** %24, align 8
  store i8* %391, i8** %392, align 8
  br label %406

393:                                              ; preds = %387
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %395 = load i32, i32* @WORKING_VERSION, align 4
  %396 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %396, i32 0, i32 0
  %398 = load i32*, i32** %397, align 8
  %399 = getelementptr inbounds i32, i32* %398, i64 2
  %400 = load i32, i32* %399, align 4
  %401 = icmp ne i32 %400, 0
  %402 = zext i1 %401 to i64
  %403 = select i1 %401, i32 3, i32 2
  %404 = call i8* @getChildPtr(%struct.TYPE_16__* %394, i32 %395, i32 %403)
  %405 = load i8**, i8*** %24, align 8
  store i8* %404, i8** %405, align 8
  br label %406

406:                                              ; preds = %393, %390
  %407 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %408 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = add i64 %409, -1
  store i64 %410, i64* %408, align 8
  %411 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %412 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %413 = load i8*, i8** %26, align 8
  %414 = call i32 @treeUpdatePtr(%struct.TYPE_15__* %411, %struct.TYPE_17__* %412, i8* %413)
  store i32 %414, i32* %14, align 4
  br label %415

415:                                              ; preds = %406, %286
  %416 = load i32, i32* %14, align 4
  store i32 %416, i32* %7, align 4
  br label %417

417:                                              ; preds = %415, %292, %63
  %418 = load i32, i32* %7, align 4
  ret i32 %418
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_16__* @newTreeNode(%struct.TYPE_15__*, i8**, i32*) #1

declare dso_local i8* @getChildPtr(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @treeUpdatePtr(%struct.TYPE_15__*, %struct.TYPE_17__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
