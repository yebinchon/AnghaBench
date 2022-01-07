; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_series.c_seriesFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_series.c_seriesFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32**)* @seriesFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seriesFilter(i32* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32** %4, i32*** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %5
  %19 = load i32**, i32*** %10, align 8
  %20 = load i32, i32* %12, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %12, align 4
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32*, i32** %19, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = call i8* @sqlite3_value_int64(i32* %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %32

29:                                               ; preds = %5
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %18
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i32**, i32*** %10, align 8
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32*, i32** %37, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = call i8* @sqlite3_value_int64(i32* %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %50

47:                                               ; preds = %32
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 -1, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %36
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = load i32**, i32*** %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32*, i32** %55, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = call i8* @sqlite3_value_int64(i32* %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %54
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %54
  br label %76

73:                                               ; preds = %50
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %72
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %96, %76
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %77
  %82 = load i32**, i32*** %10, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = call i64 @sqlite3_value_type(i32* %86)
  %88 = load i64, i64* @SQLITE_NULL, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 4
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  br label %99

95:                                               ; preds = %81
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %77

99:                                               ; preds = %90, %77
  %100 = load i32, i32* %7, align 4
  %101 = and i32 %100, 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %132

103:                                              ; preds = %99
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  store i32 1, i32* %105, align 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %103
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %118, %121
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = srem i32 %122, %125
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %115, %103
  br label %140

132:                                              ; preds = %99
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 3
  store i32 0, i32* %134, align 4
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %132, %131
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 5
  store i32 1, i32* %142, align 4
  %143 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %143
}

declare dso_local i8* @sqlite3_value_int64(i32*) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
