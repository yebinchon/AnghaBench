; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_process_active_path.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_process_active_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.index_state = type { i32 }
%struct.TYPE_9__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*, %struct.index_state*, i32*)* @process_active_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_active_path(%struct.TYPE_10__* %0, i8* %1, %struct.index_state* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.index_state*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.index_state* %2, %struct.index_state** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @g_build_filename(i32 %15, i8* %16, i32* null)
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = call i64 @seaf_stat(i8* %18, %struct.TYPE_9__* %9)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @g_free(i8* %22)
  br label %66

24:                                               ; preds = %4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i64 @check_full_path_ignore(i32 %27, i8* %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %24
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @S_ISREG(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** @seaf, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @seaf_filelock_manager_is_file_locked(i32 %42, i32 %45, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %39
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.index_state*, %struct.index_state** %7, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @update_active_file(%struct.TYPE_10__* %50, i8* %51, %struct.TYPE_9__* %9, %struct.index_state* %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %39
  br label %63

56:                                               ; preds = %34
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.index_state*, %struct.index_state** %7, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @update_active_path_recursive(%struct.TYPE_10__* %57, i8* %58, %struct.index_state* %59, i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %55
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @g_free(i8* %64)
  br label %66

66:                                               ; preds = %63, %21
  ret void
}

declare dso_local i8* @g_build_filename(i32, i8*, i32*) #1

declare dso_local i64 @seaf_stat(i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i64 @check_full_path_ignore(i32, i8*, i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @seaf_filelock_manager_is_file_locked(i32, i32, i8*) #1

declare dso_local i32 @update_active_file(%struct.TYPE_10__*, i8*, %struct.TYPE_9__*, %struct.index_state*, i32) #1

declare dso_local i32 @update_active_path_recursive(%struct.TYPE_10__*, i8*, %struct.index_state*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
