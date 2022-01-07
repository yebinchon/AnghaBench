; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i8, i8, i32, i32**, %struct.TYPE_26__, %struct.TYPE_25__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32*, %struct.TYPE_24__, i32 }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_29__*, i32 }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_28__ = type { i32, i8*, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@RTREE_ZERO = common dso_local global i32 0, align 4
@PARTLY_WITHIN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"PUSH-F1:\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@RTREE_MATCH = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"PUSH-Fm:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, i32, i8*, i32, i32**)* @rtreeFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtreeFilter(%struct.TYPE_27__* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_28__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_29__*, align 8
  %24 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %28, %struct.TYPE_30__** %12, align 8
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %30 = bitcast %struct.TYPE_27__* %29 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %30, %struct.TYPE_29__** %13, align 8
  store i32* null, i32** %14, align 8
  %31 = load i32, i32* @SQLITE_OK, align 4
  store i32 %31, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %33 = call i32 @rtreeReference(%struct.TYPE_30__* %32)
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %35 = call i32 @freeCursorConstraints(%struct.TYPE_29__* %34)
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 13
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @sqlite3_free(i32 %38)
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %40, i32 0, i32 11
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %18, align 8
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %44 = call i32 @memset(%struct.TYPE_29__* %43, i32 0, i32 88)
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %46 = bitcast %struct.TYPE_30__* %45 to i32*
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 12
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  store i32* %46, i32** %49, align 8
  %50 = load i32*, i32** %18, align 8
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 11
  store i32* %50, i32** %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %106

58:                                               ; preds = %5
  %59 = load i32**, i32*** %11, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i8* @sqlite3_value_int64(i32* %61)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %65 = load i32, i32* %21, align 4
  %66 = call i32 @findLeafNode(%struct.TYPE_30__* %64, i32 %65, i32** %19, i32* %22)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @SQLITE_OK, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %102

70:                                               ; preds = %58
  %71 = load i32*, i32** %19, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %102

73:                                               ; preds = %70
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %75 = load i32, i32* @RTREE_ZERO, align 4
  %76 = call %struct.TYPE_28__* @rtreeSearchPointNew(%struct.TYPE_29__* %74, i32 %75, i64 0)
  store %struct.TYPE_28__* %76, %struct.TYPE_28__** %20, align 8
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %78 = icmp ne %struct.TYPE_28__* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i32*, i32** %19, align 8
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 6
  %84 = load i32**, i32*** %83, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 0
  store i32* %81, i32** %85, align 8
  %86 = load i32, i32* %22, align 4
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i8*, i8** @PARTLY_WITHIN, align 8
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %93 = load i32*, i32** %19, align 8
  %94 = load i32, i32* %21, align 4
  %95 = call i32 @nodeRowidIndex(%struct.TYPE_30__* %92, i32* %93, i32 %94, i32* %17)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %101 = call i32 @RTREE_QUEUE_TRACE(%struct.TYPE_29__* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %105

102:                                              ; preds = %70, %58
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %73
  br label %303

106:                                              ; preds = %5
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %108 = call i32 @nodeAcquire(%struct.TYPE_30__* %107, i32 1, i32 0, i32** %14)
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* @SQLITE_OK, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %262

112:                                              ; preds = %106
  %113 = load i32, i32* %10, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %262

115:                                              ; preds = %112
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 88, %117
  %119 = trunc i64 %118 to i32
  %120 = call %struct.TYPE_29__* @sqlite3_malloc64(i32 %119)
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 10
  store %struct.TYPE_29__* %120, %struct.TYPE_29__** %122, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 10
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %127, align 8
  %129 = icmp ne %struct.TYPE_29__* %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %115
  %131 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %131, i32* %16, align 4
  br label %261

132:                                              ; preds = %115
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 10
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 88, %137
  %139 = trunc i64 %138 to i32
  %140 = call i32 @memset(%struct.TYPE_29__* %135, i32 0, i32 %139)
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 9
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %142, align 8
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = mul i64 4, %148
  %150 = trunc i64 %149 to i32
  %151 = call i32 @memset(%struct.TYPE_29__* %143, i32 0, i32 %150)
  %152 = load i8*, i8** %9, align 8
  %153 = icmp eq i8* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %132
  %155 = load i32, i32* %10, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %154, %132
  %158 = load i8*, i8** %9, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = load i8*, i8** %9, align 8
  %162 = call i64 @strlen(i8* %161)
  %163 = trunc i64 %162 to i32
  %164 = load i32, i32* %10, align 4
  %165 = mul nsw i32 %164, 2
  %166 = icmp eq i32 %163, %165
  br label %167

167:                                              ; preds = %160, %157
  %168 = phi i1 [ false, %157 ], [ %166, %160 ]
  br label %169

169:                                              ; preds = %167, %154
  %170 = phi i1 [ true, %154 ], [ %168, %167 ]
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  store i32 0, i32* %15, align 4
  br label %173

173:                                              ; preds = %257, %169
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %260

177:                                              ; preds = %173
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 10
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %179, align 8
  %181 = load i32, i32* %15, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i64 %182
  store %struct.TYPE_29__* %183, %struct.TYPE_29__** %23, align 8
  %184 = load i8*, i8** %9, align 8
  %185 = load i32, i32* %15, align 4
  %186 = mul nsw i32 %185, 2
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %184, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %191 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %190, i32 0, i32 3
  store i8 %189, i8* %191, align 4
  %192 = load i8*, i8** %9, align 8
  %193 = load i32, i32* %15, align 4
  %194 = mul nsw i32 %193, 2
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %192, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = sub nsw i32 %199, 48
  %201 = trunc i32 %200 to i8
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %203 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %202, i32 0, i32 4
  store i8 %201, i8* %203, align 1
  %204 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %205 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %204, i32 0, i32 3
  %206 = load i8, i8* %205, align 4
  %207 = sext i8 %206 to i32
  %208 = load i8, i8* @RTREE_MATCH, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp sge i32 %207, %209
  br i1 %210, label %211, label %246

211:                                              ; preds = %177
  %212 = load i32**, i32*** %11, align 8
  %213 = load i32, i32* %15, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32*, i32** %212, i64 %214
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %218 = call i32 @deserializeGeometry(i32* %216, %struct.TYPE_29__* %217)
  store i32 %218, i32* %16, align 4
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* @SQLITE_OK, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %211
  br label %260

223:                                              ; preds = %211
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %228 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %227, i32 0, i32 8
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 2
  store i32 %226, i32* %230, align 8
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %231, i32 0, i32 9
  %233 = load %struct.TYPE_29__*, %struct.TYPE_29__** %232, align 8
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %235 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %234, i32 0, i32 8
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 1
  store %struct.TYPE_29__* %233, %struct.TYPE_29__** %237, align 8
  %238 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  %242 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %243 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %242, i32 0, i32 8
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i32 0, i32 0
  store i32 %241, i32* %245, align 8
  br label %256

246:                                              ; preds = %177
  %247 = load i32**, i32*** %11, align 8
  %248 = load i32, i32* %15, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32*, i32** %247, i64 %249
  %251 = load i32*, i32** %250, align 8
  %252 = call i8* @sqlite3_value_double(i32* %251)
  %253 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %254 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %253, i32 0, i32 7
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 0
  store i8* %252, i8** %255, align 8
  br label %256

256:                                              ; preds = %246, %223
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %15, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %15, align 4
  br label %173

260:                                              ; preds = %222, %173
  br label %261

261:                                              ; preds = %260, %130
  br label %262

262:                                              ; preds = %261, %112, %106
  %263 = load i32, i32* %16, align 4
  %264 = load i32, i32* @SQLITE_OK, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %302

266:                                              ; preds = %262
  %267 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %268 = load i32, i32* @RTREE_ZERO, align 4
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = call %struct.TYPE_28__* @rtreeSearchPointNew(%struct.TYPE_29__* %267, i32 %268, i64 %273)
  store %struct.TYPE_28__* %274, %struct.TYPE_28__** %24, align 8
  %275 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %276 = icmp eq %struct.TYPE_28__* %275, null
  br i1 %276, label %277, label %279

277:                                              ; preds = %266
  %278 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %278, i32* %6, align 4
  br label %310

279:                                              ; preds = %266
  %280 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %280, i32 0, i32 0
  store i32 1, i32* %281, align 8
  %282 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %283 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %282, i32 0, i32 2
  store i64 0, i64* %283, align 8
  %284 = load i8*, i8** @PARTLY_WITHIN, align 8
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %286 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %285, i32 0, i32 1
  store i8* %284, i8** %286, align 8
  %287 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %288 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 8
  %290 = icmp eq i32 %289, 1
  %291 = zext i1 %290 to i32
  %292 = call i32 @assert(i32 %291)
  %293 = load i32*, i32** %14, align 8
  %294 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %295 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %294, i32 0, i32 6
  %296 = load i32**, i32*** %295, align 8
  %297 = getelementptr inbounds i32*, i32** %296, i64 0
  store i32* %293, i32** %297, align 8
  store i32* null, i32** %14, align 8
  %298 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %299 = call i32 @RTREE_QUEUE_TRACE(%struct.TYPE_29__* %298, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %300 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %301 = call i32 @rtreeStepToLeaf(%struct.TYPE_29__* %300)
  store i32 %301, i32* %16, align 4
  br label %302

302:                                              ; preds = %279, %262
  br label %303

303:                                              ; preds = %302, %105
  %304 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %305 = load i32*, i32** %14, align 8
  %306 = call i32 @nodeRelease(%struct.TYPE_30__* %304, i32* %305)
  %307 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %308 = call i32 @rtreeRelease(%struct.TYPE_30__* %307)
  %309 = load i32, i32* %16, align 4
  store i32 %309, i32* %6, align 4
  br label %310

310:                                              ; preds = %303, %277
  %311 = load i32, i32* %6, align 4
  ret i32 %311
}

declare dso_local i32 @rtreeReference(%struct.TYPE_30__*) #1

declare dso_local i32 @freeCursorConstraints(%struct.TYPE_29__*) #1

declare dso_local i32 @sqlite3_free(i32) #1

declare dso_local i32 @memset(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i8* @sqlite3_value_int64(i32*) #1

declare dso_local i32 @findLeafNode(%struct.TYPE_30__*, i32, i32**, i32*) #1

declare dso_local %struct.TYPE_28__* @rtreeSearchPointNew(%struct.TYPE_29__*, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nodeRowidIndex(%struct.TYPE_30__*, i32*, i32, i32*) #1

declare dso_local i32 @RTREE_QUEUE_TRACE(%struct.TYPE_29__*, i8*) #1

declare dso_local i32 @nodeAcquire(%struct.TYPE_30__*, i32, i32, i32**) #1

declare dso_local %struct.TYPE_29__* @sqlite3_malloc64(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @deserializeGeometry(i32*, %struct.TYPE_29__*) #1

declare dso_local i8* @sqlite3_value_double(i32*) #1

declare dso_local i32 @rtreeStepToLeaf(%struct.TYPE_29__*) #1

declare dso_local i32 @nodeRelease(%struct.TYPE_30__*, i32*) #1

declare dso_local i32 @rtreeRelease(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
