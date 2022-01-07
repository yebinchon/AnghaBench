; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_wholenumber.c_wholenumberBestIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_wholenumber.c_wholenumberBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, double, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.sqlite3_index_constraint* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sqlite3_index_constraint = type { i64, i64 }

@SQLITE_INDEX_CONSTRAINT_GT = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_GE = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_LT = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_LE = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @wholenumberBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wholenumberBestIndex(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sqlite3_index_constraint*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 7
  %13 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  store %struct.sqlite3_index_constraint* %13, %struct.sqlite3_index_constraint** %10, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %83, %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %88

20:                                               ; preds = %14
  %21 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %22 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %83

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %32 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_GT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %30, %26
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %46 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_GE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, 2
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %44, %40
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 12
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %60 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_LT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, 4
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %64, %58, %54
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, 12
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %74 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_LE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, 8
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %78, %72, %68
  br label %83

83:                                               ; preds = %82, %25
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  %86 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %87 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %86, i32 1
  store %struct.sqlite3_index_constraint* %87, %struct.sqlite3_index_constraint** %10, align 8
  br label %14

88:                                               ; preds = %14
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %88
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 6
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store i32 %95, i32* %103, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 6
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %94, %88
  %112 = load i32, i32* %9, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %111
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 6
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i32 %115, i32* %122, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 6
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store i32 1, i32* %129, align 4
  br label %130

130:                                              ; preds = %114, %111
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %146

135:                                              ; preds = %130
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 5
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %135
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 3
  store i32 1, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %135, %130
  %147 = load i32, i32* %6, align 4
  %148 = and i32 %147, 12
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 4
  store double 1.000000e+08, double* %152, align 8
  br label %164

153:                                              ; preds = %146
  %154 = load i32, i32* %6, align 4
  %155 = and i32 %154, 3
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 4
  store double 5.000000e+00, double* %159, align 8
  br label %163

160:                                              ; preds = %153
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 4
  store double 1.000000e+00, double* %162, align 8
  br label %163

163:                                              ; preds = %160, %157
  br label %164

164:                                              ; preds = %163, %150
  %165 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %165
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
