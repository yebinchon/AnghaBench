; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_commit_tree.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_commit_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i8*, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@seaf = common dso_local global %struct.TYPE_12__* null, align 8
@SEAFILE_CLIENT_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i8*, i8*)* @commit_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_tree(%struct.TYPE_13__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  br label %24

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i8* [ %22, %19 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %23 ]
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @seaf, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call %struct.TYPE_14__* @seaf_commit_new(i32* null, i32 %13, i8* %14, i8* %25, i32 %28, i8* %29, i32 0)
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %10, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @g_strdup(i32 %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** @seaf, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @g_strdup(i32 %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @SEAFILE_CLIENT_VERSION, align 4
  %46 = call i8* @g_strdup(i32 %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = call i32 @seaf_repo_to_commit(%struct.TYPE_13__* %49, %struct.TYPE_14__* %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** @seaf, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %56 = call i64 @seaf_commit_manager_add_commit(i32 %54, %struct.TYPE_14__* %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %81

59:                                               ; preds = %24
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @seaf_branch_set_commit(%struct.TYPE_15__* %62, i32 %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** @seaf, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = call i32 @seaf_branch_manager_update_branch(i32 %69, %struct.TYPE_15__* %72)
  %74 = load i8*, i8** %9, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @strcpy(i8* %74, i32 %77)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %80 = call i32 @seaf_commit_unref(%struct.TYPE_14__* %79)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %59, %58
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_14__* @seaf_commit_new(i32*, i32, i8*, i8*, i32, i8*, i32) #1

declare dso_local i8* @g_strdup(i32) #1

declare dso_local i32 @seaf_repo_to_commit(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i64 @seaf_commit_manager_add_commit(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @seaf_branch_set_commit(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @seaf_branch_manager_update_branch(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @seaf_commit_unref(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
