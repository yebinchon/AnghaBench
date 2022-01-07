; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_status_open.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_status_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64 }
%struct.view = type { i32 }

@status_list_no_head_argv = common dso_local global i8** null, align 8
@status_diff_index_argv = common dso_local global i8** null, align 8
@repo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [40 x i8] c"The status view requires a working tree\00", align 1
@WATCH_INDEX = common dso_local global i32 0, align 4
@LINE_HEADER = common dso_local global i32 0, align 4
@show_untracked_only = common dso_local global i32 0, align 4
@LINE_STAT_STAGED = common dso_local global i32 0, align 4
@status_diff_files_argv = common dso_local global i8** null, align 8
@LINE_STAT_UNSTAGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to load status data\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32)* @status_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_open(%struct.view* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8, align 1
  store %struct.view* %0, %struct.view** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i64 (...) @is_initial_commit()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i8**, i8*** @status_list_no_head_argv, align 8
  br label %14

12:                                               ; preds = %2
  %13 = load i8**, i8*** @status_diff_index_argv, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i8** [ %11, %10 ], [ %13, %12 ]
  store i8** %15, i8*** %6, align 8
  %16 = load i8**, i8*** %6, align 8
  %17 = load i8**, i8*** @status_list_no_head_argv, align 8
  %18 = icmp eq i8** %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 65, i32 0
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %7, align 1
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 1), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %14
  %25 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %3, align 4
  br label %70

30:                                               ; preds = %24, %14
  %31 = load %struct.view*, %struct.view** %4, align 8
  %32 = call i32 @reset_view(%struct.view* %31)
  %33 = load %struct.view*, %struct.view** %4, align 8
  %34 = getelementptr inbounds %struct.view, %struct.view* %33, i32 0, i32 0
  %35 = load i32, i32* @WATCH_INDEX, align 4
  %36 = call i32 @watch_register(i32* %34, i32 %35)
  %37 = load %struct.view*, %struct.view** %4, align 8
  %38 = load i32, i32* @LINE_HEADER, align 4
  %39 = call i32 @add_line_nodata(%struct.view* %37, i32 %38)
  %40 = call i32 (...) @status_update_onbranch()
  %41 = call i32 (...) @update_index()
  %42 = load i32, i32* @show_untracked_only, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %30
  %45 = load %struct.view*, %struct.view** %4, align 8
  %46 = load i8**, i8*** %6, align 8
  %47 = load i8, i8* %7, align 1
  %48 = load i32, i32* @LINE_STAT_STAGED, align 4
  %49 = call i32 @status_run(%struct.view* %45, i8** %46, i8 signext %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %44, %30
  %52 = load i32, i32* @show_untracked_only, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load %struct.view*, %struct.view** %4, align 8
  %56 = load i8**, i8*** @status_diff_files_argv, align 8
  %57 = load i32, i32* @LINE_STAT_UNSTAGED, align 4
  %58 = call i32 @status_run(%struct.view* %55, i8** %56, i8 signext 0, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54, %51
  %61 = load %struct.view*, %struct.view** %4, align 8
  %62 = call i32 @status_read_untracked(%struct.view* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60, %54, %44
  %65 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %60
  %67 = load %struct.view*, %struct.view** %4, align 8
  %68 = call i32 @status_restore(%struct.view* %67)
  %69 = load i32, i32* @SUCCESS, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %64, %28
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @is_initial_commit(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @reset_view(%struct.view*) #1

declare dso_local i32 @watch_register(i32*, i32) #1

declare dso_local i32 @add_line_nodata(%struct.view*, i32) #1

declare dso_local i32 @status_update_onbranch(...) #1

declare dso_local i32 @update_index(...) #1

declare dso_local i32 @status_run(%struct.view*, i8**, i8 signext, i32) #1

declare dso_local i32 @status_read_untracked(%struct.view*) #1

declare dso_local i32 @status_restore(%struct.view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
