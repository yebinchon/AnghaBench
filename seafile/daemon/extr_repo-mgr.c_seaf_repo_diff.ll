; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_diff.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i8*, i64 }

@seaf = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"Can't find new commit\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Failed to do diff\00", align 1
@diff_entry_free = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Can't find old commit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @seaf_repo_diff(%struct.TYPE_10__* %0, i8* %1, i8* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @seaf, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = call %struct.TYPE_11__* @seaf_commit_manager_get_commit(i32 %18, i32 %21, i32 %24, i8* %25)
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %13, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %28 = icmp ne %struct.TYPE_11__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = call i8* @g_strdup(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %31 = load i8**, i8*** %11, align 8
  store i8* %30, i8** %31, align 8
  store i32* null, i32** %6, align 8
  br label %130

32:                                               ; preds = %5
  %33 = load i8*, i8** %8, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %90

41:                                               ; preds = %35, %32
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %68

46:                                               ; preds = %41
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @diff_merge(%struct.TYPE_11__* %52, i32** %15, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %56 = call i32 @seaf_commit_unref(%struct.TYPE_11__* %55)
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = call i8* @g_strdup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i8**, i8*** %11, align 8
  store i8* %60, i8** %61, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = load i64, i64* @diff_entry_free, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @g_list_free_full(i32* %62, i32 %64)
  store i32* null, i32** %6, align 8
  br label %130

66:                                               ; preds = %51
  %67 = load i32*, i32** %15, align 8
  store i32* %67, i32** %6, align 8
  br label %130

68:                                               ; preds = %46, %41
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %75 = call i32 @seaf_commit_unref(%struct.TYPE_11__* %74)
  store i32* null, i32** %6, align 8
  br label %130

76:                                               ; preds = %68
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** @seaf, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call %struct.TYPE_11__* @seaf_commit_manager_get_commit(i32 %79, i32 %82, i32 %85, i8* %88)
  store %struct.TYPE_11__* %89, %struct.TYPE_11__** %12, align 8
  br label %102

90:                                               ; preds = %35
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** @seaf, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %8, align 8
  %101 = call %struct.TYPE_11__* @seaf_commit_manager_get_commit(i32 %93, i32 %96, i32 %99, i8* %100)
  store %struct.TYPE_11__* %101, %struct.TYPE_11__** %12, align 8
  br label %102

102:                                              ; preds = %90, %76
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %104 = icmp ne %struct.TYPE_11__* %103, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = call i8* @g_strdup(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i8**, i8*** %11, align 8
  store i8* %106, i8** %107, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %109 = call i32 @seaf_commit_unref(%struct.TYPE_11__* %108)
  store i32* null, i32** %6, align 8
  br label %130

110:                                              ; preds = %102
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @diff_commits(%struct.TYPE_11__* %111, %struct.TYPE_11__* %112, i32** %15, i32 %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %110
  %118 = load i32*, i32** %15, align 8
  %119 = load i64, i64* @diff_entry_free, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @g_list_free_full(i32* %118, i32 %120)
  store i32* null, i32** %15, align 8
  %122 = call i8* @g_strdup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %123 = load i8**, i8*** %11, align 8
  store i8* %122, i8** %123, align 8
  br label %124

124:                                              ; preds = %117, %110
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %126 = call i32 @seaf_commit_unref(%struct.TYPE_11__* %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %128 = call i32 @seaf_commit_unref(%struct.TYPE_11__* %127)
  %129 = load i32*, i32** %15, align 8
  store i32* %129, i32** %6, align 8
  br label %130

130:                                              ; preds = %124, %105, %73, %66, %59, %29
  %131 = load i32*, i32** %6, align 8
  ret i32* %131
}

declare dso_local %struct.TYPE_11__* @seaf_commit_manager_get_commit(i32, i32, i32, i8*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32 @diff_merge(%struct.TYPE_11__*, i32**, i32) #1

declare dso_local i32 @seaf_commit_unref(%struct.TYPE_11__*) #1

declare dso_local i32 @g_list_free_full(i32*, i32) #1

declare dso_local i32 @diff_commits(%struct.TYPE_11__*, %struct.TYPE_11__*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
