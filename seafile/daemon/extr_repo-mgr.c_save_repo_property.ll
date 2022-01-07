; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_save_repo_property.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_save_repo_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [61 x i8] c"SELECT repo_id FROM RepoProperty WHERE repo_id=%Q AND key=%Q\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"UPDATE RepoProperty SET value=%QWHERE repo_id=%Q and key=%Q\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"INSERT INTO RepoProperty VALUES (%Q, %Q, %Q)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i8*, i8*)* @save_repo_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_repo_property(%struct.TYPE_5__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @pthread_mutex_lock(i32* %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* (i8*, i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  store i8* %23, i8** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i64 @sqlite_check_for_existence(i32* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @sqlite3_free(i8* %29)
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i8* (i8*, i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %32, i8* %33)
  store i8* %34, i8** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @sqlite_query_exec(i32* %35, i8* %36)
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @sqlite3_free(i8* %38)
  br label %52

40:                                               ; preds = %4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @sqlite3_free(i8* %41)
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i8* (i8*, i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %43, i8* %44, i8* %45)
  store i8* %46, i8** %9, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @sqlite_query_exec(i32* %47, i8* %48)
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @sqlite3_free(i8* %50)
  br label %52

52:                                               ; preds = %40, %28
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @pthread_mutex_unlock(i32* %56)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, i8*, ...) #1

declare dso_local i64 @sqlite_check_for_existence(i32*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite_query_exec(i32*, i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
