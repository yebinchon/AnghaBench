; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fstreeBestIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fstreeBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, double, %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint* }
%struct.sqlite3_index_constraint_usage = type { i32 }
%struct.sqlite3_index_constraint = type { i64, i64, i64 }

@SQLITE_INDEX_CONSTRAINT_GLOB = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_LIKE = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @fstreeBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fstreeBestIndex(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sqlite3_index_constraint*, align 8
  %8 = alloca %struct.sqlite3_index_constraint_usage*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %67, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %70

15:                                               ; preds = %9
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %18 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %18, i64 %20
  store %struct.sqlite3_index_constraint* %21, %struct.sqlite3_index_constraint** %7, align 8
  %22 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %7, align 8
  %23 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %66

26:                                               ; preds = %15
  %27 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %7, align 8
  %28 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %26
  %32 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %7, align 8
  %33 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_GLOB, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %7, align 8
  %39 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_LIKE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %7, align 8
  %45 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %43, %37, %31
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %52, i64 %54
  store %struct.sqlite3_index_constraint_usage* %55, %struct.sqlite3_index_constraint_usage** %8, align 8
  %56 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %7, align 8
  %57 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %8, align 8
  %62 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store double 1.000000e+05, double* %64, align 8
  %65 = load i32, i32* @SQLITE_OK, align 4
  store i32 %65, i32* %3, align 4
  br label %74

66:                                               ; preds = %43, %26, %15
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %9

70:                                               ; preds = %9
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  store double 1.000000e+09, double* %72, align 8
  %73 = load i32, i32* @SQLITE_OK, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %49
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
