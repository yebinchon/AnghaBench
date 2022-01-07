; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_series.c_seriesBestIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_series.c_seriesBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, double, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.sqlite3_index_constraint* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sqlite3_index_constraint = type { i64, i64, i64 }

@SERIES_COLUMN_STOP = common dso_local global i64 0, align 8
@SERIES_COLUMN_START = common dso_local global i64 0, align 8
@SERIES_COLUMN_STEP = common dso_local global i64 0, align 8
@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i64 0, align 8
@SQLITE_SERIES_CONSTRAINT_VERIFY = common dso_local global i32 0, align 4
@SQLITE_CONSTRAINT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @seriesBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seriesBestIndex(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca %struct.sqlite3_index_constraint*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i64, i64* @SERIES_COLUMN_STOP, align 8
  %16 = load i64, i64* @SERIES_COLUMN_START, align 8
  %17 = add nsw i64 %16, 1
  %18 = icmp eq i64 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* @SERIES_COLUMN_STEP, align 8
  %22 = load i64, i64* @SERIES_COLUMN_START, align 8
  %23 = add nsw i64 %22, 2
  %24 = icmp eq i64 %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 -1, i32* %27, align 4
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 -1, i32* %28, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 -1, i32* %29, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 8
  %32 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %31, align 8
  store %struct.sqlite3_index_constraint* %32, %struct.sqlite3_index_constraint** %12, align 8
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %88, %2
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %93

39:                                               ; preds = %33
  %40 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %41 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SERIES_COLUMN_START, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %88

46:                                               ; preds = %39
  %47 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %48 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SERIES_COLUMN_START, align 8
  %51 = sub nsw i64 %49, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* %13, align 4
  %57 = icmp sle i32 %56, 2
  br label %58

58:                                               ; preds = %55, %46
  %59 = phi i1 [ false, %46 ], [ %57, %55 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32, i32* %13, align 4
  %63 = shl i32 1, %62
  store i32 %63, i32* %14, align 4
  %64 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %65 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %88

72:                                               ; preds = %58
  %73 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %74 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %84
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %78, %72
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87, %68, %45
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  %91 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %12, align 8
  %92 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %91, i32 1
  store %struct.sqlite3_index_constraint* %92, %struct.sqlite3_index_constraint** %12, align 8
  br label %33

93:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %125, %93
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 3
  br i1 %96, label %97, label %128

97:                                               ; preds = %94
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %7, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %97
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 7
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  store i32 %105, i32* %112, align 4
  %113 = load i32, i32* @SQLITE_SERIES_CONSTRAINT_VERIFY, align 4
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 7
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  store i32 %116, i32* %123, align 4
  br label %124

124:                                              ; preds = %103, %97
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %94

128:                                              ; preds = %94
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %8, align 4
  %131 = xor i32 %130, -1
  %132 = and i32 %129, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* @SQLITE_CONSTRAINT, align 4
  store i32 %135, i32* %3, align 4
  br label %178

136:                                              ; preds = %128
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, 3
  %139 = icmp eq i32 %138, 3
  br i1 %139, label %140, label %170

140:                                              ; preds = %136
  %141 = load i32, i32* %8, align 4
  %142 = and i32 %141, 4
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = sub nsw i32 2, %144
  %146 = sitofp i32 %145 to double
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  store double %146, double* %148, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  store i32 1000, i32* %150, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %169

155:                                              ; preds = %140
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 6
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = load i32, i32* %8, align 4
  %165 = or i32 %164, 8
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %163, %155
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 4
  store i32 1, i32* %168, align 8
  br label %169

169:                                              ; preds = %166, %140
  br label %173

170:                                              ; preds = %136
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  store i32 2147483647, i32* %172, align 8
  br label %173

173:                                              ; preds = %170, %169
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* @SQLITE_OK, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %173, %134
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
