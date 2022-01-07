; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seaf_fs_manager_get_dirent_by_path.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seaf_fs_manager_get_dirent_by_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, %struct.TYPE_12__* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_DIR_MISSING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"directory is missing\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"dir %s doesn't exist in repo %.8s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @seaf_fs_manager_get_dirent_by_path(i32* %0, i8* %1, i32 %2, i8* %3, i8* %4, i32** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32** %5, i32*** %12, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = call i8* @g_path_get_dirname(i8* %19)
  store i8* %20, i8** %15, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i8* @g_path_get_basename(i8* %21)
  store i8* %22, i8** %16, align 8
  %23 = load i8*, i8** %15, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %6
  %27 = load i32*, i32** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = call %struct.TYPE_11__* @seaf_fs_manager_get_seafdir(i32* %27, i8* %28, i32 %29, i8* %30)
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %14, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %33 = icmp ne %struct.TYPE_11__* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %26
  %35 = load i32**, i32*** %12, align 8
  %36 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %37 = load i32, i32* @SEAF_ERR_DIR_MISSING, align 4
  %38 = call i32 @g_set_error(i32** %35, i32 %36, i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %26
  br label %48

40:                                               ; preds = %6
  %41 = load i32*, i32** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = load i32**, i32*** %12, align 8
  %47 = call %struct.TYPE_11__* @seaf_fs_manager_get_seafdir_by_path(i32* %41, i8* %42, i32 %43, i8* %44, i8* %45, i32** %46)
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %14, align 8
  br label %48

48:                                               ; preds = %40, %39
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %50 = icmp ne %struct.TYPE_11__* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %15, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @seaf_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %52, i8* %53)
  br label %81

55:                                               ; preds = %48
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %17, align 8
  br label %59

59:                                               ; preds = %76, %55
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %61 = icmp ne %struct.TYPE_12__* %60, null
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %18, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = call i64 @strcmp(i8* %68, i8* %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %74 = call %struct.TYPE_10__* @seaf_dirent_dup(%struct.TYPE_10__* %73)
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %13, align 8
  br label %80

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  store %struct.TYPE_12__* %79, %struct.TYPE_12__** %17, align 8
  br label %59

80:                                               ; preds = %72, %59
  br label %81

81:                                               ; preds = %80, %51
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %83 = icmp ne %struct.TYPE_11__* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %86 = call i32 @seaf_dir_free(%struct.TYPE_11__* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i8*, i8** %15, align 8
  %89 = call i32 @g_free(i8* %88)
  %90 = load i8*, i8** %16, align 8
  %91 = call i32 @g_free(i8* %90)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  ret %struct.TYPE_10__* %92
}

declare dso_local i8* @g_path_get_dirname(i8*) #1

declare dso_local i8* @g_path_get_basename(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_11__* @seaf_fs_manager_get_seafdir(i32*, i8*, i32, i8*) #1

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*) #1

declare dso_local %struct.TYPE_11__* @seaf_fs_manager_get_seafdir_by_path(i32*, i8*, i32, i8*, i8*, i32**) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_10__* @seaf_dirent_dup(%struct.TYPE_10__*) #1

declare dso_local i32 @seaf_dir_free(%struct.TYPE_11__*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
