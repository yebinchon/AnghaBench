; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_create_commit_from_event_queue.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_create_commit_from_event_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i64, i64, i32 }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_13__*, %struct.TYPE_14__*, i8*)* @create_commit_from_event_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @create_commit_from_event_queue(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** @FALSE, align 8
  store i8* %12, i8** %9, align 8
  %13 = call i32 @time(i32* null)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_12__* @seaf_wt_monitor_get_worktree_status(i32 %18, i32 %21)
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %7, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = icmp ne %struct.TYPE_12__* %23, null
  br i1 %24, label %25, label %103

25:                                               ; preds = %3
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = call i32 @g_atomic_int_get(i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %25
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** @TRUE, align 8
  %38 = call i32* @create_sync_task_v2(%struct.TYPE_13__* %34, %struct.TYPE_14__* %35, i8* %36, i8* %37)
  store i32* %38, i32** %8, align 8
  %39 = load i8*, i8** @TRUE, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @commit_repo(i32* %42)
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i8*, i8** @TRUE, align 8
  store i8* %48, i8** %9, align 8
  br label %100

49:                                               ; preds = %25
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** @FALSE, align 8
  %59 = call i32* @create_sync_task_v2(%struct.TYPE_13__* %55, %struct.TYPE_14__* %56, i8* %57, i8* %58)
  store i32* %59, i32** %8, align 8
  %60 = load i8*, i8** @TRUE, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @commit_repo(i32* %63)
  %65 = load i8*, i8** @TRUE, align 8
  store i8* %65, i8** %9, align 8
  br label %99

66:                                               ; preds = %49
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %98

69:                                               ; preds = %66
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp sle i64 %72, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %69
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sub nsw i32 %77, %78
  %80 = icmp sge i32 %79, 2
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i8*, i8** @FALSE, align 8
  %86 = call i32* @create_sync_task_v2(%struct.TYPE_13__* %82, %struct.TYPE_14__* %83, i8* %84, i8* %85)
  store i32* %86, i32** %8, align 8
  %87 = load i8*, i8** @TRUE, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @commit_repo(i32* %90)
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load i8*, i8** @TRUE, align 8
  store i8* %96, i8** %9, align 8
  br label %97

97:                                               ; preds = %81, %76
  br label %98

98:                                               ; preds = %97, %69, %66
  br label %99

99:                                               ; preds = %98, %54
  br label %100

100:                                              ; preds = %99, %33
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %102 = call i32 @wt_status_unref(%struct.TYPE_12__* %101)
  br label %103

103:                                              ; preds = %100, %3
  %104 = load i8*, i8** %9, align 8
  ret i8* %104
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.TYPE_12__* @seaf_wt_monitor_get_worktree_status(i32, i32) #1

declare dso_local i32 @g_atomic_int_get(i32*) #1

declare dso_local i32* @create_sync_task_v2(%struct.TYPE_13__*, %struct.TYPE_14__*, i8*, i8*) #1

declare dso_local i32 @commit_repo(i32*) #1

declare dso_local i32 @wt_status_unref(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
