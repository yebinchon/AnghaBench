; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_sqlite3PagerSavepoint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_sqlite3PagerSavepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i64, %struct.TYPE_8__*, i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }

@SAVEPOINT_RELEASE = common dso_local global i32 0, align 4
@SAVEPOINT_ROLLBACK = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@PAGER_ERROR = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_OFF = common dso_local global i64 0, align 8
@PAGER_WRITER_CACHEMOD = common dso_local global i64 0, align 8
@SQLITE_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3PagerSavepoint(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SAVEPOINT_RELEASE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SAVEPOINT_ROLLBACK, align 4
  %20 = icmp eq i32 %18, %19
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi i1 [ true, %3 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SAVEPOINT_ROLLBACK, align 4
  %30 = icmp eq i32 %28, %29
  br label %31

31:                                               ; preds = %27, %21
  %32 = phi i1 [ true, %21 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @SQLITE_OK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %142

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %142

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SAVEPOINT_RELEASE, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 0, i32 1
  %51 = add nsw i32 %45, %50
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %69, %44
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @sqlite3BitvecDestroy(i32 %67)
  br label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %53

72:                                               ; preds = %53
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @SAVEPOINT_RELEASE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %72
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %79
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @isOpen(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %82
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @sqlite3JournalIsInMemory(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %88
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @sqlite3OsTruncate(i32 %97, i32 0)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @SQLITE_OK, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  br label %104

104:                                              ; preds = %94, %88
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 6
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %104, %82, %79
  br label %141

108:                                              ; preds = %72
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = call i64 @pagerUseWal(%struct.TYPE_9__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %108
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @isOpen(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %140

118:                                              ; preds = %112, %108
  %119 = load i32, i32* %9, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %130

122:                                              ; preds = %118
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 %128
  br label %130

130:                                              ; preds = %122, %121
  %131 = phi %struct.TYPE_8__* [ null, %121 ], [ %129, %122 ]
  store %struct.TYPE_8__* %131, %struct.TYPE_8__** %10, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %134 = call i32 @pagerPlaybackSavepoint(%struct.TYPE_9__* %132, %struct.TYPE_8__* %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @SQLITE_DONE, align 4
  %137 = icmp ne i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  br label %140

140:                                              ; preds = %130, %112
  br label %141

141:                                              ; preds = %140, %107
  br label %142

142:                                              ; preds = %141, %38, %31
  %143 = load i32, i32* %7, align 4
  ret i32 %143
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BitvecDestroy(i32) #1

declare dso_local i64 @isOpen(i32) #1

declare dso_local i64 @sqlite3JournalIsInMemory(i32) #1

declare dso_local i32 @sqlite3OsTruncate(i32, i32) #1

declare dso_local i64 @pagerUseWal(%struct.TYPE_9__*) #1

declare dso_local i32 @pagerPlaybackSavepoint(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
