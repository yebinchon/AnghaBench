; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_sqlite3PagerRollback.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_sqlite3PagerRollback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ROLLBACK %d\0A\00", align 1
@PAGER_ERROR = common dso_local global i32 0, align 4
@PAGER_READER = common dso_local global i32 0, align 4
@SAVEPOINT_ROLLBACK = common dso_local global i32 0, align 4
@PAGER_WRITER_LOCKED = common dso_local global i32 0, align 4
@MEMDB = common dso_local global i32 0, align 4
@SQLITE_ABORT = common dso_local global i32 0, align 4
@SQLITE_FULL = common dso_local global i32 0, align 4
@SQLITE_CORRUPT = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_IOERR = common dso_local global i32 0, align 4
@SQLITE_CANTOPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3PagerRollback(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load i32, i32* @SQLITE_OK, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = call i32 @PAGERID(%struct.TYPE_11__* %8)
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @PAGERTRACE(i8* %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = call i32 @assert_pager_state(%struct.TYPE_11__* %13)
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PAGER_ERROR, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  br label %136

25:                                               ; preds = %1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PAGER_READER, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @SQLITE_OK, align 4
  store i32 %32, i32* %2, align 4
  br label %136

33:                                               ; preds = %25
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = call i64 @pagerUseWal(%struct.TYPE_11__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = load i32, i32* @SAVEPOINT_ROLLBACK, align 4
  %40 = call i32 @sqlite3PagerSavepoint(%struct.TYPE_11__* %38, i32 %39, i32 -1)
  store i32 %40, i32* %4, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pager_end_transaction(%struct.TYPE_11__* %41, i32 %44, i32 0)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SQLITE_OK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %37
  br label %91

52:                                               ; preds = %33
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @isOpen(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PAGER_WRITER_LOCKED, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %58, %52
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %6, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = call i32 @pager_end_transaction(%struct.TYPE_11__* %68, i32 0, i32 0)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* @MEMDB, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @PAGER_WRITER_LOCKED, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i32, i32* @SQLITE_ABORT, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @PAGER_ERROR, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = call i32 @setGetterMethod(%struct.TYPE_11__* %83)
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %136

86:                                               ; preds = %72, %64
  br label %90

87:                                               ; preds = %58
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %89 = call i32 @pager_playback(%struct.TYPE_11__* %88, i32 0)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %86
  br label %91

91:                                               ; preds = %90, %51
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PAGER_READER, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @SQLITE_OK, align 4
  %100 = icmp ne i32 %98, %99
  br label %101

101:                                              ; preds = %97, %91
  %102 = phi i1 [ true, %91 ], [ %100, %97 ]
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @SQLITE_OK, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %129, label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @SQLITE_FULL, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %129, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @SQLITE_CORRUPT, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %129, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @SQLITE_NOMEM, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %129, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %4, align 4
  %122 = and i32 %121, 255
  %123 = load i32, i32* @SQLITE_IOERR, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @SQLITE_CANTOPEN, align 4
  %128 = icmp eq i32 %126, %127
  br label %129

129:                                              ; preds = %125, %120, %116, %112, %108, %101
  %130 = phi i1 [ true, %120 ], [ true, %116 ], [ true, %112 ], [ true, %108 ], [ true, %101 ], [ %128, %125 ]
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @pager_error(%struct.TYPE_11__* %133, i32 %134)
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %129, %76, %31, %21
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @PAGERTRACE(i8*) #1

declare dso_local i32 @PAGERID(%struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @assert_pager_state(%struct.TYPE_11__*) #1

declare dso_local i64 @pagerUseWal(%struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3PagerSavepoint(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @pager_end_transaction(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @isOpen(i32) #1

declare dso_local i32 @setGetterMethod(%struct.TYPE_11__*) #1

declare dso_local i32 @pager_playback(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @pager_error(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
