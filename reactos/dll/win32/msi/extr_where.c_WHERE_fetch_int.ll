; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_WHERE_fetch_int.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_WHERE_fetch_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (%struct.TYPE_12__*, i64, i64, i64*)* }

@.str = private unnamed_addr constant [13 x i8] c"%p %d %d %p\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, i64, i64, i64*)* @WHERE_fetch_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @WHERE_fetch_int(%struct.tagMSIVIEW* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.tagMSIVIEW*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %6, align 8
  %15 = bitcast %struct.tagMSIVIEW* %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %10, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64*, i64** %9, align 8
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %16, i64 %17, i64 %18, i64* %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %26, i64* %5, align 8
  br label %64

27:                                               ; preds = %4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @find_row(%struct.TYPE_10__* %28, i64 %29, i64** %12)
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* %13, align 8
  store i64 %35, i64* %5, align 8
  br label %64

36:                                               ; preds = %27
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call %struct.TYPE_11__* @find_table(%struct.TYPE_10__* %37, i64 %38, i64* %8)
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %11, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %43, i64* %5, align 8
  br label %64

44:                                               ; preds = %36
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64 (%struct.TYPE_12__*, i64, i64, i64*)*, i64 (%struct.TYPE_12__*, i64, i64, i64*)** %50, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = load i64*, i64** %12, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64*, i64** %9, align 8
  %63 = call i64 %51(%struct.TYPE_12__* %54, i64 %60, i64 %61, i64* %62)
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %44, %42, %34, %25
  %65 = load i64, i64* %5, align 8
  ret i64 %65
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_10__*, i64, i64, i64*) #1

declare dso_local i64 @find_row(%struct.TYPE_10__*, i64, i64**) #1

declare dso_local %struct.TYPE_11__* @find_table(%struct.TYPE_10__*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
