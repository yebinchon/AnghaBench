; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i8, i32, i32, i32**, %struct.TYPE_25__, %struct.TYPE_28__*, %struct.TYPE_28__*, i32*, %struct.TYPE_24__, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_27__ = type { i32, i8*, i64 }
%struct.TYPE_29__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@RTREE_ZERO = common dso_local global i32 0, align 4
@PARTLY_WITHIN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"PUSH-F1:\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"PUSH-Fm:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i32, i8*, i32, i32**)* @geopolyFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geopolyFilter(%struct.TYPE_26__* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_27__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [4 x %struct.TYPE_29__], align 16
  %22 = alloca %struct.TYPE_28__*, align 8
  %23 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32** %4, i32*** %10, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %27, %struct.TYPE_30__** %11, align 8
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %29 = bitcast %struct.TYPE_26__* %28 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %29, %struct.TYPE_28__** %12, align 8
  store i32* null, i32** %13, align 8
  %30 = load i32, i32* @SQLITE_OK, align 4
  store i32 %30, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %32 = call i32 @rtreeReference(%struct.TYPE_30__* %31)
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %34 = call i32 @freeCursorConstraints(%struct.TYPE_28__* %33)
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @sqlite3_free(i32 %37)
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 10
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %16, align 8
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %43 = call i32 @memset(%struct.TYPE_28__* %42, i32 0, i32 80)
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %45 = bitcast %struct.TYPE_30__* %44 to i32*
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 11
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  store i32* %45, i32** %48, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 10
  store i32* %49, i32** %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %104

57:                                               ; preds = %5
  %58 = load i32**, i32*** %10, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @sqlite3_value_int64(i32* %60)
  store i32 %61, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %63 = load i32, i32* %19, align 4
  %64 = call i32 @findLeafNode(%struct.TYPE_30__* %62, i32 %63, i32** %17, i32* %20)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @SQLITE_OK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %100

68:                                               ; preds = %57
  %69 = load i32*, i32** %17, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %100

71:                                               ; preds = %68
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %73 = load i32, i32* @RTREE_ZERO, align 4
  %74 = call %struct.TYPE_27__* @rtreeSearchPointNew(%struct.TYPE_28__* %72, i32 %73, i64 0)
  store %struct.TYPE_27__* %74, %struct.TYPE_27__** %18, align 8
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %76 = icmp ne %struct.TYPE_27__* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32*, i32** %17, align 8
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 6
  %82 = load i32**, i32*** %81, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 0
  store i32* %79, i32** %83, align 8
  %84 = load i32, i32* %20, align 4
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i8*, i8** @PARTLY_WITHIN, align 8
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %91 = load i32*, i32** %17, align 8
  %92 = load i32, i32* %19, align 4
  %93 = call i32 @nodeRowidIndex(%struct.TYPE_30__* %90, i32* %91, i32 %92, i32* %15)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %99 = call i32 @RTREE_QUEUE_TRACE(%struct.TYPE_28__* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %103

100:                                              ; preds = %68, %57
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %71
  br label %291

104:                                              ; preds = %5
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %106 = call i32 @nodeAcquire(%struct.TYPE_30__* %105, i32 1, i32 0, i32** %13)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @SQLITE_OK, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %250

110:                                              ; preds = %104
  %111 = load i32, i32* %7, align 4
  %112 = icmp sle i32 %111, 3
  br i1 %112, label %113, label %250

113:                                              ; preds = %110
  %114 = load i32, i32* %9, align 4
  %115 = icmp eq i32 %114, 1
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load i32**, i32*** %10, align 8
  %119 = getelementptr inbounds i32*, i32** %118, i64 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds [4 x %struct.TYPE_29__], [4 x %struct.TYPE_29__]* %21, i64 0, i64 0
  %122 = call i32 @geopolyBBox(i32 0, i32* %120, %struct.TYPE_29__* %121, i32* %14)
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %113
  br label %292

126:                                              ; preds = %113
  %127 = call %struct.TYPE_28__* @sqlite3_malloc(i32 320)
  store %struct.TYPE_28__* %127, %struct.TYPE_28__** %22, align 8
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 9
  store %struct.TYPE_28__* %127, %struct.TYPE_28__** %129, align 8
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 2
  store i32 4, i32* %131, align 8
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %133 = icmp eq %struct.TYPE_28__* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %135, i32* %14, align 4
  br label %249

136:                                              ; preds = %126
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 9
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %138, align 8
  %140 = call i32 @memset(%struct.TYPE_28__* %139, i32 0, i32 320)
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 8
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %142, align 8
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = mul i64 4, %148
  %150 = trunc i64 %149 to i32
  %151 = call i32 @memset(%struct.TYPE_28__* %143, i32 0, i32 %150)
  %152 = load i32, i32* %7, align 4
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %154, label %201

154:                                              ; preds = %136
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 3
  store i8 66, i8* %156, align 4
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 4
  store i32 0, i32* %158, align 8
  %159 = getelementptr inbounds [4 x %struct.TYPE_29__], [4 x %struct.TYPE_29__]* %21, i64 0, i64 1
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 7
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 8
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 1
  store %struct.TYPE_28__* %166, %struct.TYPE_28__** %22, align 8
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 3
  store i8 68, i8* %168, align 4
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 4
  store i32 1, i32* %170, align 8
  %171 = getelementptr inbounds [4 x %struct.TYPE_29__], [4 x %struct.TYPE_29__]* %21, i64 0, i64 0
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 16
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 7
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  store i32 %173, i32* %176, align 8
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 1
  store %struct.TYPE_28__* %178, %struct.TYPE_28__** %22, align 8
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 3
  store i8 66, i8* %180, align 4
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 4
  store i32 2, i32* %182, align 8
  %183 = getelementptr inbounds [4 x %struct.TYPE_29__], [4 x %struct.TYPE_29__]* %21, i64 0, i64 3
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 7
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 8
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 1
  store %struct.TYPE_28__* %190, %struct.TYPE_28__** %22, align 8
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 3
  store i8 68, i8* %192, align 4
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 4
  store i32 3, i32* %194, align 8
  %195 = getelementptr inbounds [4 x %struct.TYPE_29__], [4 x %struct.TYPE_29__]* %21, i64 0, i64 2
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 7
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 8
  br label %248

201:                                              ; preds = %136
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 3
  store i8 68, i8* %203, align 4
  %204 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %205 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %204, i32 0, i32 4
  store i32 0, i32* %205, align 8
  %206 = getelementptr inbounds [4 x %struct.TYPE_29__], [4 x %struct.TYPE_29__]* %21, i64 0, i64 0
  %207 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 16
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %209, i32 0, i32 7
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 0
  store i32 %208, i32* %211, align 8
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %212, i32 1
  store %struct.TYPE_28__* %213, %struct.TYPE_28__** %22, align 8
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 3
  store i8 66, i8* %215, align 4
  %216 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %216, i32 0, i32 4
  store i32 1, i32* %217, align 8
  %218 = getelementptr inbounds [4 x %struct.TYPE_29__], [4 x %struct.TYPE_29__]* %21, i64 0, i64 1
  %219 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %222 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i32 0, i32 7
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 0
  store i32 %220, i32* %223, align 8
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 1
  store %struct.TYPE_28__* %225, %struct.TYPE_28__** %22, align 8
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %226, i32 0, i32 3
  store i8 68, i8* %227, align 4
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %229 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i32 0, i32 4
  store i32 2, i32* %229, align 8
  %230 = getelementptr inbounds [4 x %struct.TYPE_29__], [4 x %struct.TYPE_29__]* %21, i64 0, i64 2
  %231 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 7
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 0
  store i32 %232, i32* %235, align 8
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 1
  store %struct.TYPE_28__* %237, %struct.TYPE_28__** %22, align 8
  %238 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %238, i32 0, i32 3
  store i8 66, i8* %239, align 4
  %240 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %241 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %240, i32 0, i32 4
  store i32 3, i32* %241, align 8
  %242 = getelementptr inbounds [4 x %struct.TYPE_29__], [4 x %struct.TYPE_29__]* %21, i64 0, i64 3
  %243 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %246 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %245, i32 0, i32 7
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 0
  store i32 %244, i32* %247, align 8
  br label %248

248:                                              ; preds = %201, %154
  br label %249

249:                                              ; preds = %248, %134
  br label %250

250:                                              ; preds = %249, %110, %104
  %251 = load i32, i32* %14, align 4
  %252 = load i32, i32* @SQLITE_OK, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %290

254:                                              ; preds = %250
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %256 = load i32, i32* @RTREE_ZERO, align 4
  %257 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = call %struct.TYPE_27__* @rtreeSearchPointNew(%struct.TYPE_28__* %255, i32 %256, i64 %261)
  store %struct.TYPE_27__* %262, %struct.TYPE_27__** %23, align 8
  %263 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %264 = icmp eq %struct.TYPE_27__* %263, null
  br i1 %264, label %265, label %267

265:                                              ; preds = %254
  %266 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %266, i32* %14, align 4
  br label %292

267:                                              ; preds = %254
  %268 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %269 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %268, i32 0, i32 0
  store i32 1, i32* %269, align 8
  %270 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 2
  store i64 0, i64* %271, align 8
  %272 = load i8*, i8** @PARTLY_WITHIN, align 8
  %273 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %274 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %273, i32 0, i32 1
  store i8* %272, i8** %274, align 8
  %275 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %276 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 4
  %278 = icmp eq i32 %277, 1
  %279 = zext i1 %278 to i32
  %280 = call i32 @assert(i32 %279)
  %281 = load i32*, i32** %13, align 8
  %282 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %282, i32 0, i32 6
  %284 = load i32**, i32*** %283, align 8
  %285 = getelementptr inbounds i32*, i32** %284, i64 0
  store i32* %281, i32** %285, align 8
  store i32* null, i32** %13, align 8
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %287 = call i32 @RTREE_QUEUE_TRACE(%struct.TYPE_28__* %286, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %288 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %289 = call i32 @rtreeStepToLeaf(%struct.TYPE_28__* %288)
  store i32 %289, i32* %14, align 4
  br label %290

290:                                              ; preds = %267, %250
  br label %291

291:                                              ; preds = %290, %103
  br label %292

292:                                              ; preds = %291, %265, %125
  %293 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %294 = load i32*, i32** %13, align 8
  %295 = call i32 @nodeRelease(%struct.TYPE_30__* %293, i32* %294)
  %296 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %297 = call i32 @rtreeRelease(%struct.TYPE_30__* %296)
  %298 = load i32, i32* %14, align 4
  ret i32 %298
}

declare dso_local i32 @rtreeReference(%struct.TYPE_30__*) #1

declare dso_local i32 @freeCursorConstraints(%struct.TYPE_28__*) #1

declare dso_local i32 @sqlite3_free(i32) #1

declare dso_local i32 @memset(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @findLeafNode(%struct.TYPE_30__*, i32, i32**, i32*) #1

declare dso_local %struct.TYPE_27__* @rtreeSearchPointNew(%struct.TYPE_28__*, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nodeRowidIndex(%struct.TYPE_30__*, i32*, i32, i32*) #1

declare dso_local i32 @RTREE_QUEUE_TRACE(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @nodeAcquire(%struct.TYPE_30__*, i32, i32, i32**) #1

declare dso_local i32 @geopolyBBox(i32, i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local %struct.TYPE_28__* @sqlite3_malloc(i32) #1

declare dso_local i32 @rtreeStepToLeaf(%struct.TYPE_28__*) #1

declare dso_local i32 @nodeRelease(%struct.TYPE_30__*, i32*) #1

declare dso_local i32 @rtreeRelease(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
