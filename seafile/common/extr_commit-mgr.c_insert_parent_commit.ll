; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_commit-mgr.c_insert_parent_commit.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_commit-mgr.c_insert_parent_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@seaf = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Failed to find commit %s\0A\00", align 1
@compare_commit_by_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i8*, i32, i8*, i64)* @insert_parent_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_parent_commit(i32** %0, i32* %1, i8* %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = call i32* @g_hash_table_lookup(i32* %16, i8* %17)
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %51

21:                                               ; preds = %6
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i8*, i8** %12, align 8
  %28 = call i32* @seaf_commit_manager_get_commit(i32 %24, i8* %25, i32 %26, i8* %27)
  store i32* %28, i32** %14, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %21
  %32 = load i64, i64* %13, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %51

35:                                               ; preds = %31
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @seaf_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %36)
  store i32 -1, i32* %7, align 4
  br label %51

38:                                               ; preds = %21
  %39 = load i32**, i32*** %8, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = load i32, i32* @compare_commit_by_time, align 4
  %43 = call i32* @g_list_insert_sorted_with_data(i32* %40, i32* %41, i32 %42, i32* null)
  %44 = load i32**, i32*** %8, align 8
  store i32* %43, i32** %44, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = call i8* @g_strdup(i8* %45)
  store i8* %46, i8** %15, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = call i32 @g_hash_table_replace(i32* %47, i8* %48, i8* %49)
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %38, %35, %34, %20
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32* @g_hash_table_lookup(i32*, i8*) #1

declare dso_local i32* @seaf_commit_manager_get_commit(i32, i8*, i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

declare dso_local i32* @g_list_insert_sorted_with_data(i32*, i32*, i32, i32*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32 @g_hash_table_replace(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
