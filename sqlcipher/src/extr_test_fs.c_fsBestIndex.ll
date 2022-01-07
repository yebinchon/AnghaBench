; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fsBestIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fsBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, double, %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint* }
%struct.sqlite3_index_constraint_usage = type { i32, i64 }
%struct.sqlite3_index_constraint = type { i64, i64, i64 }

@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @fsBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsBestIndex(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sqlite3_index_constraint*, align 8
  %7 = alloca %struct.sqlite3_index_constraint_usage*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %52, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %17, i64 %19
  store %struct.sqlite3_index_constraint* %20, %struct.sqlite3_index_constraint** %6, align 8
  %21 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %6, align 8
  %22 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %14
  %26 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %6, align 8
  %27 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %6, align 8
  %32 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %39, i64 %41
  store %struct.sqlite3_index_constraint_usage* %42, %struct.sqlite3_index_constraint_usage** %7, align 8
  %43 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %7, align 8
  %44 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %7, align 8
  %46 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store double 1.000000e+00, double* %50, align 8
  br label %55

51:                                               ; preds = %30, %25, %14
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %8

55:                                               ; preds = %36, %8
  %56 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
