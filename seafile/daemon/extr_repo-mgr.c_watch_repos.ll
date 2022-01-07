; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_watch_repos.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_watch_repos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i64 }

@seaf = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"failed to watch repo %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @watch_repos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @watch_repos(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @g_hash_table_iter_init(i32* %3, i32 %11)
  br label %13

13:                                               ; preds = %50, %1
  %14 = call i64 @g_hash_table_iter_next(i32* %3, %struct.TYPE_10__** %5, %struct.TYPE_10__** %6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %13
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %4, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %16
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** @seaf, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @seaf_wt_monitor_watch_repo(i32 %35, i32 %38, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @seaf_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44, %32
  br label %50

50:                                               ; preds = %49, %27, %22, %16
  br label %13

51:                                               ; preds = %13
  ret void
}

declare dso_local i32 @g_hash_table_iter_init(i32*, i32) #1

declare dso_local i64 @g_hash_table_iter_next(i32*, %struct.TYPE_10__**, %struct.TYPE_10__**) #1

declare dso_local i64 @seaf_wt_monitor_watch_repo(i32, i32, i32) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
