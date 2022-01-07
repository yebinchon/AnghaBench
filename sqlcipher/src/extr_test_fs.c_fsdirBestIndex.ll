; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fsdirBestIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fsdirBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i32, i32, %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint* }
%struct.sqlite3_index_constraint_usage = type { i32, i32 }
%struct.sqlite3_index_constraint = type { i64, i64, i64 }

@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @fsdirBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsdirBestIndex(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sqlite3_index_constraint*, align 8
  %7 = alloca %struct.sqlite3_index_constraint_usage*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store double 1.000000e+09, double* %9, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %54, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %10
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %19 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %19, i64 %21
  store %struct.sqlite3_index_constraint* %22, %struct.sqlite3_index_constraint** %6, align 8
  %23 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %6, align 8
  %24 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %16
  %28 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %6, align 8
  %29 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %27
  %33 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %6, align 8
  %34 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %41, i64 %43
  store %struct.sqlite3_index_constraint_usage* %44, %struct.sqlite3_index_constraint_usage** %7, align 8
  %45 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %7, align 8
  %46 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %7, align 8
  %48 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i32 1, i32* %50, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store double 1.000000e+00, double* %52, align 8
  br label %57

53:                                               ; preds = %32, %27, %16
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %10

57:                                               ; preds = %38, %10
  %58 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
