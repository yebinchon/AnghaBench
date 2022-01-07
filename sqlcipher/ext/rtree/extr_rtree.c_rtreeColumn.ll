; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32, i64, i32, i32 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@RTREE_COORD_REAL32 = common dso_local global i64 0, align 8
@RTREE_COORD_INT32 = common dso_local global i64 0, align 8
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i32)* @rtreeColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtreeColumn(%struct.TYPE_13__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_16__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %8, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = bitcast %struct.TYPE_13__* %18 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %9, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %21 = call %struct.TYPE_14__* @rtreeSearchPointFirst(%struct.TYPE_15__* %20)
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %10, align 8
  %22 = load i32, i32* @SQLITE_OK, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %24 = call i32* @rtreeNodeOfFirstSearchPoint(%struct.TYPE_15__* %23, i32* %12)
  store i32* %24, i32** %13, align 8
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %4, align 4
  br label %159

29:                                               ; preds = %3
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %31 = icmp eq %struct.TYPE_14__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @SQLITE_OK, align 4
  store i32 %33, i32* %4, align 4
  br label %159

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @nodeGetRowid(%struct.TYPE_17__* %39, i32* %40, i32 %43)
  %45 = call i32 @sqlite3_result_int64(i32* %38, i32 %44)
  br label %157

46:                                               ; preds = %34
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sle i32 %47, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %46
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 1
  %60 = call i32 @nodeGetCoord(%struct.TYPE_17__* %53, i32* %54, i32 %57, i32 %59, %struct.TYPE_16__* %11)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RTREE_COORD_REAL32, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %52
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sqlite3_result_double(i32* %67, i32 %69)
  br label %83

71:                                               ; preds = %52
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @RTREE_COORD_INT32, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @sqlite3_result_int(i32* %79, i32 %81)
  br label %83

83:                                               ; preds = %71, %66
  br label %156

84:                                               ; preds = %46
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %143, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %89
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = call i32 @sqlite3_prepare_v3(i32 %97, i32 %100, i32 -1, i32 0, i64* %102, i32 0)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %94
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %4, align 4
  br label %159

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %108, %89
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %114 = load i32*, i32** %13, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @nodeGetRowid(%struct.TYPE_17__* %113, i32* %114, i32 %117)
  %119 = call i32 @sqlite3_bind_int64(i64 %112, i32 1, i32 %118)
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @sqlite3_step(i64 %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @SQLITE_ROW, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %109
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  br label %142

130:                                              ; preds = %109
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @sqlite3_reset(i64 %133)
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @SQLITE_DONE, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = load i32, i32* @SQLITE_OK, align 4
  store i32 %139, i32* %12, align 4
  br label %140

140:                                              ; preds = %138, %130
  %141 = load i32, i32* %12, align 4
  store i32 %141, i32* %4, align 4
  br label %159

142:                                              ; preds = %127
  br label %143

143:                                              ; preds = %142, %84
  %144 = load i32*, i32** %6, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %148, %151
  %153 = add nsw i32 %152, 1
  %154 = call i32 @sqlite3_column_value(i64 %147, i32 %153)
  %155 = call i32 @sqlite3_result_value(i32* %144, i32 %154)
  br label %156

156:                                              ; preds = %143, %83
  br label %157

157:                                              ; preds = %156, %37
  %158 = load i32, i32* @SQLITE_OK, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %157, %140, %106, %32, %27
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.TYPE_14__* @rtreeSearchPointFirst(%struct.TYPE_15__*) #1

declare dso_local i32* @rtreeNodeOfFirstSearchPoint(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i32) #1

declare dso_local i32 @nodeGetRowid(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @nodeGetCoord(%struct.TYPE_17__*, i32*, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @sqlite3_result_double(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i32 @sqlite3_prepare_v3(i32, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @sqlite3_bind_int64(i64, i32, i32) #1

declare dso_local i32 @sqlite3_step(i64) #1

declare dso_local i32 @sqlite3_reset(i64) #1

declare dso_local i32 @sqlite3_result_value(i32*, i32) #1

declare dso_local i32 @sqlite3_column_value(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
