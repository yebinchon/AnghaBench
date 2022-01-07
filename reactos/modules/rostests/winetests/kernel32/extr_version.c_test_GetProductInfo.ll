; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_version.c_test_GetProductInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_version.c_test_GetProductInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_GetProductInfo.table = private unnamed_addr constant [65 x i32] [i32 9, i32 8, i32 7, i32 6, i32 7, i32 0, i32 0, i32 0, i32 6, i32 2, i32 0, i32 0, i32 6, i32 1, i32 2, i32 0, i32 6, i32 1, i32 1, i32 0, i32 6, i32 1, i32 0, i32 2, i32 6, i32 1, i32 0, i32 0, i32 6, i32 0, i32 3, i32 0, i32 6, i32 0, i32 2, i32 0, i32 6, i32 0, i32 1, i32 5, i32 6, i32 0, i32 1, i32 0, i32 6, i32 0, i32 0, i32 0, i32 5, i32 3, i32 0, i32 0, i32 5, i32 2, i32 0, i32 0, i32 5, i32 1, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0], align 16
@PRODUCT_UNDEFINED = common dso_local global i32 0, align 4
@PRODUCT_ENTERPRISE_S_N_EVALUATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"got %d and 0x%x (expected TRUE and a valid PRODUCT_* value)\0A\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"got %d and 0x%x with 0x%x (expected FALSE and PRODUCT_UNDEFINED with LastError untouched)\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"got %d with 0x%x (expected FALSE with LastError untouched\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetProductInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetProductInfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [65 x i32], align 16
  %4 = alloca i32*, align 8
  %5 = bitcast [65 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([65 x i32]* @__const.test_GetProductInfo.table to i8*), i64 260, i1 false)
  %6 = getelementptr inbounds [65 x i32], [65 x i32]* %3, i64 0, i64 0
  store i32* %6, i32** %4, align 8
  br label %7

7:                                                ; preds = %63, %0
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %66

11:                                               ; preds = %7
  store i32 -559038737, i32* %1, align 4
  %12 = call i32 @SetLastError(i32 -559038737)
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pGetProductInfo(i32 %15, i32 %18, i32 %21, i32 %24, i32* %1)
  store i32 %25, i32* %2, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 6
  br i1 %29, label %30, label %47

30:                                               ; preds = %11
  %31 = load i32, i32* %2, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @PRODUCT_UNDEFINED, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @PRODUCT_ENTERPRISE_S_N_EVALUATION, align 4
  %40 = icmp sle i32 %38, %39
  br label %41

41:                                               ; preds = %37, %33, %30
  %42 = phi i1 [ false, %33 ], [ false, %30 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %43, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  br label %63

47:                                               ; preds = %11
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %1, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = call i32 (...) @GetLastError()
  %55 = icmp eq i32 %54, -559038737
  br label %56

56:                                               ; preds = %53, %50, %47
  %57 = phi i1 [ false, %50 ], [ false, %47 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* %1, align 4
  %61 = call i32 (...) @GetLastError()
  %62 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %58, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %41
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  store i32* %65, i32** %4, align 8
  br label %7

66:                                               ; preds = %7
  %67 = call i32 @SetLastError(i32 -559038737)
  %68 = call i32 @pGetProductInfo(i32 6, i32 1, i32 0, i32 0, i32* null)
  store i32 %68, i32* %2, align 4
  %69 = load i32, i32* %2, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = call i32 (...) @GetLastError()
  %73 = icmp eq i32 %72, -559038737
  br label %74

74:                                               ; preds = %71, %66
  %75 = phi i1 [ false, %66 ], [ %73, %71 ]
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %2, align 4
  %78 = call i32 (...) @GetLastError()
  %79 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %76, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %78)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @pGetProductInfo(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @GetLastError(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
