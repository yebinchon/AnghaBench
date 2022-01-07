; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seaf_fs_manager_get_seafdir_by_path.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seaf_fs_manager_get_seafdir_by_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i8*, i32, i32 }

@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_DIR_MISSING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"directory is missing\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SEAF_ERR_PATH_NO_EXIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Path does not exists %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @seaf_fs_manager_get_seafdir_by_path(i32* %0, i8* %1, i32 %2, i8* %3, i8* %4, i32** %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32** %5, i32*** %13, align 8
  %22 = load i8*, i8** %11, align 8
  store i8* %22, i8** %16, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = call i8* @g_strdup(i8* %23)
  store i8* %24, i8** %19, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i8*, i8** %16, align 8
  %29 = call %struct.TYPE_8__* @seaf_fs_manager_get_seafdir(i32* %25, i8* %26, i32 %27, i8* %28)
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %14, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %6
  %33 = load i32**, i32*** %13, align 8
  %34 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %35 = load i32, i32* @SEAF_ERR_DIR_MISSING, align 4
  %36 = call i32 (i32**, i32, i32, i8*, ...) @g_set_error(i32** %33, i32 %34, i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %19, align 8
  %38 = call i32 @g_free(i8* %37)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  br label %110

39:                                               ; preds = %6
  %40 = load i8*, i8** %19, align 8
  %41 = call i8* @strtok_r(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %18)
  store i8* %41, i8** %17, align 8
  br label %42

42:                                               ; preds = %104, %39
  %43 = load i8*, i8** %17, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %106

45:                                               ; preds = %42
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %20, align 8
  br label %49

49:                                               ; preds = %73, %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %52, label %77

52:                                               ; preds = %49
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %15, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %17, align 8
  %60 = call i64 @strcmp(i32 %58, i8* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %52
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @S_ISDIR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %16, align 8
  br label %77

72:                                               ; preds = %62, %52
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  store %struct.TYPE_9__* %76, %struct.TYPE_9__** %20, align 8
  br label %49

77:                                               ; preds = %68, %49
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load i32**, i32*** %13, align 8
  %82 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %83 = load i32, i32* @SEAF_ERR_PATH_NO_EXIST, align 4
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 (i32**, i32, i32, i8*, ...) @g_set_error(i32** %81, i32 %82, i32 %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %87 = call i32 @seaf_dir_free(%struct.TYPE_8__* %86)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %14, align 8
  br label %106

88:                                               ; preds = %77
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %89, %struct.TYPE_8__** %21, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i8*, i8** %16, align 8
  %94 = call %struct.TYPE_8__* @seaf_fs_manager_get_seafdir(i32* %90, i8* %91, i32 %92, i8* %93)
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %14, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %96 = call i32 @seaf_dir_free(%struct.TYPE_8__* %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %98 = icmp ne %struct.TYPE_8__* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %88
  %100 = load i32**, i32*** %13, align 8
  %101 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %102 = load i32, i32* @SEAF_ERR_DIR_MISSING, align 4
  %103 = call i32 (i32**, i32, i32, i8*, ...) @g_set_error(i32** %100, i32 %101, i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %106

104:                                              ; preds = %88
  %105 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %18)
  store i8* %105, i8** %17, align 8
  br label %42

106:                                              ; preds = %99, %80, %42
  %107 = load i8*, i8** %19, align 8
  %108 = call i32 @g_free(i8* %107)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %109, %struct.TYPE_8__** %7, align 8
  br label %110

110:                                              ; preds = %106, %32
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %111
}

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local %struct.TYPE_8__* @seaf_fs_manager_get_seafdir(i32*, i8*, i32, i8*) #1

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*, ...) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @seaf_dir_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
