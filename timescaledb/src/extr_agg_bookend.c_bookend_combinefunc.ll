; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_agg_bookend.c_bookend_combinefunc.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_agg_bookend.c_bookend_combinefunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i8*, i32)* @bookend_combinefunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bookend_combinefunc(i32 %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %15 = icmp eq %struct.TYPE_12__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %18 = call i32 @PG_RETURN_POINTER(%struct.TYPE_12__* %17)
  br label %19

19:                                               ; preds = %16, %5
  %20 = load i32, i32* %11, align 4
  %21 = call %struct.TYPE_11__* @transcache_get(i32 %20)
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %13, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = icmp eq %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %52

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @MemoryContextSwitchTo(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @MemoryContextAlloc(i32 %27, i32 16)
  %29 = inttoptr i64 %28 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %8, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @typeinfocache_polydatumcopy(i32* %31, i64 %37, %struct.TYPE_13__* %35)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @typeinfocache_polydatumcopy(i32* %40, i64 %46, %struct.TYPE_13__* %44)
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @MemoryContextSwitchTo(i32 %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = call i32 @PG_RETURN_POINTER(%struct.TYPE_12__* %50)
  br label %52

52:                                               ; preds = %24, %19
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = call i32 @PG_RETURN_POINTER(%struct.TYPE_12__* %65)
  br label %130

67:                                               ; preds = %58, %52
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %71, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %67
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %85 = call i32 @PG_RETURN_POINTER(%struct.TYPE_12__* %84)
  br label %89

86:                                               ; preds = %77
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %88 = call i32 @PG_RETURN_POINTER(%struct.TYPE_12__* %87)
  br label %89

89:                                               ; preds = %86, %83
  br label %129

90:                                               ; preds = %67
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load i32, i32* %11, align 4
  %94 = load i8*, i8** %10, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @cmpfunccache_cmp(i32* %92, i32 %93, i8* %94, i64 %100, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %90
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @MemoryContextSwitchTo(i32 %106)
  store i32 %107, i32* %12, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @typeinfocache_polydatumcopy(i32* %109, i64 %115, %struct.TYPE_13__* %113)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @typeinfocache_polydatumcopy(i32* %118, i64 %124, %struct.TYPE_13__* %122)
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @MemoryContextSwitchTo(i32 %126)
  br label %128

128:                                              ; preds = %105, %90
  br label %129

129:                                              ; preds = %128, %89
  br label %130

130:                                              ; preds = %129, %64
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %132 = call i32 @PG_RETURN_POINTER(%struct.TYPE_12__* %131)
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @PG_RETURN_POINTER(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @transcache_get(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @typeinfocache_polydatumcopy(i32*, i64, %struct.TYPE_13__*) #1

declare dso_local i64 @cmpfunccache_cmp(i32*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
