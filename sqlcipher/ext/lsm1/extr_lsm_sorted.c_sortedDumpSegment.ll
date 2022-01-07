; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_sortedDumpSegment.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_sortedDumpSegment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@INFO_PAGE_DUMP_VALUES = common dso_local global i32 0, align 4
@LSM_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Segment: %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sortedDumpSegment(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = icmp ne %struct.TYPE_13__* %16, null
  br i1 %17, label %18, label %78

18:                                               ; preds = %3
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %78

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @INFO_PAGE_DUMP_VALUES, align 4
  br label %29

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  store i32 %30, i32* %7, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = call i8* @segToString(i32 %33, %struct.TYPE_13__* %34, i32 0)
  store i8* %35, i8** %8, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = load i32, i32* @LSM_OK, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @lsmLogMessage(%struct.TYPE_12__* %36, i32 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @lsmFree(i32 %42, i8* %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @lsmFsDbPageGet(i32 %47, %struct.TYPE_13__* %48, i64 %51, i32** %9)
  br label %53

53:                                               ; preds = %56, %29
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  store i8* null, i8** %11, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @lsmFsPageNumber(i32* %58)
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @infoPageDump(%struct.TYPE_12__* %57, i32 %59, i32 %60, i8** %11)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = load i32, i32* @LSM_OK, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @lsmLogMessage(%struct.TYPE_12__* %62, i32 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @lsmFree(i32 %68, i8* %69)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @lsmFsDbPageNext(%struct.TYPE_13__* %71, i32* %72, i32 1, i32** %10)
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @lsmFsPageRelease(i32* %74)
  %76 = load i32*, i32** %10, align 8
  store i32* %76, i32** %9, align 8
  br label %53

77:                                               ; preds = %53
  br label %78

78:                                               ; preds = %77, %18, %3
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @segToString(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @lsmLogMessage(%struct.TYPE_12__*, i32, i8*, i8*) #1

declare dso_local i32 @lsmFree(i32, i8*) #1

declare dso_local i32 @lsmFsDbPageGet(i32, %struct.TYPE_13__*, i64, i32**) #1

declare dso_local i32 @infoPageDump(%struct.TYPE_12__*, i32, i32, i8**) #1

declare dso_local i32 @lsmFsPageNumber(i32*) #1

declare dso_local i32 @lsmFsDbPageNext(%struct.TYPE_13__*, i32*, i32, i32**) #1

declare dso_local i32 @lsmFsPageRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
