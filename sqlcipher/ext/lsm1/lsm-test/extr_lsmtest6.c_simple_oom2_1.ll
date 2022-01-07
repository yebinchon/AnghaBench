; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest6.c_simple_oom2_1.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest6.c_simple_oom2_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LSM_OK = common dso_local global i32 0, align 4
@LSMTEST6_TESTDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @simple_oom2_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simple_oom2_1(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 100, i32* %3, align 4
  store i32 10, i32* %4, align 4
  %10 = call i32* (...) @getDatasource()
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* @LSM_OK, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @LSMTEST6_TESTDB, align 4
  %13 = call i32 @testDeleteLsmdb(i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @testOomEnable(i32* %14, i32 0)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @LSMTEST6_TESTDB, align 4
  %18 = call i32 @testOomOpen(i32* %16, i32 %17, i32** %7, i32* %6)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @LSMTEST6_TESTDB, align 4
  %21 = call i32 @testOomOpen(i32* %19, i32 %20, i32** %8, i32* %6)
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %31, %1
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 100
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32*, i32** %2, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @testOomWriteData(i32* %26, i32* %27, i32* %28, i32 %29, i32* %6)
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %22

34:                                               ; preds = %22
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @testOomEnable(i32* %35, i32 1)
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  store i32 100, i32* %9, align 4
  br label %41

41:                                               ; preds = %54, %34
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 110
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load i32*, i32** %2, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @testOomWriteData(i32* %45, i32* %46, i32* %47, i32 %48, i32* %6)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %57

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %41

57:                                               ; preds = %52, %41
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @testOomAssertRc(i32* %58, i32 %59)
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @testOomEnable(i32* %61, i32 0)
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %77, %57
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 110
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 0
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi i1 [ false, %63 ], [ %68, %66 ]
  br i1 %70, label %71, label %80

71:                                               ; preds = %69
  %72 = load i32*, i32** %2, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @testOomWriteData(i32* %72, i32* %73, i32* %74, i32 %75, i32* %6)
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %63

80:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %90, %80
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 110
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i32*, i32** %2, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @testOomFetchData(i32* %85, i32* %86, i32* %87, i32 %88, i32* %6)
  br label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %81

93:                                               ; preds = %81
  %94 = load i32*, i32** %2, align 8
  %95 = call i32 @testOomEnable(i32* %94, i32 1)
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @lsm_close(i32* %96)
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @lsm_close(i32* %98)
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @testDatasourceFree(i32* %100)
  ret void
}

declare dso_local i32* @getDatasource(...) #1

declare dso_local i32 @testDeleteLsmdb(i32) #1

declare dso_local i32 @testOomEnable(i32*, i32) #1

declare dso_local i32 @testOomOpen(i32*, i32, i32**, i32*) #1

declare dso_local i32 @testOomWriteData(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @testOomAssertRc(i32*, i32) #1

declare dso_local i32 @testOomFetchData(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @lsm_close(i32*) #1

declare dso_local i32 @testDatasourceFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
