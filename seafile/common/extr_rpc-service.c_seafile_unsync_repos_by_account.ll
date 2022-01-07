; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_seafile_unsync_repos_by_account.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_seafile_unsync_repos_by_account.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i8*, i32 }

@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_BAD_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Argument should not be null\00", align 1
@seaf = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seafile_unsync_repos_by_account(i8* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14, %3
  %18 = load i32**, i32*** %7, align 8
  %19 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %20 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %21 = call i32 @g_set_error(i32** %18, i32 %19, i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %77

22:                                               ; preds = %14
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @seaf, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_8__* @seaf_repo_manager_get_repo_list(i32 %25, i32 -1, i32 -1)
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %9, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %28 = icmp ne %struct.TYPE_8__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %77

30:                                               ; preds = %22
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %8, align 8
  br label %32

32:                                               ; preds = %67, %30
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %71

35:                                               ; preds = %32
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %10, align 8
  store i8* null, i8** %11, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @seaf, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @seaf_repo_manager_get_repo_relay_info(i32 %42, i32 %45, i8** %11, i32* null)
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @g_strcmp0(i8* %47, i8* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %35
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @g_strcmp0(i8* %54, i8* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %60 = call i64 @do_unsync_repo(%struct.TYPE_7__* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %77

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %51, %35
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @g_free(i8* %65)
  br label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %8, align 8
  br label %32

71:                                               ; preds = %32
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = call i32 @g_list_free(%struct.TYPE_8__* %72)
  %74 = load i8*, i8** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @cancel_clone_tasks_by_account(i8* %74, i8* %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %71, %62, %29, %17
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*) #1

declare dso_local %struct.TYPE_8__* @seaf_repo_manager_get_repo_list(i32, i32, i32) #1

declare dso_local i32 @seaf_repo_manager_get_repo_relay_info(i32, i32, i8**, i32*) #1

declare dso_local i64 @g_strcmp0(i8*, i8*) #1

declare dso_local i64 @do_unsync_repo(%struct.TYPE_7__*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_list_free(%struct.TYPE_8__*) #1

declare dso_local i32 @cancel_clone_tasks_by_account(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
