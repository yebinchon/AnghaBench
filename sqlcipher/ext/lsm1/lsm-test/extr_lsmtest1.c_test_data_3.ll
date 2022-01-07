; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest1.c_test_data_3.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest1.c_test_data_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@__const.test_data_3.aTest = private unnamed_addr constant [2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 100, i32 1000, i32 5, i32 5, i32 50, i32 100 }, %struct.TYPE_5__ { i32 100, i32 1000, i32 2, i32 2, i32 5, i32 10 }], align 16
@LSM_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_data_3(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [2 x %struct.TYPE_5__], align 16
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = bitcast [2 x %struct.TYPE_5__]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([2 x %struct.TYPE_5__]* @__const.test_data_3.aTest to i8*), i64 48, i1 false)
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %44, %3
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LSM_OK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %7, i64 0, i64 0
  %19 = call i32 @ArraySize(%struct.TYPE_5__* %18)
  %20 = icmp slt i32 %17, %19
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi i1 [ false, %11 ], [ %20, %16 ]
  br i1 %22, label %23, label %47

23:                                               ; preds = %21
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %7, i64 0, i64 %26
  %28 = call i8* @getName3(i8* %24, %struct.TYPE_5__* %27)
  store i8* %28, i8** %9, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 @testCaseBegin(i32* %29, i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %23
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %7, i64 0, i64 %37
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @doDataTest3(i8* %35, %struct.TYPE_5__* %38, i32* %39)
  br label %41

41:                                               ; preds = %34, %23
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @testFree(i8* %42)
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %11

47:                                               ; preds = %21
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ArraySize(%struct.TYPE_5__*) #2

declare dso_local i8* @getName3(i8*, %struct.TYPE_5__*) #2

declare dso_local i64 @testCaseBegin(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @doDataTest3(i8*, %struct.TYPE_5__*, i32*) #2

declare dso_local i32 @testFree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
