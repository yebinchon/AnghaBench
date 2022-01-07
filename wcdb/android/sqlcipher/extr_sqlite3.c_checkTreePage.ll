; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_checkTreePage.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_checkTreePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, i32, i32, i32*, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32, i32*, i32, i32, i32, i32*, i32 (%struct.TYPE_17__*, i32*)*, i64, i32 (%struct.TYPE_17__*, i32*, %struct.TYPE_19__*)* }
%struct.TYPE_19__ = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Page %d: \00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to get the page. error code=%d\00", align 1
@SQLITE_CORRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"btreeInitPage() returns error code %d\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"On tree page %d cell %d: \00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"On page %d at right child: \00", align 1
@PTRMAP_BTREE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Offset %d out of range %d..%d\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Extends off end of page\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Rowid %lld out of order\00", align 1
@PTRMAP_OVERFLOW1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Child page depth differs\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Multiple uses for byte %u of page %d\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"Fragmentation of %d bytes reported as %d on page %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32, i32*, i32)* @checkTreePage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkTreePage(%struct.TYPE_18__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_20__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_19__, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %10, align 8
  store i32 -1, i32* %13, align 4
  store i32 1, i32* %20, align 4
  store i32 1, i32* %21, align 4
  store i32* null, i32** %29, align 8
  store i32 0, i32* %31, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %32, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %33, align 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %34, align 4
  store i32 0, i32* %35, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  store %struct.TYPE_20__* %53, %struct.TYPE_20__** %25, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %27, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %588

