; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_main.c_do_test.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_main.c_do_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Usage: test ?PATTERN?\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_test(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @testPrintError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %100

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  br label %21

21:                                               ; preds = %17, %14
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %61, %21
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @tdb_system_name(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @tdb_system_name(i32 %27)
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @test_data_1(i64 %28, i8* %29, i32* %7)
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @tdb_system_name(i32 %31)
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @test_data_2(i64 %32, i8* %33, i32* %7)
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @tdb_system_name(i32 %35)
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @test_data_3(i64 %36, i8* %37, i32* %7)
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @tdb_system_name(i32 %39)
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @test_data_4(i64 %40, i8* %41, i32* %7)
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @tdb_system_name(i32 %43)
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @test_rollback(i64 %44, i8* %45, i32* %7)
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @tdb_system_name(i32 %47)
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @test_mc(i64 %48, i8* %49, i32* %7)
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @tdb_system_name(i32 %51)
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @test_mt(i64 %52, i8* %53, i32* %7)
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %26
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %26
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %22

64:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @test_oom(i8* %65, i32* %7)
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %69, %64
  store i32 0, i32* %7, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @test_api(i8* %73, i32* %7)
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %77, %72
  store i32 0, i32* %7, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @do_crash_test(i8* %81, i32* %7)
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %85, %80
  store i32 0, i32* %7, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @do_writer_crash_test(i8* %89, i32* %7)
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %12
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @testPrintError(i8*) #1

declare dso_local i64 @tdb_system_name(i32) #1

declare dso_local i32 @test_data_1(i64, i8*, i32*) #1

declare dso_local i32 @test_data_2(i64, i8*, i32*) #1

declare dso_local i32 @test_data_3(i64, i8*, i32*) #1

declare dso_local i32 @test_data_4(i64, i8*, i32*) #1

declare dso_local i32 @test_rollback(i64, i8*, i32*) #1

declare dso_local i32 @test_mc(i64, i8*, i32*) #1

declare dso_local i32 @test_mt(i64, i8*, i32*) #1

declare dso_local i32 @test_oom(i8*, i32*) #1

declare dso_local i32 @test_api(i8*, i32*) #1

declare dso_local i32 @do_crash_test(i8*, i32*) #1

declare dso_local i32 @do_writer_crash_test(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
