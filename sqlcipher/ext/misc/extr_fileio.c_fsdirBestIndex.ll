; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fileio.c_fsdirBestIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fileio.c_fsdirBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, double, %struct.TYPE_4__*, %struct.sqlite3_index_constraint* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sqlite3_index_constraint = type { i64, i32, i32 }

@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i64 0, align 8
@SQLITE_CONSTRAINT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @fsdirBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsdirBestIndex(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sqlite3_index_constraint*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 5
  %15 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %14, align 8
  store %struct.sqlite3_index_constraint* %15, %struct.sqlite3_index_constraint** %11, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %60, %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %65

22:                                               ; preds = %16
  %23 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %24 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %60

29:                                               ; preds = %22
  %30 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %31 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %59 [
    i32 128, label %33
    i32 129, label %46
  ]

33:                                               ; preds = %29
  %34 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %35 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %45

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 1, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %40
  br label %45

45:                                               ; preds = %44, %38
  br label %59

46:                                               ; preds = %29
  %47 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %48 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %58

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* %10, align 4
  br label %57

57:                                               ; preds = %56, %53
  br label %58

58:                                               ; preds = %57, %51
  br label %59

59:                                               ; preds = %29, %58, %45
  br label %60

60:                                               ; preds = %59, %28
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  %63 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %11, align 8
  %64 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %63, i32 1
  store %struct.sqlite3_index_constraint* %64, %struct.sqlite3_index_constraint** %11, align 8
  br label %16

65:                                               ; preds = %16
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68, %65
  %72 = load i32, i32* @SQLITE_CONSTRAINT, align 4
  store i32 %72, i32* %3, align 4
  br label %125

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store i32 2147483647, i32* %80, align 8
  br label %123

81:                                               ; preds = %73
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 1, i32* %95, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %81
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  store i32 2, i32* %112, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store i32 2, i32* %114, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 3
  store double 1.000000e+01, double* %116, align 8
  br label %122

117:                                              ; preds = %81
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  store i32 1, i32* %119, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  store double 1.000000e+02, double* %121, align 8
  br label %122

122:                                              ; preds = %117, %98
  br label %123

123:                                              ; preds = %122, %76
  %124 = load i32, i32* @SQLITE_OK, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %71
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
