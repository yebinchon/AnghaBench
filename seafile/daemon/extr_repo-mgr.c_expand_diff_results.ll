; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_expand_diff_results.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_expand_diff_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32, i32 }

@DIFF_STATUS_DIR_ADDED = common dso_local global i64 0, align 8
@seaf = common dso_local global %struct.TYPE_18__* null, align 8
@expand_dir_added_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, %struct.TYPE_16__**)* @expand_diff_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_diff_results(i8* %0, i32 %1, i8* %2, i8* %3, %struct.TYPE_16__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_16__**, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca [41 x i8], align 16
  %16 = alloca %struct.TYPE_16__*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_16__** %4, %struct.TYPE_16__*** %11, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %16, align 8
  %17 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %12, align 8
  br label %19

19:                                               ; preds = %63, %5
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %21 = icmp ne %struct.TYPE_16__* %20, null
  br i1 %21, label %22, label %65

22:                                               ; preds = %19
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %14, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %13, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DIFF_STATUS_DIR_ADDED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %22
  %35 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %38 = call %struct.TYPE_16__* @g_list_delete_link(%struct.TYPE_16__* %36, %struct.TYPE_16__* %37)
  %39 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %39, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [41 x i8], [41 x i8]* %15, i64 0, i64 0
  %44 = call i32 @rawdata_to_hex(i32 %42, i8* %43, i32 20)
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** @seaf, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @expand_dir_added_cb, align 4
  %55 = call i64 @seaf_fs_manager_traverse_path(i32 %47, i8* %48, i32 %49, i8* %50, i32 %53, i32 %54, %struct.TYPE_16__** %16)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %34
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %59 = call i32 @diff_entry_free(%struct.TYPE_17__* %58)
  br label %73

60:                                               ; preds = %34
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %62 = call i32 @diff_entry_free(%struct.TYPE_17__* %61)
  br label %63

63:                                               ; preds = %60, %22
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %12, align 8
  br label %19

65:                                               ; preds = %19
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %67 = call %struct.TYPE_16__* @g_list_reverse(%struct.TYPE_16__* %66)
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %16, align 8
  %68 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %71 = call %struct.TYPE_16__* @g_list_concat(%struct.TYPE_16__* %69, %struct.TYPE_16__* %70)
  %72 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  store %struct.TYPE_16__* %71, %struct.TYPE_16__** %72, align 8
  store i32 0, i32* %6, align 4
  br label %76

73:                                               ; preds = %57
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %75 = call i32 @g_list_free_full(%struct.TYPE_16__* %74, i32 ptrtoint (i32 (%struct.TYPE_17__*)* @diff_entry_free to i32))
  store i32 -1, i32* %6, align 4
  br label %76

76:                                               ; preds = %73, %65
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_16__* @g_list_delete_link(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @rawdata_to_hex(i32, i8*, i32) #1

declare dso_local i64 @seaf_fs_manager_traverse_path(i32, i8*, i32, i8*, i32, i32, %struct.TYPE_16__**) #1

declare dso_local i32 @diff_entry_free(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__* @g_list_reverse(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @g_list_concat(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @g_list_free_full(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
