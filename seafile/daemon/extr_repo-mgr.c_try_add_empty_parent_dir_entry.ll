; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_try_add_empty_parent_dir_entry.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_try_add_empty_parent_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.index_state*, i8*)* @try_add_empty_parent_dir_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_add_empty_parent_dir_entry(i8* %0, %struct.index_state* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.index_state* %1, %struct.index_state** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.index_state*, %struct.index_state** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = call i32* @index_name_exists(%struct.index_state* %10, i8* %11, i32 %13, i32 0)
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %43

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @g_path_get_dirname(i8* %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @g_free(i8* %24)
  br label %43

26:                                               ; preds = %17
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @g_build_filename(i8* %27, i8* %28, i32* null)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @seaf_stat(i8* %30, i32* %9)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %38

34:                                               ; preds = %26
  %35 = load %struct.index_state*, %struct.index_state** %5, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @add_empty_dir_to_index_with_check(%struct.index_state* %35, i8* %36, i32* %9)
  br label %38

38:                                               ; preds = %34, %33
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @g_free(i8* %39)
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @g_free(i8* %41)
  br label %43

43:                                               ; preds = %38, %23, %16
  ret void
}

declare dso_local i32* @index_name_exists(%struct.index_state*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @g_path_get_dirname(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @g_build_filename(i8*, i8*, i32*) #1

declare dso_local i64 @seaf_stat(i8*, i32*) #1

declare dso_local i32 @add_empty_dir_to_index_with_check(%struct.index_state*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
