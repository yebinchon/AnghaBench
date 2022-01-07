; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_status_read_untracked.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_status_read_untracked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }

@opt_status_show_untracked_files = common dso_local global i32 0, align 4
@LINE_STAT_UNTRACKED = common dso_local global i32 0, align 4
@LINE_STAT_NONE = common dso_local global i32 0, align 4
@opt_status_show_untracked_dirs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"--directory\00", align 1
@status_list_other_argv = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"--no-empty-directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*)* @status_read_untracked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_read_untracked(%struct.view* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.view*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  %4 = load i32, i32* @opt_status_show_untracked_files, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = load %struct.view*, %struct.view** %3, align 8
  %8 = load i32, i32* @LINE_STAT_UNTRACKED, align 4
  %9 = call i64 @add_line_nodata(%struct.view* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.view*, %struct.view** %3, align 8
  %13 = load i32, i32* @LINE_STAT_NONE, align 4
  %14 = call i64 @add_line_nodata(%struct.view* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i1 [ false, %6 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %44

19:                                               ; preds = %1
  %20 = load i64, i64* @opt_status_show_untracked_dirs, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)
  %24 = load i8**, i8*** @status_list_other_argv, align 8
  %25 = load i8**, i8*** @status_list_other_argv, align 8
  %26 = call i32 @ARRAY_SIZE(i8** %25)
  %27 = sub nsw i32 %26, 3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %24, i64 %28
  store i8* %23, i8** %29, align 8
  %30 = load i64, i64* @opt_status_show_untracked_dirs, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)
  %34 = load i8**, i8*** @status_list_other_argv, align 8
  %35 = load i8**, i8*** @status_list_other_argv, align 8
  %36 = call i32 @ARRAY_SIZE(i8** %35)
  %37 = sub nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %34, i64 %38
  store i8* %33, i8** %39, align 8
  %40 = load %struct.view*, %struct.view** %3, align 8
  %41 = load i8**, i8*** @status_list_other_argv, align 8
  %42 = load i32, i32* @LINE_STAT_UNTRACKED, align 4
  %43 = call i32 @status_run(%struct.view* %40, i8** %41, i8 signext 63, i32 %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %19, %16
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @add_line_nodata(%struct.view*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @status_run(%struct.view*, i8**, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
