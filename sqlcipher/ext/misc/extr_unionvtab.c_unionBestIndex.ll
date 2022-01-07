; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_unionvtab.c_unionBestIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_unionvtab.c_unionBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, double, i32, %struct.sqlite3_index_constraint*, %struct.TYPE_5__*, i32 }
%struct.sqlite3_index_constraint = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }

@SQLITE_INDEX_SCAN_UNIQUE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @unionBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionBestIndex(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sqlite3_index_constraint*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %58, %2
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %16
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %25, i64 %27
  store %struct.sqlite3_index_constraint* %28, %struct.sqlite3_index_constraint** %10, align 8
  %29 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %30 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %22
  %34 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %35 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %40 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %38, %33
  %47 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %48 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %56 [
    i32 132, label %50
    i32 129, label %52
    i32 128, label %52
    i32 131, label %54
    i32 130, label %54
  ]

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %6, align 4
  br label %56

52:                                               ; preds = %46, %46
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %7, align 4
  br label %56

54:                                               ; preds = %46, %46
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %46, %54, %52, %50
  br label %57

57:                                               ; preds = %56, %38, %22
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %16

61:                                               ; preds = %16
  %62 = load i32, i32* %6, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* @SQLITE_INDEX_SCAN_UNIQUE, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store double 3.000000e+00, double* %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  store i32 132, i32* %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  br label %164

88:                                               ; preds = %61
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1000000, i32* %13, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %120

91:                                               ; preds = %88
  %92 = load i32, i32* %13, align 4
  %93 = sdiv i32 %92, 2
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 5
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 %94, i32* %102, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 5
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 4
  %112 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %112, i64 %114
  %116 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %91, %88
  %121 = load i32, i32* %8, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %152

123:                                              ; preds = %120
  %124 = load i32, i32* %13, align 4
  %125 = sdiv i32 %124, 2
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i32 %126, i32* %134, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 5
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  store i32 1, i32* %141, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 4
  %144 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %144, i64 %146
  %148 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %123, %120
  %153 = load i32, i32* %13, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %13, align 4
  %157 = sitofp i32 %156 to double
  %158 = fmul double 3.000000e+00, %157
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  store double %158, double* %160, align 8
  %161 = load i32, i32* %12, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %152, %64
  %165 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %165
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
