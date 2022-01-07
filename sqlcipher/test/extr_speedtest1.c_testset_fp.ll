; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_speedtest1.c_testset_fp.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_speedtest1.c_testset_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"Fill a table with %d FP values\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"CREATE%s TABLE t1(a REAL %s, b REAL %s);\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"INSERT INTO t1 VALUES(?1,?2); -- %d times\00", align 1
@SQLITE_STATIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%d range queries\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"SELECT sum(b) FROM t1 WHERE a BETWEEN ?1 AND ?2\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"CREATE INDEX three times\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"BEGIN;\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"CREATE INDEX t1a ON t1(a);\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"CREATE INDEX t1b ON t1(b);\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"CREATE INDEX t1ab ON t1(a,b);\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"COMMIT;\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"%d indexed range queries\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testset_fp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %6 = mul nsw i32 %5, 5000
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = mul nsw i32 %7, 2
  %9 = call i32 (i32, i8*, ...) @speedtest1_begin_test(i32 100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 (i8*, ...) @speedtest1_exec(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @isTemp(i32 1)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 4
  %14 = call i32 (i8*, ...) @speedtest1_exec(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* %1, align 4
  %16 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  store i32 1, i32* %2, align 4
  br label %17

17:                                               ; preds = %35, %0
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %23 = call i32 @speedtest1_random_ascii_fp(i8* %22)
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %25 = call i32 @speedtest1_random_ascii_fp(i8* %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %28 = load i32, i32* @SQLITE_STATIC, align 4
  %29 = call i32 @sqlite3_bind_text(i32 %26, i32 1, i8* %27, i32 -1, i32 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %32 = load i32, i32* @SQLITE_STATIC, align 4
  %33 = call i32 @sqlite3_bind_text(i32 %30, i32 2, i8* %31, i32 -1, i32 %32)
  %34 = call i32 (...) @speedtest1_run()
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %17

38:                                               ; preds = %17
  %39 = call i32 (i8*, ...) @speedtest1_exec(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %40 = call i32 (...) @speedtest1_end_test()
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %42 = sdiv i32 %41, 25
  %43 = add nsw i32 %42, 2
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = call i32 (i32, i8*, ...) @speedtest1_begin_test(i32 110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %47

47:                                               ; preds = %65, %38
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* %1, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %47
  %52 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %53 = call i32 @speedtest1_random_ascii_fp(i8* %52)
  %54 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %55 = call i32 @speedtest1_random_ascii_fp(i8* %54)
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %57 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %58 = load i32, i32* @SQLITE_STATIC, align 4
  %59 = call i32 @sqlite3_bind_text(i32 %56, i32 1, i8* %57, i32 -1, i32 %58)
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %61 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %62 = load i32, i32* @SQLITE_STATIC, align 4
  %63 = call i32 @sqlite3_bind_text(i32 %60, i32 2, i8* %61, i32 -1, i32 %62)
  %64 = call i32 (...) @speedtest1_run()
  br label %65

65:                                               ; preds = %51
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  br label %47

68:                                               ; preds = %47
  %69 = call i32 (...) @speedtest1_end_test()
  %70 = call i32 (i32, i8*, ...) @speedtest1_begin_test(i32 120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %71 = call i32 (i8*, ...) @speedtest1_exec(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %72 = call i32 (i8*, ...) @speedtest1_exec(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %73 = call i32 (i8*, ...) @speedtest1_exec(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %74 = call i32 (i8*, ...) @speedtest1_exec(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %75 = call i32 (i8*, ...) @speedtest1_exec(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %76 = call i32 (...) @speedtest1_end_test()
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %78 = sdiv i32 %77, 3
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %1, align 4
  %80 = load i32, i32* %1, align 4
  %81 = call i32 (i32, i8*, ...) @speedtest1_begin_test(i32 130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %80)
  %82 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %83

83:                                               ; preds = %101, %68
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* %1, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %83
  %88 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %89 = call i32 @speedtest1_random_ascii_fp(i8* %88)
  %90 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %91 = call i32 @speedtest1_random_ascii_fp(i8* %90)
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %93 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %94 = load i32, i32* @SQLITE_STATIC, align 4
  %95 = call i32 @sqlite3_bind_text(i32 %92, i32 1, i8* %93, i32 -1, i32 %94)
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %97 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %98 = load i32, i32* @SQLITE_STATIC, align 4
  %99 = call i32 @sqlite3_bind_text(i32 %96, i32 2, i8* %97, i32 -1, i32 %98)
  %100 = call i32 (...) @speedtest1_run()
  br label %101

101:                                              ; preds = %87
  %102 = load i32, i32* %2, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %2, align 4
  br label %83

104:                                              ; preds = %83
  %105 = call i32 (...) @speedtest1_end_test()
  ret void
}

declare dso_local i32 @speedtest1_begin_test(i32, i8*, ...) #1

declare dso_local i32 @speedtest1_exec(i8*, ...) #1

declare dso_local i32 @isTemp(i32) #1

declare dso_local i32 @speedtest1_prepare(i8*, ...) #1

declare dso_local i32 @speedtest1_random_ascii_fp(i8*) #1

declare dso_local i32 @sqlite3_bind_text(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @speedtest1_run(...) #1

declare dso_local i32 @speedtest1_end_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
