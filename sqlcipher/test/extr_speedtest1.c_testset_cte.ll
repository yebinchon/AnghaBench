; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_speedtest1.c_testset_cte.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_speedtest1.c_testset_cte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@testset_cte.azPuzzle = internal global [3 x i8*] [i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [82 x i8] c"534...9..67.195....98....6.8...6...34..8.3..1....2...6.6....28....419..5...28..79\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"53....9..6..195....98....6.8...6...34..8.3..1....2...6.6....28....419..5....8..79\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"53.......6..195....98....6.8...6...34..8.3..1....2...6.6....28....419..5....8..79\00", align 1
@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Sudoku with recursive 'digits'\00", align 1
@.str.4 = private unnamed_addr constant [804 x i8] c"WITH RECURSIVE\0A  input(sud) AS (VALUES(?1)),\0A  digits(z,lp) AS (\0A    VALUES('1', 1)\0A    UNION ALL\0A    SELECT CAST(lp+1 AS TEXT), lp+1 FROM digits WHERE lp<9\0A  ),\0A  x(s, ind) AS (\0A    SELECT sud, instr(sud, '.') FROM input\0A    UNION ALL\0A    SELECT\0A      substr(s, 1, ind-1) || z || substr(s, ind+1),\0A      instr( substr(s, 1, ind-1) || z || substr(s, ind+1), '.' )\0A     FROM x, digits AS z\0A    WHERE ind>0\0A      AND NOT EXISTS (\0A            SELECT 1\0A              FROM digits AS lp\0A             WHERE z.z = substr(s, ((ind-1)/9)*9 + lp, 1)\0A                OR z.z = substr(s, ((ind-1)%%9) + (lp-1)*9 + 1, 1)\0A                OR z.z = substr(s, (((ind-1)/3) %% 3) * 3\0A                        + ((ind-1)/27) * 27 + lp\0A                        + ((lp-1) / 3) * 6, 1)\0A         )\0A  )\0ASELECT s FROM x WHERE ind=0;\00", align 1
@SQLITE_STATIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Sudoku with VALUES 'digits'\00", align 1
@.str.6 = private unnamed_addr constant [812 x i8] c"WITH RECURSIVE\0A  input(sud) AS (VALUES(?1)),\0A  digits(z,lp) AS (VALUES('1',1),('2',2),('3',3),('4',4),('5',5),\0A                         ('6',6),('7',7),('8',8),('9',9)),\0A  x(s, ind) AS (\0A    SELECT sud, instr(sud, '.') FROM input\0A    UNION ALL\0A    SELECT\0A      substr(s, 1, ind-1) || z || substr(s, ind+1),\0A      instr( substr(s, 1, ind-1) || z || substr(s, ind+1), '.' )\0A     FROM x, digits AS z\0A    WHERE ind>0\0A      AND NOT EXISTS (\0A            SELECT 1\0A              FROM digits AS lp\0A             WHERE z.z = substr(s, ((ind-1)/9)*9 + lp, 1)\0A                OR z.z = substr(s, ((ind-1)%%9) + (lp-1)*9 + 1, 1)\0A                OR z.z = substr(s, (((ind-1)/3) %% 3) * 3\0A                        + ((ind-1)/27) * 27 + lp\0A                        + ((lp-1) / 3) * 6, 1)\0A         )\0A  )\0ASELECT s FROM x WHERE ind=0;\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Mandelbrot Set with spacing=%f\00", align 1
@.str.8 = private unnamed_addr constant [596 x i8] c"WITH RECURSIVE \0A  xaxis(x) AS (VALUES(-2.0) UNION ALL SELECT x+?1 FROM xaxis WHERE x<1.2),\0A  yaxis(y) AS (VALUES(-1.0) UNION ALL SELECT y+?2 FROM yaxis WHERE y<1.0),\0A  m(iter, cx, cy, x, y) AS (\0A    SELECT 0, x, y, 0.0, 0.0 FROM xaxis, yaxis\0A    UNION ALL\0A    SELECT iter+1, cx, cy, x*x-y*y + cx, 2.0*x*y + cy FROM m \0A     WHERE (x*x + y*y) < 4.0 AND iter<28\0A  ),\0A  m2(iter, cx, cy) AS (\0A    SELECT max(iter), cx, cy FROM m GROUP BY cx, cy\0A  ),\0A  a(t) AS (\0A    SELECT group_concat( substr(' .+*#', 1+min(iter/7,4), 1), '') \0A    FROM m2 GROUP BY cy\0A  )\0ASELECT group_concat(rtrim(t),x'0a') FROM a;\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"EXCEPT operator on %d-element tables\00", align 1
@.str.10 = private unnamed_addr constant [231 x i8] c"WITH RECURSIVE \0A  t1(x) AS (VALUES(2) UNION ALL SELECT x+2 FROM t1 WHERE x<%d),\0A  t2(y) AS (VALUES(3) UNION ALL SELECT y+3 FROM t2 WHERE y<%d)\0ASELECT count(x), avg(x) FROM (\0A  SELECT x FROM t1 EXCEPT SELECT y FROM t2 ORDER BY 1\0A);\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testset_cte() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %5 = icmp slt i32 %4, 25
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @testset_cte.azPuzzle, i64 0, i64 0), align 16
  store i8* %7, i8** %1, align 8
  br label %16

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %10 = icmp slt i32 %9, 70
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @testset_cte.azPuzzle, i64 0, i64 1), align 8
  store i8* %12, i8** %1, align 8
  br label %15

