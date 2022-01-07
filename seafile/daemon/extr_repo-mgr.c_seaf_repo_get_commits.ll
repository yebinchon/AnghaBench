; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_get_commits.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_get_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@seaf = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed to get branch list of repo %s.\0A\00", align 1
@collect_commit = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @seaf_repo_get_commits(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** @seaf, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_15__* @seaf_branch_manager_get_branch_list(i32 %11, i32 %14)
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %4, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = icmp eq %struct.TYPE_15__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @seaf_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %91

23:                                               ; preds = %1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %5, align 8
  br label %25

25:                                               ; preds = %68, %23
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = icmp ne %struct.TYPE_15__* %26, null
  br i1 %27, label %28, label %72

28:                                               ; preds = %25
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %6, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** @seaf, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @collect_commit, align 4
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32 @seaf_commit_manager_traverse_commit_tree(i32 %34, i32 %37, i32 %40, i32 %43, i32 %44, %struct.TYPE_15__** %7, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %28
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %5, align 8
  br label %51

51:                                               ; preds = %60, %49
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = icmp ne %struct.TYPE_15__* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = bitcast %struct.TYPE_14__* %57 to i32*
  %59 = call i32 @seaf_commit_unref(i32* %58)
  br label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %5, align 8
  br label %51

64:                                               ; preds = %51
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = call i32 @g_list_free(%struct.TYPE_15__* %65)
  br label %75

67:                                               ; preds = %28
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %5, align 8
  br label %25

72:                                               ; preds = %25
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %74 = call %struct.TYPE_15__* @g_list_reverse(%struct.TYPE_15__* %73)
  store %struct.TYPE_15__* %74, %struct.TYPE_15__** %7, align 8
  br label %75

75:                                               ; preds = %72, %64
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %5, align 8
  br label %77

77:                                               ; preds = %85, %75
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = icmp ne %struct.TYPE_15__* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = call i32 @seaf_branch_unref(%struct.TYPE_14__* %83)
  br label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  store %struct.TYPE_15__* %88, %struct.TYPE_15__** %5, align 8
  br label %77

89:                                               ; preds = %77
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %90, %struct.TYPE_15__** %2, align 8
  br label %91

91:                                               ; preds = %89, %18
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  ret %struct.TYPE_15__* %92
}

declare dso_local %struct.TYPE_15__* @seaf_branch_manager_get_branch_list(i32, i32) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

declare dso_local i32 @seaf_commit_manager_traverse_commit_tree(i32, i32, i32, i32, i32, %struct.TYPE_15__**, i32) #1

declare dso_local i32 @seaf_commit_unref(i32*) #1

declare dso_local i32 @g_list_free(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @g_list_reverse(%struct.TYPE_15__*) #1

declare dso_local i32 @seaf_branch_unref(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
