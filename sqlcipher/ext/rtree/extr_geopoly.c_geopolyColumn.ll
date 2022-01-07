; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32)* @geopolyColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geopolyColumn(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %8, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = bitcast %struct.TYPE_10__* %17 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %9, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %20 = call %struct.TYPE_11__* @rtreeSearchPointFirst(%struct.TYPE_12__* %19)
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %10, align 8
  %21 = load i32, i32* @SQLITE_OK, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = call i32* @rtreeNodeOfFirstSearchPoint(%struct.TYPE_12__* %22, i32* %11)
  store i32* %23, i32** %12, align 8
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %118

28:                                               ; preds = %3
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %30 = icmp eq %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @SQLITE_OK, align 4
  store i32 %32, i32* %4, align 4
  br label %118

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @sqlite3_vtab_nochange(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @SQLITE_OK, align 4
  store i32 %41, i32* %4, align 4
  br label %118

42:                                               ; preds = %36, %33
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %43, %46
  br i1 %47, label %48, label %116

48:                                               ; preds = %42
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %107, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = call i32 @sqlite3_prepare_v3(i32 %61, i32 %64, i32 -1, i32 0, i64* %66, i32 0)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %4, align 4
  br label %118

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %53
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @nodeGetRowid(%struct.TYPE_13__* %77, i32* %78, i32 %81)
  %83 = call i32 @sqlite3_bind_int64(i64 %76, i32 1, i32 %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @sqlite3_step(i64 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @SQLITE_ROW, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %73
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  br label %106

94:                                               ; preds = %73
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @sqlite3_reset(i64 %97)
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @SQLITE_DONE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* @SQLITE_OK, align 4
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %102, %94
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %4, align 4
  br label %118

106:                                              ; preds = %91
  br label %107

107:                                              ; preds = %106, %48
  %108 = load i32*, i32** %6, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 2
  %114 = call i32 @sqlite3_column_value(i64 %111, i32 %113)
  %115 = call i32 @sqlite3_result_value(i32* %108, i32 %114)
  br label %116

116:                                              ; preds = %107, %42
  %117 = load i32, i32* @SQLITE_OK, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %104, %70, %40, %31, %26
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_11__* @rtreeSearchPointFirst(%struct.TYPE_12__*) #1

declare dso_local i32* @rtreeNodeOfFirstSearchPoint(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @sqlite3_vtab_nochange(i32*) #1

declare dso_local i32 @sqlite3_prepare_v3(i32, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @sqlite3_bind_int64(i64, i32, i32) #1

declare dso_local i32 @nodeGetRowid(%struct.TYPE_13__*, i32*, i32) #1

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
