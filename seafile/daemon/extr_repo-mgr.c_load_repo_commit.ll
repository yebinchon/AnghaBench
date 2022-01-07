; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_load_repo_commit.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_load_repo_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Commit %s is missing\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_14__*)* @load_repo_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_repo_commit(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @seaf_commit_manager_get_commit_compatible(i32 %12, i32 %15, i32 %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @seaf_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @TRUE, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %39

30:                                               ; preds = %3
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = call i32 @set_head_common(%struct.TYPE_13__* %31, %struct.TYPE_14__* %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @seaf_repo_from_commit(%struct.TYPE_13__* %34, i32* %35)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @seaf_commit_unref(i32* %37)
  br label %39

39:                                               ; preds = %30, %22
  ret void
}

declare dso_local i32* @seaf_commit_manager_get_commit_compatible(i32, i32, i32) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

declare dso_local i32 @set_head_common(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @seaf_repo_from_commit(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @seaf_commit_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
