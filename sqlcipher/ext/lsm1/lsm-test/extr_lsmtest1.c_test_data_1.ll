; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest1.c_test_data_1.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest1.c_test_data_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@DATA_RANDOM = common dso_local global i32 0, align 4
@DATA_SEQUENTIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lsm\00", align 1
@LSM_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_data_1(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [14 x %struct.TYPE_7__], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = getelementptr inbounds [14 x %struct.TYPE_7__], [14 x %struct.TYPE_7__]* %7, i64 0, i64 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* @DATA_RANDOM, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i32 1000, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i32 100, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  store i32 10, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %18 = bitcast %struct.TYPE_6__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 20, i1 false)
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i64 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* @DATA_RANDOM, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store i32 1000, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i32 250, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  store i32 1000, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %26 = bitcast %struct.TYPE_6__* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 20, i1 false)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* @DATA_RANDOM, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i32 1000, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  store i32 250, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  store i32 1000, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 4
  %35 = bitcast %struct.TYPE_6__* %34 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %35, i8 0, i64 20, i1 false)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* @DATA_RANDOM, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 1000, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  store i32 250, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  store i32 1000, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 4
  %44 = bitcast %struct.TYPE_6__* %43 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %44, i8 0, i64 20, i1 false)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* @DATA_RANDOM, align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32 1000, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  store i32 250, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  store i32 1000, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  %53 = bitcast %struct.TYPE_6__* %52 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %53, i8 0, i64 20, i1 false)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* @DATA_RANDOM, align 4
  store i32 %57, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 100, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  store i32 25, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  store i32 100, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 4
  %62 = bitcast %struct.TYPE_6__* %61 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %62, i8 0, i64 20, i1 false)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 1, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* @DATA_RANDOM, align 4
  store i32 %66, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i32 1000, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store i32 250, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  store i32 1000, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 4
  %71 = bitcast %struct.TYPE_6__* %70 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %71, i8 0, i64 20, i1 false)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 1, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* @DATA_RANDOM, align 4
  store i32 %75, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 100, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  store i32 25, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  store i32 100, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 4
  %80 = bitcast %struct.TYPE_6__* %79 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %80, i8 0, i64 20, i1 false)
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 1, i32* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* @DATA_SEQUENTIAL, align 4
  store i32 %84, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i32 1000, i32* %85, align 4
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  store i32 250, i32* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  store i32 1000, i32* %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 4
  %89 = bitcast %struct.TYPE_6__* %88 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %89, i8 0, i64 20, i1 false)
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 1, i32* %90, align 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* @DATA_SEQUENTIAL, align 4
  store i32 %93, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i32 1000, i32* %94, align 4
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  store i32 250, i32* %95, align 4
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  store i32 1000, i32* %96, align 4
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %98 = bitcast %struct.TYPE_6__* %97 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %98, i8 0, i64 20, i1 false)
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 1, i32* %99, align 4
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* @DATA_SEQUENTIAL, align 4
  store i32 %102, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i32 1000, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  store i32 250, i32* %104, align 4
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  store i32 1000, i32* %105, align 4
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 4
  %107 = bitcast %struct.TYPE_6__* %106 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %107, i8 0, i64 20, i1 false)
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 1, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* @DATA_SEQUENTIAL, align 4
  store i32 %111, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32 100, i32* %112, align 4
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  store i32 25, i32* %113, align 4
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  store i32 100, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  %116 = bitcast %struct.TYPE_6__* %115 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %116, i8 0, i64 20, i1 false)
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i32 1, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* @DATA_RANDOM, align 4
  store i32 %120, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  store i32 100000, i32* %121, align 4
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  store i32 1000, i32* %122, align 4
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  store i32 100, i32* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 4
  %125 = bitcast %struct.TYPE_6__* %124 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %125, i8 0, i64 20, i1 false)
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* @DATA_SEQUENTIAL, align 4
  store i32 %128, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  store i32 100000, i32* %129, align 4
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  store i32 1000, i32* %130, align 4
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 3
  store i32 100, i32* %131, align 4
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 4
  %133 = bitcast %struct.TYPE_6__* %132 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %133, i8 0, i64 20, i1 false)
  store i32 0, i32* %9, align 4
  br label %134

134:                                              ; preds = %185, %3
  %135 = load i32, i32* %9, align 4
  %136 = icmp slt i32 %135, 2
  br i1 %136, label %137, label %188

137:                                              ; preds = %134
  %138 = load i32, i32* %9, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i8*, i8** %4, align 8
  %142 = call i64 @memcmp(i8* %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %188

145:                                              ; preds = %140, %137
  store i32 0, i32* %8, align 4
  br label %146

146:                                              ; preds = %181, %145
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @LSM_OK, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load i32, i32* %8, align 4
  %153 = getelementptr inbounds [14 x %struct.TYPE_7__], [14 x %struct.TYPE_7__]* %7, i64 0, i64 0
  %154 = call i32 @ArraySize(%struct.TYPE_7__* %153)
  %155 = icmp slt i32 %152, %154
  br label %156

156:                                              ; preds = %151, %146
  %157 = phi i1 [ false, %146 ], [ %155, %151 ]
  br i1 %157, label %158, label %184

158:                                              ; preds = %156
  %159 = load i8*, i8** %4, align 8
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [14 x %struct.TYPE_7__], [14 x %struct.TYPE_7__]* %7, i64 0, i64 %162
  %164 = call i8* @getName(i8* %159, i32 %160, %struct.TYPE_7__* %163)
  store i8* %164, i8** %10, align 8
  %165 = load i32*, i32** %6, align 8
  %166 = load i8*, i8** %5, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = call i64 @testCaseBegin(i32* %165, i8* %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %158
  %171 = load i8*, i8** %4, align 8
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [14 x %struct.TYPE_7__], [14 x %struct.TYPE_7__]* %7, i64 0, i64 %174
  %176 = load i32*, i32** %6, align 8
  %177 = call i32 @doDataTest1(i8* %171, i32 %172, %struct.TYPE_7__* %175, i32* %176)
  br label %178

178:                                              ; preds = %170, %158
  %179 = load i8*, i8** %10, align 8
  %180 = call i32 @testFree(i8* %179)
  br label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %8, align 4
  br label %146

184:                                              ; preds = %156
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %9, align 4
  br label %134

188:                                              ; preds = %144, %134
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @ArraySize(%struct.TYPE_7__*) #2

declare dso_local i8* @getName(i8*, i32, %struct.TYPE_7__*) #2

declare dso_local i64 @testCaseBegin(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @doDataTest1(i8*, i32, %struct.TYPE_7__*, i32*) #2

declare dso_local i32 @testFree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