60:                                               ; preds = %4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @checkRef(%struct.TYPE_18__* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %588

66:                                               ; preds = %60
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @btreeGetPage(%struct.TYPE_20__* %72, i32 %73, %struct.TYPE_17__** %10, i32 0)
  store i32 %74, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 (%struct.TYPE_18__*, i8*, ...) @checkAppendMsg(%struct.TYPE_18__* %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %567

80:                                               ; preds = %66
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %35, align 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %87 = call i32 @btreeInitPage(%struct.TYPE_17__* %86)
  store i32 %87, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %80
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @SQLITE_CORRUPT, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 (%struct.TYPE_18__*, i8*, ...) @checkAppendMsg(%struct.TYPE_18__* %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %567

98:                                               ; preds = %80
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %22, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %17, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8** %106, align 8
  %107 = load i32*, i32** %22, align 8
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %108, 5
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = call i32 @get2byteNotZero(i32* %111)
  store i32 %112, i32* %28, align 4
  %113 = load i32, i32* %28, align 4
  %114 = load i32, i32* %27, align 4
  %115 = icmp sle i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load i32*, i32** %22, align 8
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %119, 3
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = call i32 @get2byte(i32* %122)
  store i32 %123, i32* %19, align 4
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %19, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i32, i32* %17, align 4
  %132 = add nsw i32 %131, 12
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = mul nsw i32 4, %135
  %137 = sub nsw i32 %132, %136
  store i32 %137, i32* %18, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 5
  %140 = load i32*, i32** %139, align 8
  %141 = load i32*, i32** %22, align 8
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = icmp eq i32* %140, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load i32*, i32** %22, align 8
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %19, align 4
  %151 = sub nsw i32 %150, 1
  %152 = mul nsw i32 2, %151
  %153 = add nsw i32 %149, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %148, i64 %154
  store i32* %155, i32** %24, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %184, label %160

160:                                              ; preds = %98
  %161 = load i32*, i32** %22, align 8
  %162 = load i32, i32* %17, align 4
  %163 = add nsw i32 %162, 8
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = call i32 @get4byte(i32* %165)
  store i32 %166, i32* %15, align 4
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %160
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8** %173, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* @PTRMAP_BTREE, align 4
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @checkPtrmap(%struct.TYPE_18__* %174, i32 %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %171, %160
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @checkTreePage(%struct.TYPE_18__* %180, i32 %181, i32* %9, i32 %182)
  store i32 %183, i32* %13, align 4
  store i32 0, i32* %21, align 4
  br label %190

184:                                              ; preds = %98
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 3
  %187 = load i32*, i32** %186, align 8
  store i32* %187, i32** %29, align 8
  %188 = load i32*, i32** %29, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  store i32 0, i32* %189, align 4
  br label %190

190:                                              ; preds = %184, %179
  %191 = load i32, i32* %19, align 4
  %192 = sub nsw i32 %191, 1
  store i32 %192, i32* %11, align 4
  br label %193

193:                                              ; preds = %378, %190
  %194 = load i32, i32* %11, align 4
  %195 = icmp sge i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %193
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br label %201

201:                                              ; preds = %196, %193
  %202 = phi i1 [ false, %193 ], [ %200, %196 ]
  br i1 %202, label %203, label %381

203:                                              ; preds = %201
  %204 = load i32, i32* %11, align 4
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 4
  %207 = load i32*, i32** %24, align 8
  %208 = load i32*, i32** %22, align 8
  %209 = load i32, i32* %18, align 4
  %210 = load i32, i32* %11, align 4
  %211 = mul nsw i32 %210, 2
  %212 = add nsw i32 %209, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %208, i64 %213
  %215 = icmp eq i32* %207, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 @assert(i32 %216)
  %218 = load i32*, i32** %24, align 8
  %219 = call i32 @get2byteAligned(i32* %218)
  store i32 %219, i32* %26, align 4
  %220 = load i32*, i32** %24, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 -2
  store i32* %221, i32** %24, align 8
  %222 = load i32, i32* %26, align 4
  %223 = load i32, i32* %28, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %230, label %225

225:                                              ; preds = %203
  %226 = load i32, i32* %26, align 4
  %227 = load i32, i32* %27, align 4
  %228 = sub nsw i32 %227, 4
  %229 = icmp sgt i32 %226, %228
  br i1 %229, label %230, label %237

230:                                              ; preds = %225, %203
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %232 = load i32, i32* %26, align 4
  %233 = load i32, i32* %28, align 4
  %234 = load i32, i32* %27, align 4
  %235 = sub nsw i32 %234, 4
  %236 = call i32 (%struct.TYPE_18__*, i8*, ...) @checkAppendMsg(%struct.TYPE_18__* %231, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %232, i32 %233, i32 %235)
  store i32 0, i32* %20, align 4
  br label %378

237:                                              ; preds = %225
  %238 = load i32*, i32** %22, align 8
  %239 = load i32, i32* %26, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  store i32* %241, i32** %23, align 8
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 8
  %244 = load i32 (%struct.TYPE_17__*, i32*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_17__*, i32*, %struct.TYPE_19__*)** %243, align 8
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %246 = load i32*, i32** %23, align 8
  %247 = call i32 %244(%struct.TYPE_17__* %245, i32* %246, %struct.TYPE_19__* %36)
  %248 = load i32, i32* %26, align 4
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = add nsw i32 %248, %250
  %252 = load i32, i32* %27, align 4
  %253 = icmp sgt i32 %251, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %237
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %256 = call i32 (%struct.TYPE_18__*, i8*, ...) @checkAppendMsg(%struct.TYPE_18__* %255, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %20, align 4
  br label %378

257:                                              ; preds = %237
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 7
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %283

262:                                              ; preds = %257
  %263 = load i32, i32* %21, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* %9, align 4
  %269 = icmp sgt i32 %267, %268
  br i1 %269, label %275, label %280

270:                                              ; preds = %262
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %9, align 4
  %274 = icmp sge i32 %272, %273
  br i1 %274, label %275, label %280

275:                                              ; preds = %270, %265
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = call i32 (%struct.TYPE_18__*, i8*, ...) @checkAppendMsg(%struct.TYPE_18__* %276, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %278)
  br label %280

280:                                              ; preds = %275, %270, %265
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  store i32 %282, i32* %9, align 4
  store i32 0, i32* %21, align 4
  br label %283

283:                                              ; preds = %280, %257
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = icmp sgt i64 %285, %287
  br i1 %288, label %289, label %335

289:                                              ; preds = %283
  %290 = load i32, i32* %26, align 4
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = add nsw i32 %290, %292
  %294 = sub nsw i32 %293, 4
  %295 = load i32, i32* %27, align 4
  %296 = icmp sle i32 %294, %295
  %297 = zext i1 %296 to i32
  %298 = call i32 @assert(i32 %297)
  %299 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = sub nsw i64 %300, %302
  %304 = load i32, i32* %27, align 4
  %305 = sext i32 %304 to i64
  %306 = add nsw i64 %303, %305
  %307 = sub nsw i64 %306, 5
  %308 = load i32, i32* %27, align 4
  %309 = sub nsw i32 %308, 4
  %310 = sext i32 %309 to i64
  %311 = sdiv i64 %307, %310
  %312 = trunc i64 %311 to i32
  store i32 %312, i32* %37, align 4
  %313 = load i32*, i32** %23, align 8
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = sub nsw i32 %315, 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %313, i64 %317
  %319 = call i32 @get4byte(i32* %318)
  store i32 %319, i32* %38, align 4
  %320 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %330

324:                                              ; preds = %289
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %326 = load i32, i32* %38, align 4
  %327 = load i32, i32* @PTRMAP_OVERFLOW1, align 4
  %328 = load i32, i32* %7, align 4
  %329 = call i32 @checkPtrmap(%struct.TYPE_18__* %325, i32 %326, i32 %327, i32 %328)
  br label %330

330:                                              ; preds = %324, %289
  %331 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %332 = load i32, i32* %38, align 4
  %333 = load i32, i32* %37, align 4
  %334 = call i32 @checkList(%struct.TYPE_18__* %331, i32 0, i32 %332, i32 %333)
  br label %335

335:                                              ; preds = %330, %283
  %336 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %337 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 8
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %366, label %340

340:                                              ; preds = %335
  %341 = load i32*, i32** %23, align 8
  %342 = call i32 @get4byte(i32* %341)
  store i32 %342, i32* %15, align 4
  %343 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %340
  %348 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %349 = load i32, i32* %15, align 4
  %350 = load i32, i32* @PTRMAP_BTREE, align 4
  %351 = load i32, i32* %7, align 4
  %352 = call i32 @checkPtrmap(%struct.TYPE_18__* %348, i32 %349, i32 %350, i32 %351)
  br label %353

353:                                              ; preds = %347, %340
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %355 = load i32, i32* %15, align 4
  %356 = load i32, i32* %9, align 4
  %357 = call i32 @checkTreePage(%struct.TYPE_18__* %354, i32 %355, i32* %9, i32 %356)
  store i32 %357, i32* %14, align 4
  store i32 0, i32* %21, align 4
  %358 = load i32, i32* %14, align 4
  %359 = load i32, i32* %13, align 4
  %360 = icmp ne i32 %358, %359
  br i1 %360, label %361, label %365

361:                                              ; preds = %353
  %362 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %363 = call i32 (%struct.TYPE_18__*, i8*, ...) @checkAppendMsg(%struct.TYPE_18__* %362, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %364 = load i32, i32* %14, align 4
  store i32 %364, i32* %13, align 4
  br label %365

365:                                              ; preds = %361, %353
  br label %377

366:                                              ; preds = %335
  %367 = load i32*, i32** %29, align 8
  %368 = load i32, i32* %26, align 4
  %369 = shl i32 %368, 16
  %370 = load i32, i32* %26, align 4
  %371 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = add nsw i32 %370, %372
  %374 = sub nsw i32 %373, 1
  %375 = or i32 %369, %374
  %376 = call i32 @btreeHeapInsert(i32* %367, i32 %375)
  br label %377

377:                                              ; preds = %366, %365
  br label %378

378:                                              ; preds = %377, %254, %230
  %379 = load i32, i32* %11, align 4
  %380 = add nsw i32 %379, -1
  store i32 %380, i32* %11, align 4
  br label %193

381:                                              ; preds = %201
  %382 = load i32, i32* %9, align 4
  %383 = load i32*, i32** %8, align 8
  store i32 %382, i32* %383, align 4
  %384 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %384, i32 0, i32 0
  store i8* null, i8** %385, align 8
  %386 = load i32, i32* %20, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %566

388:                                              ; preds = %381
  %389 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %390 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %389, i32 0, i32 4
  %391 = load i64, i64* %390, align 8
  %392 = icmp sgt i64 %391, 0
  br i1 %392, label %393, label %566

393:                                              ; preds = %388
  %394 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %395 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 8
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %440, label %398

398:                                              ; preds = %393
  %399 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %399, i32 0, i32 3
  %401 = load i32*, i32** %400, align 8
  store i32* %401, i32** %29, align 8
  %402 = load i32*, i32** %29, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 0
  store i32 0, i32* %403, align 4
  %404 = load i32, i32* %19, align 4
  %405 = sub nsw i32 %404, 1
  store i32 %405, i32* %11, align 4
  br label %406

406:                                              ; preds = %436, %398
  %407 = load i32, i32* %11, align 4
  %408 = icmp sge i32 %407, 0
  br i1 %408, label %409, label %439

409:                                              ; preds = %406
  %410 = load i32*, i32** %22, align 8
  %411 = load i32, i32* %18, align 4
  %412 = load i32, i32* %11, align 4
  %413 = mul nsw i32 %412, 2
  %414 = add nsw i32 %411, %413
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %410, i64 %415
  %417 = call i32 @get2byteAligned(i32* %416)
  store i32 %417, i32* %26, align 4
  %418 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %419 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %418, i32 0, i32 6
  %420 = load i32 (%struct.TYPE_17__*, i32*)*, i32 (%struct.TYPE_17__*, i32*)** %419, align 8
  %421 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %422 = load i32*, i32** %22, align 8
  %423 = load i32, i32* %26, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  %426 = call i32 %420(%struct.TYPE_17__* %421, i32* %425)
  store i32 %426, i32* %39, align 4
  %427 = load i32*, i32** %29, align 8
  %428 = load i32, i32* %26, align 4
  %429 = shl i32 %428, 16
  %430 = load i32, i32* %26, align 4
  %431 = load i32, i32* %39, align 4
  %432 = add nsw i32 %430, %431
  %433 = sub nsw i32 %432, 1
  %434 = or i32 %429, %433
  %435 = call i32 @btreeHeapInsert(i32* %427, i32 %434)
  br label %436

436:                                              ; preds = %409
  %437 = load i32, i32* %11, align 4
  %438 = add nsw i32 %437, -1
  store i32 %438, i32* %11, align 4
  br label %406

439:                                              ; preds = %406
  br label %440

440:                                              ; preds = %439, %393
  %441 = load i32*, i32** %22, align 8
  %442 = load i32, i32* %17, align 4
  %443 = add nsw i32 %442, 1
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %441, i64 %444
  %446 = call i32 @get2byte(i32* %445)
  store i32 %446, i32* %11, align 4
  br label %447

447:                                              ; preds = %492, %440
  %448 = load i32, i32* %11, align 4
  %449 = icmp sgt i32 %448, 0
  br i1 %449, label %450, label %503

450:                                              ; preds = %447
  %451 = load i32, i32* %11, align 4
  %452 = load i32, i32* %27, align 4
  %453 = sub nsw i32 %452, 4
  %454 = icmp sle i32 %451, %453
  %455 = zext i1 %454 to i32
  %456 = call i32 @assert(i32 %455)
  %457 = load i32*, i32** %22, align 8
  %458 = load i32, i32* %11, align 4
  %459 = add nsw i32 %458, 2
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %457, i64 %460
  %462 = call i32 @get2byte(i32* %461)
  store i32 %462, i32* %40, align 4
  %463 = load i32, i32* %11, align 4
  %464 = load i32, i32* %40, align 4
  %465 = add nsw i32 %463, %464
  %466 = load i32, i32* %27, align 4
  %467 = icmp sle i32 %465, %466
  %468 = zext i1 %467 to i32
  %469 = call i32 @assert(i32 %468)
  %470 = load i32*, i32** %29, align 8
  %471 = load i32, i32* %11, align 4
  %472 = shl i32 %471, 16
  %473 = load i32, i32* %11, align 4
  %474 = load i32, i32* %40, align 4
  %475 = add nsw i32 %473, %474
  %476 = sub nsw i32 %475, 1
  %477 = or i32 %472, %476
  %478 = call i32 @btreeHeapInsert(i32* %470, i32 %477)
  %479 = load i32*, i32** %22, align 8
  %480 = load i32, i32* %11, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %479, i64 %481
  %483 = call i32 @get2byte(i32* %482)
  store i32 %483, i32* %41, align 4
  %484 = load i32, i32* %41, align 4
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %492, label %486

486:                                              ; preds = %450
  %487 = load i32, i32* %41, align 4
  %488 = load i32, i32* %11, align 4
  %489 = load i32, i32* %40, align 4
  %490 = add nsw i32 %488, %489
  %491 = icmp sgt i32 %487, %490
  br label %492

492:                                              ; preds = %486, %450
  %493 = phi i1 [ true, %450 ], [ %491, %486 ]
  %494 = zext i1 %493 to i32
  %495 = call i32 @assert(i32 %494)
  %496 = load i32, i32* %41, align 4
  %497 = load i32, i32* %27, align 4
  %498 = sub nsw i32 %497, 4
  %499 = icmp sle i32 %496, %498
  %500 = zext i1 %499 to i32
  %501 = call i32 @assert(i32 %500)
  %502 = load i32, i32* %41, align 4
  store i32 %502, i32* %11, align 4
  br label %447

503:                                              ; preds = %447
  store i32 0, i32* %16, align 4
  %504 = load i32, i32* %28, align 4
  %505 = sub nsw i32 %504, 1
  store i32 %505, i32* %31, align 4
  br label %506

506:                                              ; preds = %532, %503
  %507 = load i32*, i32** %29, align 8
  %508 = call i64 @btreeHeapPull(i32* %507, i32* %30)
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %533

510:                                              ; preds = %506
  %511 = load i32, i32* %31, align 4
  %512 = and i32 %511, 65535
  %513 = load i32, i32* %30, align 4
  %514 = ashr i32 %513, 16
  %515 = icmp sge i32 %512, %514
  br i1 %515, label %516, label %522

516:                                              ; preds = %510
  %517 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %518 = load i32, i32* %30, align 4
  %519 = ashr i32 %518, 16
  %520 = load i32, i32* %7, align 4
  %521 = call i32 (%struct.TYPE_18__*, i8*, ...) @checkAppendMsg(%struct.TYPE_18__* %517, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %519, i32 %520)
  br label %533

522:                                              ; preds = %510
  %523 = load i32, i32* %30, align 4
  %524 = ashr i32 %523, 16
  %525 = load i32, i32* %31, align 4
  %526 = and i32 %525, 65535
  %527 = sub nsw i32 %524, %526
  %528 = sub nsw i32 %527, 1
  %529 = load i32, i32* %16, align 4
  %530 = add nsw i32 %529, %528
  store i32 %530, i32* %16, align 4
  %531 = load i32, i32* %30, align 4
  store i32 %531, i32* %31, align 4
  br label %532

532:                                              ; preds = %522
  br label %506

533:                                              ; preds = %516, %506
  %534 = load i32, i32* %27, align 4
  %535 = load i32, i32* %31, align 4
  %536 = and i32 %535, 65535
  %537 = sub nsw i32 %534, %536
  %538 = sub nsw i32 %537, 1
  %539 = load i32, i32* %16, align 4
  %540 = add nsw i32 %539, %538
  store i32 %540, i32* %16, align 4
  %541 = load i32*, i32** %29, align 8
  %542 = getelementptr inbounds i32, i32* %541, i64 0
  %543 = load i32, i32* %542, align 4
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %545, label %565

545:                                              ; preds = %533
  %546 = load i32, i32* %16, align 4
  %547 = load i32*, i32** %22, align 8
  %548 = load i32, i32* %17, align 4
  %549 = add nsw i32 %548, 7
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %547, i64 %550
  %552 = load i32, i32* %551, align 4
  %553 = icmp ne i32 %546, %552
  br i1 %553, label %554, label %565

554:                                              ; preds = %545
  %555 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %556 = load i32, i32* %16, align 4
  %557 = load i32*, i32** %22, align 8
  %558 = load i32, i32* %17, align 4
  %559 = add nsw i32 %558, 7
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %557, i64 %560
  %562 = load i32, i32* %561, align 4
  %563 = load i32, i32* %7, align 4
  %564 = call i32 (%struct.TYPE_18__*, i8*, ...) @checkAppendMsg(%struct.TYPE_18__* %555, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %556, i32 %562, i32 %563)
  br label %565

565:                                              ; preds = %554, %545, %533
  br label %566

566:                                              ; preds = %565, %388, %381
  br label %567

567:                                              ; preds = %566, %89, %76
  %568 = load i32, i32* %20, align 4
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %574, label %570

570:                                              ; preds = %567
  %571 = load i32, i32* %35, align 4
  %572 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %573 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %572, i32 0, i32 0
  store i32 %571, i32* %573, align 8
  br label %574

574:                                              ; preds = %570, %567
  %575 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %576 = call i32 @releasePage(%struct.TYPE_17__* %575)
  %577 = load i8*, i8** %32, align 8
  %578 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %579 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %578, i32 0, i32 0
  store i8* %577, i8** %579, align 8
  %580 = load i32, i32* %33, align 4
  %581 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %582 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %581, i32 0, i32 1
  store i32 %580, i32* %582, align 8
  %583 = load i32, i32* %34, align 4
  %584 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %585 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %584, i32 0, i32 2
  store i32 %583, i32* %585, align 4
  %586 = load i32, i32* %13, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* %5, align 4
  br label %588

588:                                              ; preds = %574, %65, %59
  %589 = load i32, i32* %5, align 4
  ret i32 %589
}

declare dso_local i64 @checkRef(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @btreeGetPage(%struct.TYPE_20__*, i32, %struct.TYPE_17__**, i32) #1

declare dso_local i32 @checkAppendMsg(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local i32 @btreeInitPage(%struct.TYPE_17__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get2byteNotZero(i32*) #1

declare dso_local i32 @get2byte(i32*) #1

declare dso_local i32 @get4byte(i32*) #1

declare dso_local i32 @checkPtrmap(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @get2byteAligned(i32*) #1

declare dso_local i32 @checkList(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @btreeHeapInsert(i32*, i32) #1

declare dso_local i64 @btreeHeapPull(i32*, i32*) #1

declare dso_local i32 @releasePage(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
