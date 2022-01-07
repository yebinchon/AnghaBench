; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_vc-common.c_get_file_modifier_mtime_v1.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_vc-common.c_get_file_modifier_mtime_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__*, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i8*, i8*, i32 }

@seaf = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Failed to get commit %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"dir %s doesn't exist in repo %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i8*, i8**, i32*)* @get_file_modifier_mtime_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_file_modifier_mtime_v1(i8* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %18, align 8
  store i32 0, i32* %19, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i8*, i8** %12, align 8
  %30 = call %struct.TYPE_12__* @seaf_commit_manager_get_commit(i32 %26, i8* %27, i32 %28, i8* %29)
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %16, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %32 = icmp ne %struct.TYPE_12__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %7
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i32 -1, i32* %8, align 4
  br label %113

36:                                               ; preds = %7
  %37 = load i8*, i8** %13, align 8
  %38 = call i8* @g_path_get_dirname(i8* %37)
  store i8* %38, i8** %20, align 8
  %39 = load i8*, i8** %20, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i8*, i8** %20, align 8
  %44 = call i32 @g_free(i8* %43)
  %45 = call i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i8* %45, i8** %20, align 8
  br label %46

46:                                               ; preds = %42, %36
  %47 = load i8*, i8** %13, align 8
  %48 = call i8* @g_path_get_basename(i8* %47)
  store i8* %48, i8** %21, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %20, align 8
  %58 = call %struct.TYPE_11__* @seaf_fs_manager_get_seafdir_by_path(i32 %51, i8* %52, i32 %53, i32 %56, i8* %57, i32* null)
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %17, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %60 = icmp ne %struct.TYPE_11__* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %46
  %62 = load i8*, i8** %20, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %62, i8* %63)
  store i32 -1, i32* %19, align 4
  br label %103

65:                                               ; preds = %46
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %22, align 8
  br label %69

69:                                               ; preds = %85, %65
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %71 = icmp ne %struct.TYPE_13__* %70, null
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %23, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** %21, align 8
  %80 = call i64 @strcmp(i8* %78, i8* %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  store %struct.TYPE_10__* %83, %struct.TYPE_10__** %18, align 8
  br label %89

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  store %struct.TYPE_13__* %88, %struct.TYPE_13__** %22, align 8
  br label %69

89:                                               ; preds = %82, %69
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %91 = icmp ne %struct.TYPE_10__* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  br label %103

93:                                               ; preds = %89
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @g_strdup(i8* %96)
  %98 = load i8**, i8*** %14, align 8
  store i8* %97, i8** %98, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %15, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %93, %92, %61
  %104 = load i8*, i8** %20, align 8
  %105 = call i32 @g_free(i8* %104)
  %106 = load i8*, i8** %21, align 8
  %107 = call i32 @g_free(i8* %106)
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %109 = call i32 @seaf_commit_unref(%struct.TYPE_12__* %108)
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %111 = call i32 @seaf_dir_free(%struct.TYPE_11__* %110)
  %112 = load i32, i32* %19, align 4
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %103, %33
  %114 = load i32, i32* %8, align 4
  ret i32 %114
}

declare dso_local %struct.TYPE_12__* @seaf_commit_manager_get_commit(i32, i8*, i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, ...) #1

declare dso_local i8* @g_path_get_dirname(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i8* @g_path_get_basename(i8*) #1

declare dso_local %struct.TYPE_11__* @seaf_fs_manager_get_seafdir_by_path(i32, i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @seaf_commit_unref(%struct.TYPE_12__*) #1

declare dso_local i32 @seaf_dir_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
