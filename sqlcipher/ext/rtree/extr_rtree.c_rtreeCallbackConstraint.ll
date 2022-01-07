; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeCallbackConstraint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeCallbackConstraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_10__, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 (i32*, i32, i64*, i32*)*, i32 (%struct.TYPE_11__*)* }
%struct.TYPE_11__ = type { i32, i64*, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i64, i32 }
%struct.TYPE_13__ = type { i64, i64 }

@RTREE_MAX_DIMENSIONS = common dso_local global i32 0, align 4
@RTREE_MATCH = common dso_local global i64 0, align 8
@RTREE_QUERY = common dso_local global i64 0, align 8
@NOT_WITHIN = common dso_local global i32 0, align 4
@RTREE_ZERO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32*, %struct.TYPE_12__*, i64*, i32*)* @rtreeCallbackConstraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtreeCallbackConstraint(%struct.TYPE_14__* %0, i32 %1, i32* %2, %struct.TYPE_12__* %3, i64* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %13, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* @RTREE_MAX_DIMENSIONS, align 4
  %27 = mul nsw i32 %26, 2
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %17, align 8
  %30 = alloca i64, i64 %28, align 16
  store i64 %28, i64* %18, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RTREE_MATCH, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %6
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RTREE_QUERY, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %36, %6
  %43 = phi i1 [ true, %6 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %14, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %60, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %14, align 4
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %14, align 4
  %53 = icmp eq i32 %52, 6
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %14, align 4
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %14, align 4
  %59 = icmp eq i32 %58, 10
  br label %60

60:                                               ; preds = %57, %54, %51, %48, %42
  %61 = phi i1 [ true, %54 ], [ true, %51 ], [ true, %48 ], [ true, %42 ], [ %59, %57 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RTREE_QUERY, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %60
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @readInt64(i32* %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %74, %69, %60
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 8
  store i32* %81, i32** %9, align 8
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %151

84:                                               ; preds = %79
  %85 = load i32, i32* %14, align 4
  switch i32 %85, label %138 [
    i32 10, label %86
    i32 8, label %99
    i32 6, label %112
    i32 4, label %125
  ]

86:                                               ; preds = %84
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 36
  %89 = call i32 @readCoord(i32* %88, %struct.TYPE_13__* %16)
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i64, i64* %30, i64 9
  store i64 %91, i64* %92, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 32
  %95 = call i32 @readCoord(i32* %94, %struct.TYPE_13__* %16)
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i64, i64* %30, i64 8
  store i64 %97, i64* %98, align 16
  br label %99

99:                                               ; preds = %84, %86
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 28
  %102 = call i32 @readCoord(i32* %101, %struct.TYPE_13__* %16)
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i64, i64* %30, i64 7
  store i64 %104, i64* %105, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 24
  %108 = call i32 @readCoord(i32* %107, %struct.TYPE_13__* %16)
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i64, i64* %30, i64 6
  store i64 %110, i64* %111, align 16
  br label %112

112:                                              ; preds = %84, %99
  %113 = load i32*, i32** %9, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 20
  %115 = call i32 @readCoord(i32* %114, %struct.TYPE_13__* %16)
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i64, i64* %30, i64 5
  store i64 %117, i64* %118, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 16
  %121 = call i32 @readCoord(i32* %120, %struct.TYPE_13__* %16)
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i64, i64* %30, i64 4
  store i64 %123, i64* %124, align 16
  br label %125

125:                                              ; preds = %84, %112
  %126 = load i32*, i32** %9, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 12
  %128 = call i32 @readCoord(i32* %127, %struct.TYPE_13__* %16)
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i64, i64* %30, i64 3
  store i64 %130, i64* %131, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 8
  %134 = call i32 @readCoord(i32* %133, %struct.TYPE_13__* %16)
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i64, i64* %30, i64 2
  store i64 %136, i64* %137, align 16
  br label %138

138:                                              ; preds = %84, %125
  %139 = load i32*, i32** %9, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  %141 = call i32 @readCoord(i32* %140, %struct.TYPE_13__* %16)
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 %143, i64* %144, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @readCoord(i32* %145, %struct.TYPE_13__* %16)
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 %148, i64* %149, align 16
  br label %150

150:                                              ; preds = %138
  br label %218

151:                                              ; preds = %79
  %152 = load i32, i32* %14, align 4
  switch i32 %152, label %205 [
    i32 10, label %153
    i32 8, label %166
    i32 6, label %179
    i32 4, label %192
  ]

153:                                              ; preds = %151
  %154 = load i32*, i32** %9, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 36
  %156 = call i32 @readCoord(i32* %155, %struct.TYPE_13__* %16)
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i64, i64* %30, i64 9
  store i64 %158, i64* %159, align 8
  %160 = load i32*, i32** %9, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 32
  %162 = call i32 @readCoord(i32* %161, %struct.TYPE_13__* %16)
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i64, i64* %30, i64 8
  store i64 %164, i64* %165, align 16
  br label %166

166:                                              ; preds = %151, %153
  %167 = load i32*, i32** %9, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 28
  %169 = call i32 @readCoord(i32* %168, %struct.TYPE_13__* %16)
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i64, i64* %30, i64 7
  store i64 %171, i64* %172, align 8
  %173 = load i32*, i32** %9, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 24
  %175 = call i32 @readCoord(i32* %174, %struct.TYPE_13__* %16)
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds i64, i64* %30, i64 6
  store i64 %177, i64* %178, align 16
  br label %179

179:                                              ; preds = %151, %166
  %180 = load i32*, i32** %9, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 20
  %182 = call i32 @readCoord(i32* %181, %struct.TYPE_13__* %16)
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i64, i64* %30, i64 5
  store i64 %184, i64* %185, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 16
  %188 = call i32 @readCoord(i32* %187, %struct.TYPE_13__* %16)
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds i64, i64* %30, i64 4
  store i64 %190, i64* %191, align 16
  br label %192

192:                                              ; preds = %151, %179
  %193 = load i32*, i32** %9, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 12
  %195 = call i32 @readCoord(i32* %194, %struct.TYPE_13__* %16)
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i64, i64* %30, i64 3
  store i64 %197, i64* %198, align 8
  %199 = load i32*, i32** %9, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 8
  %201 = call i32 @readCoord(i32* %200, %struct.TYPE_13__* %16)
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i64, i64* %30, i64 2
  store i64 %203, i64* %204, align 16
  br label %205

205:                                              ; preds = %151, %192
  %206 = load i32*, i32** %9, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 4
  %208 = call i32 @readCoord(i32* %207, %struct.TYPE_13__* %16)
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 %210, i64* %211, align 8
  %212 = load i32*, i32** %9, align 8
  %213 = call i32 @readCoord(i32* %212, %struct.TYPE_13__* %16)
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 %215, i64* %216, align 16
  br label %217

217:                                              ; preds = %205
  br label %218

218:                                              ; preds = %217, %150
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @RTREE_MATCH, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %241

224:                                              ; preds = %218
  store i32 0, i32* %19, align 4
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i32 (i32*, i32, i64*, i32*)*, i32 (i32*, i32, i64*, i32*)** %227, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %230 = bitcast %struct.TYPE_11__* %229 to i32*
  %231 = load i32, i32* %14, align 4
  %232 = call i32 %228(i32* %230, i32 %231, i64* %30, i32* %19)
  store i32 %232, i32* %15, align 4
  %233 = load i32, i32* %19, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %224
  %236 = load i32, i32* @NOT_WITHIN, align 4
  %237 = load i32*, i32** %12, align 8
  store i32 %236, i32* %237, align 4
  br label %238

238:                                              ; preds = %235, %224
  %239 = load i64, i64* @RTREE_ZERO, align 8
  %240 = load i64*, i64** %11, align 8
  store i64 %239, i64* %240, align 8
  br label %299

241:                                              ; preds = %218
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 1
  store i64* %30, i64** %243, align 8
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = sub nsw i32 %246, 1
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 2
  store i32 %247, i32* %249, align 8
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 4
  store i64 %252, i64* %254, align 8
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 3
  store i64 %252, i64* %256, align 8
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 6
  store i32 %259, i32* %261, align 4
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 5
  store i32 %259, i32* %263, align 8
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  %267 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %266, align 8
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %269 = call i32 %267(%struct.TYPE_11__* %268)
  store i32 %269, i32* %15, align 4
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 8
  %273 = load i32*, i32** %12, align 8
  %274 = load i32, i32* %273, align 4
  %275 = icmp slt i32 %272, %274
  br i1 %275, label %276, label %281

276:                                              ; preds = %241
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 8
  %280 = load i32*, i32** %12, align 8
  store i32 %279, i32* %280, align 4
  br label %281

281:                                              ; preds = %276, %241
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = load i64*, i64** %11, align 8
  %286 = load i64, i64* %285, align 8
  %287 = icmp slt i64 %284, %286
  br i1 %287, label %293, label %288

288:                                              ; preds = %281
  %289 = load i64*, i64** %11, align 8
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @RTREE_ZERO, align 8
  %292 = icmp slt i64 %290, %291
  br i1 %292, label %293, label %298

293:                                              ; preds = %288, %281
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = load i64*, i64** %11, align 8
  store i64 %296, i64* %297, align 8
  br label %298

298:                                              ; preds = %293, %288
  br label %299

299:                                              ; preds = %298, %238
  %300 = load i32, i32* %15, align 4
  %301 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %301)
  ret i32 %300
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @readInt64(i32*) #2

declare dso_local i32 @readCoord(i32*, %struct.TYPE_13__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
