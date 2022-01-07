; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/cache/section/extr_swapout.c_MiRosTrimCache.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/cache/section/extr_swapout.c_MiRosTrimCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__* }

@.str = private unnamed_addr constant [30 x i8] c"Need to trim %lu cache pages\0A\00", align 1
@MiSegmentList = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@MM_SECTION_SEGMENT = common dso_local global i32 0, align 4
@ListOfSegments = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Evicted %lu cache pages\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MiRosTrimCache(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i64*, i64** %6, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @MiSegmentList, i32 0, i32 0), align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  br label %14

14:                                               ; preds = %36, %3
  %15 = load i64*, i64** %6, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, @MiSegmentList
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i1 [ false, %14 ], [ %21, %19 ]
  br i1 %23, label %24, label %40

24:                                               ; preds = %22
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = load i32, i32* @MM_SECTION_SEGMENT, align 4
  %27 = load i32, i32* @ListOfSegments, align 4
  %28 = call i32 @CONTAINING_RECORD(%struct.TYPE_8__* %25, i32 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @MiCacheEvictPages(i32 %29, i64 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, %32
  store i64 %35, i64* %33, align 8
  br label %36

36:                                               ; preds = %24
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %8, align 8
  br label %14

40:                                               ; preds = %22
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @DPRINT1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = call i32 @IsListEmpty(%struct.TYPE_8__* @MiSegmentList)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @MiSegmentList, i32 0, i32 0), align 8
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %8, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = call i32 @RemoveEntryList(%struct.TYPE_8__* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = call i32 @InsertTailList(%struct.TYPE_8__* @MiSegmentList, %struct.TYPE_8__* %49)
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %52
}

declare dso_local i32 @DPRINT1(i8*, i64) #1

declare dso_local i32 @CONTAINING_RECORD(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @MiCacheEvictPages(i32, i64) #1

declare dso_local i32 @IsListEmpty(%struct.TYPE_8__*) #1

declare dso_local i32 @RemoveEntryList(%struct.TYPE_8__*) #1

declare dso_local i32 @InsertTailList(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
