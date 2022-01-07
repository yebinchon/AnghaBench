; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest9.c_test_data_4.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest9.c_test_data_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@DATA_RANDOM = common dso_local global i32 0, align 4
@LSM_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_data_4(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [2 x %struct.TYPE_7__], align 16
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %7, i64 0, i64 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* @DATA_RANDOM, align 4
  store i32 %12, i32* %11, align 16
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32 10000, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  store i32 10, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  %16 = bitcast %struct.TYPE_6__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 20, i1 false)
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i64 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* @DATA_RANDOM, align 4
  store i32 %19, i32* %18, align 16
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  store i32 10000, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  store i32 10, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  %23 = bitcast %struct.TYPE_6__* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 20, i1 false)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 1, i32* %24, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %58, %3
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @LSM_OK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %7, i64 0, i64 0
  %33 = call i32 @ArraySize(%struct.TYPE_7__* %32)
  %34 = icmp slt i32 %31, %33
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ false, %25 ], [ %34, %30 ]
  br i1 %36, label %37, label %61

37:                                               ; preds = %35
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %7, i64 0, i64 %40
  %42 = call i8* @getName4(i8* %38, %struct.TYPE_7__* %41)
  store i8* %42, i8** %9, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @testCaseBegin(i32* %43, i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %7, i64 0, i64 %51
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @doDataTest4(i8* %49, %struct.TYPE_7__* %52, i32* %53)
  br label %55

55:                                               ; preds = %48, %37
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @testFree(i8* %56)
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %25

61:                                               ; preds = %35
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ArraySize(%struct.TYPE_7__*) #2

declare dso_local i8* @getName4(i8*, %struct.TYPE_7__*) #2

declare dso_local i64 @testCaseBegin(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @doDataTest4(i8*, %struct.TYPE_7__*, i32*) #2

declare dso_local i32 @testFree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
