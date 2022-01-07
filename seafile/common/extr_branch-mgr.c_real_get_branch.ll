; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_branch-mgr.c_real_get_branch.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_branch-mgr.c_real_get_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [62 x i8] c"SELECT commit_id FROM Branch WHERE name = %Q and repo_id='%s'\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"[Branch mgr] Couldn't prepare query %s\0A\00", align 1
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Couldn't prepare query, error: %d->'%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"no error given\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i8*, i8*)* @real_get_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @real_get_branch(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @pthread_mutex_lock(i32* %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26)
  store i8* %27, i8** %11, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call i32* @sqlite_query_prepare(i32* %28, i8* %29)
  store i32* %30, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %3
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @sqlite3_free(i8* %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @pthread_mutex_unlock(i32* %40)
  store i32* null, i32** %4, align 8
  br label %91

42:                                               ; preds = %3
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @sqlite3_free(i8* %43)
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @sqlite3_step(i32* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @SQLITE_ROW, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %42
  %51 = load i32*, i32** %9, align 8
  %52 = call i64 @sqlite3_column_text(i32* %51, i32 0)
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %13, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = call i32* @seaf_branch_new(i8* %54, i8* %55, i8* %56)
  store i32* %57, i32** %8, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @pthread_mutex_unlock(i32* %61)
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @sqlite3_finalize(i32* %63)
  %65 = load i32*, i32** %8, align 8
  store i32* %65, i32** %4, align 8
  br label %91

66:                                               ; preds = %42
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @SQLITE_ERROR, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load i32*, i32** %10, align 8
  %72 = call i8* @sqlite3_errmsg(i32* %71)
  store i8* %72, i8** %14, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i8*, i8** %14, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i8*, i8** %14, align 8
  br label %79

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i8* [ %77, %76 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), %78 ]
  %81 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %73, i8* %80)
  br label %82

82:                                               ; preds = %79, %66
  br label %83

83:                                               ; preds = %82
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @sqlite3_finalize(i32* %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = call i32 @pthread_mutex_unlock(i32* %89)
  store i32* null, i32** %4, align 8
  br label %91

91:                                               ; preds = %83, %50, %32
  %92 = load i32*, i32** %4, align 8
  ret i32* %92
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, i8*) #1

declare dso_local i32* @sqlite_query_prepare(i32*, i8*) #1

declare dso_local i32 @seaf_warning(i8*, ...) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32* @seaf_branch_new(i8*, i8*, i8*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i8* @sqlite3_errmsg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
