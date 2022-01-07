; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_sqlite3PagerCommitPhaseTwo.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_sqlite3PagerCommitPhaseTwo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64, i64, i32, i32, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_WRITER_LOCKED = common dso_local global i64 0, align 8
@PAGER_WRITER_FINISHED = common dso_local global i64 0, align 8
@PAGER_WRITER_CACHEMOD = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_PERSIST = common dso_local global i64 0, align 8
@PAGER_READER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"COMMIT %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3PagerCommitPhaseTwo(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load i32, i32* @SQLITE_OK, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @NEVER(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %2, align 4
  br label %101

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PAGER_WRITER_LOCKED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %39, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PAGER_WRITER_FINISHED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = call i64 @pagerUseWal(%struct.TYPE_9__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PAGER_WRITER_CACHEMOD, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %31, %27
  %38 = phi i1 [ false, %27 ], [ %36, %31 ]
  br label %39

39:                                               ; preds = %37, %21, %15
  %40 = phi i1 [ true, %21 ], [ true, %15 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = call i32 @assert_pager_state(%struct.TYPE_9__* %43)
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PAGER_WRITER_LOCKED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %83

51:                                               ; preds = %39
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %51
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PAGER_JOURNALMODE_PERSIST, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %56
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = call i64 @JOURNAL_HDR_SZ(%struct.TYPE_9__* %66)
  %68 = icmp eq i64 %65, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %62
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  %74 = xor i1 %73, true
  br label %75

75:                                               ; preds = %69, %62
  %76 = phi i1 [ true, %62 ], [ %74, %69 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i64, i64* @PAGER_READER, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* @SQLITE_OK, align 4
  store i32 %82, i32* %2, align 4
  br label %101

83:                                               ; preds = %56, %51, %39
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = call i32 @PAGERID(%struct.TYPE_9__* %84)
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @PAGERTRACE(i8* %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @pager_end_transaction(%struct.TYPE_9__* %93, i32 %96, i32 1)
  store i32 %97, i32* %4, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @pager_error(%struct.TYPE_9__* %98, i32 %99)
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %83, %75, %11
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pagerUseWal(%struct.TYPE_9__*) #1

declare dso_local i32 @assert_pager_state(%struct.TYPE_9__*) #1

declare dso_local i64 @JOURNAL_HDR_SZ(%struct.TYPE_9__*) #1

declare dso_local i32 @PAGERTRACE(i8*) #1

declare dso_local i32 @PAGERID(%struct.TYPE_9__*) #1

declare dso_local i32 @pager_end_transaction(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @pager_error(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
