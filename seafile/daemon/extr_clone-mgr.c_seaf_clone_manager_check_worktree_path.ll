; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_seaf_clone_manager_check_worktree_path.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_seaf_clone_manager_check_worktree_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32*, i32*, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_12__ = type { i64, i32, i32* }

@seaf = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"Worktree path conflicts with seafile system path.\0A\00", align 1
@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_GENERAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Worktree conflicts system path\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Worktree path conflict with repo %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Worktree conflicts existing repo\00", align 1
@CLONE_STATE_DONE = common dso_local global i64 0, align 8
@CLONE_STATE_CANCELED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"Worktree path conflict with clone %.8s.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_clone_manager_check_worktree_path(%struct.TYPE_14__* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** @seaf, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @check_dir_inclusiveness(i8* %15, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** @seaf, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @check_dir_inclusiveness(i8* %22, i32* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** @seaf, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @check_dir_inclusiveness(i8* %29, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28, %21, %3
  %36 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %37 = load i32**, i32*** %7, align 8
  %38 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %39 = load i32, i32* @SEAF_ERR_GENERAL, align 4
  %40 = call i32 @g_set_error(i32** %37, i32 %38, i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %4, align 4
  br label %127

42:                                               ; preds = %28
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** @seaf, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.TYPE_15__* @seaf_repo_manager_get_repo_list(i32 %45, i32 -1, i32 -1)
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %8, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %47, %struct.TYPE_15__** %9, align 8
  br label %48

48:                                               ; preds = %79, %42
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %50 = icmp ne %struct.TYPE_15__* %49, null
  br i1 %50, label %51, label %83

51:                                               ; preds = %48
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %10, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %51
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @check_dir_inclusiveness(i8* %60, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %59
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32**, i32*** %7, align 8
  %72 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %73 = load i32, i32* @SEAF_ERR_GENERAL, align 4
  %74 = call i32 @g_set_error(i32** %71, i32 %72, i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %76 = call i32 @g_list_free(%struct.TYPE_15__* %75)
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %4, align 4
  br label %127

78:                                               ; preds = %59, %51
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %9, align 8
  br label %48

83:                                               ; preds = %48
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %85 = call i32 @g_list_free(%struct.TYPE_15__* %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @g_hash_table_iter_init(i32* %11, i32 %88)
  br label %90

90:                                               ; preds = %124, %106, %83
  %91 = call i64 @g_hash_table_iter_next(i32* %11, %struct.TYPE_12__** %12, %struct.TYPE_12__** %13)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %125

93:                                               ; preds = %90
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %94, %struct.TYPE_12__** %14, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CLONE_STATE_DONE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %93
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @CLONE_STATE_CANCELED, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100, %93
  br label %90

107:                                              ; preds = %100
  %108 = load i8*, i8** %6, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = call i64 @check_dir_inclusiveness(i8* %108, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %107
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load i32**, i32*** %7, align 8
  %120 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %121 = load i32, i32* @SEAF_ERR_GENERAL, align 4
  %122 = call i32 @g_set_error(i32** %119, i32 %120, i32 %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %123 = load i32, i32* @FALSE, align 4
  store i32 %123, i32* %4, align 4
  br label %127

124:                                              ; preds = %107
  br label %90

125:                                              ; preds = %90
  %126 = load i32, i32* @TRUE, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %114, %66, %35
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i64 @check_dir_inclusiveness(i8*, i32*) #1

declare dso_local i32 @seaf_warning(i8*, ...) #1

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*) #1

declare dso_local %struct.TYPE_15__* @seaf_repo_manager_get_repo_list(i32, i32, i32) #1

declare dso_local i32 @g_list_free(%struct.TYPE_15__*) #1

declare dso_local i32 @g_hash_table_iter_init(i32*, i32) #1

declare dso_local i64 @g_hash_table_iter_next(i32*, %struct.TYPE_12__**, %struct.TYPE_12__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