13:                                               ; preds = %8
  %14 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @testset_cte.azPuzzle, i64 0, i64 2), align 16
  store i8* %14, i8** %1, align 8
  br label %15

15:                                               ; preds = %13, %11
  br label %16

16:                                               ; preds = %15, %6
  %17 = call i32 (i32, i8*, ...) @speedtest1_begin_test(i32 100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([804 x i8], [804 x i8]* @.str.4, i64 0, i64 0))
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %20 = load i8*, i8** %1, align 8
  %21 = load i32, i32* @SQLITE_STATIC, align 4
  %22 = call i32 @sqlite3_bind_text(i32 %19, i32 1, i8* %20, i32 -1, i32 %21)
  %23 = call i32 (...) @speedtest1_run()
  %24 = call i32 (...) @speedtest1_end_test()
  %25 = call i32 (i32, i8*, ...) @speedtest1_begin_test(i32 200, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([812 x i8], [812 x i8]* @.str.6, i64 0, i64 0))
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %28 = load i8*, i8** %1, align 8
  %29 = load i32, i32* @SQLITE_STATIC, align 4
  %30 = call i32 @sqlite3_bind_text(i32 %27, i32 1, i8* %28, i32 -1, i32 %29)
  %31 = call i32 (...) @speedtest1_run()
  %32 = call i32 (...) @speedtest1_end_test()
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %34 = sitofp i32 %33 to double
  %35 = fdiv double 5.000000e+00, %34
  store double %35, double* %2, align 8
  %36 = load double, double* %2, align 8
  %37 = call i32 (i32, i8*, ...) @speedtest1_begin_test(i32 300, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), double %36)
  %38 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([596 x i8], [596 x i8]* @.str.8, i64 0, i64 0))
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %40 = load double, double* %2, align 8
  %41 = fmul double %40, 5.000000e-02
  %42 = call i32 @sqlite3_bind_double(i32 %39, i32 1, double %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %44 = load double, double* %2, align 8
  %45 = call i32 @sqlite3_bind_double(i32 %43, i32 2, double %44)
  %46 = call i32 (...) @speedtest1_run()
  %47 = call i32 (...) @speedtest1_end_test()
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %49 = mul nsw i32 10000, %48
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 (i32, i8*, ...) @speedtest1_begin_test(i32 400, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 (i8*, ...) @speedtest1_prepare(i8* getelementptr inbounds ([231 x i8], [231 x i8]* @.str.10, i64 0, i64 0), i32 %52, i32 %53)
  %55 = call i32 (...) @speedtest1_run()
  %56 = call i32 (...) @speedtest1_end_test()
  ret void
}

declare dso_local i32 @speedtest1_begin_test(i32, i8*, ...) #1

declare dso_local i32 @speedtest1_prepare(i8*, ...) #1

declare dso_local i32 @sqlite3_bind_text(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @speedtest1_run(...) #1

declare dso_local i32 @speedtest1_end_test(...) #1

declare dso_local i32 @sqlite3_bind_double(i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
