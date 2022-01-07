; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_cache.c_ts_cache_fetch.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_cache.c_ts_cache_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { {}*, {}*, %struct.TYPE_11__, i32 (%struct.TYPE_12__*)*, i32*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i8* }

@HASH_FIND = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"hash %s is not initialized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ts_cache_fetch(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)**
  %10 = load i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)*, i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)** %9, align 8
  %11 = icmp eq i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @HASH_FIND, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @HASH_ENTER, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i32, i32* @ERROR, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @elog(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 3
  %34 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %33, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = call i32 %34(%struct.TYPE_12__* %35)
  %37 = load i32, i32* %6, align 4
  %38 = call i8* @hash_search(i32* %31, i32 %36, i32 %37, i32* %5)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %28
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = bitcast {}** %50 to i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)**
  %52 = load i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)*, i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)** %51, align 8
  %53 = icmp ne i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %43
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = bitcast {}** %56 to i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)**
  %58 = load i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)*, i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)** %57, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = call i8* %58(%struct.TYPE_13__* %59, %struct.TYPE_12__* %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %54, %43
  br label %92

65:                                               ; preds = %28
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = bitcast {}** %72 to i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)**
  %74 = load i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)*, i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)** %73, align 8
  %75 = icmp ne i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %65
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = bitcast {}** %83 to i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)**
  %85 = load i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)*, i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)** %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = call i8* %85(%struct.TYPE_13__* %86, %struct.TYPE_12__* %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %76, %65
  br label %92

92:                                               ; preds = %91, %64
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  ret i8* %95
}

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i8* @hash_search(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
