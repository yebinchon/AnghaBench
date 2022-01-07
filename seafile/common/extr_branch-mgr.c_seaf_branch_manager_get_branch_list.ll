; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_branch-mgr.c_seaf_branch_manager_get_branch_list.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_branch-mgr.c_seaf_branch_manager_get_branch_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [55 x i8] c"SELECT name, commit_id FROM branch WHERE repo_id ='%s'\00", align 1
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Couldn't prepare query, error: %d->'%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"no error given\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @seaf_branch_manager_get_branch_list(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  store i32* null, i32** %12, align 8
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @snprintf(i8* %20, i32 256, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @pthread_mutex_lock(i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %30 = call i32* @sqlite_query_prepare(i32* %28, i8* %29)
  store i32* %30, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @pthread_mutex_unlock(i32* %36)
  store i32* null, i32** %3, align 8
  br label %100

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %38, %89
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @sqlite3_step(i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @SQLITE_ROW, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load i32*, i32** %8, align 8
  %47 = call i64 @sqlite3_column_text(i32* %46, i32 0)
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %10, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i64 @sqlite3_column_text(i32* %49, i32 1)
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i32* @seaf_branch_new(i8* %52, i8* %53, i8* %54)
  store i32* %55, i32** %13, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call i32* @g_list_prepend(i32* %56, i32* %57)
  store i32* %58, i32** %12, align 8
  br label %59

59:                                               ; preds = %45, %39
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @SQLITE_DONE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %90

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @SQLITE_ERROR, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %64
  %69 = load i32*, i32** %6, align 8
  %70 = call i8* @sqlite3_errmsg(i32* %69)
  store i8* %70, i8** %14, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i8*, i8** %14, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i8*, i8** %14, align 8
  br label %77

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i8* [ %75, %74 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %76 ]
  %79 = call i32 @seaf_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %71, i8* %78)
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @sqlite3_finalize(i32* %80)
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @seaf_branch_list_free(i32* %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 @pthread_mutex_unlock(i32* %87)
  store i32* null, i32** %3, align 8
  br label %100

89:                                               ; preds = %64
  br label %39

90:                                               ; preds = %63
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @sqlite3_finalize(i32* %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = call i32 @pthread_mutex_unlock(i32* %96)
  %98 = load i32*, i32** %12, align 8
  %99 = call i32* @g_list_reverse(i32* %98)
  store i32* %99, i32** %3, align 8
  br label %100

100:                                              ; preds = %90, %77, %32
  %101 = load i32*, i32** %3, align 8
  ret i32* %101
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32* @sqlite_query_prepare(i32*, i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32* @seaf_branch_new(i8*, i8*, i8*) #1

declare dso_local i32* @g_list_prepend(i32*, i32*) #1

declare dso_local i8* @sqlite3_errmsg(i32*) #1

declare dso_local i32 @seaf_warning(i8*, i32, i8*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @seaf_branch_list_free(i32*) #1

declare dso_local i32* @g_list_reverse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
