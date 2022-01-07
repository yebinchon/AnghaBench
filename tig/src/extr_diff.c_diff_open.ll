; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_open.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@encoding_arg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"--pretty=fuller\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"--root\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"--patch-with-stat\00", align 1
@DIFF_ARGS = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"%(cmdlineargs)\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"--no-color\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%(commit)\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%(fileargs)\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32)* @diff_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_open(%struct.view* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [17 x i8*], align 16
  %7 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds [17 x i8*], [17 x i8*]* %6, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = load i8*, i8** @encoding_arg, align 8
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = call i8* (...) @use_mailmap_arg()
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 1
  %18 = call i8* (...) @show_notes_arg()
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 1
  %20 = call i8* (...) @diff_context_arg()
  store i8* %20, i8** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 1
  %22 = call i8* (...) @ignore_space_arg()
  store i8* %22, i8** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 1
  %24 = load i8*, i8** @DIFF_ARGS, align 8
  store i8* %24, i8** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %26, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %27, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %28, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %29, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  store i8* null, i8** %30, align 8
  %31 = load %struct.view*, %struct.view** %4, align 8
  %32 = load %struct.view*, %struct.view** %4, align 8
  %33 = getelementptr inbounds %struct.view, %struct.view* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @diff_save_line(%struct.view* %31, i32 %34, i32 %35)
  %37 = load %struct.view*, %struct.view** %4, align 8
  %38 = getelementptr inbounds [17 x i8*], [17 x i8*]* %6, i64 0, i64 0
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @begin_update(%struct.view* %37, i32* null, i8** %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SUCCESS, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %52

46:                                               ; preds = %2
  %47 = load %struct.view*, %struct.view** %4, align 8
  %48 = load %struct.view*, %struct.view** %4, align 8
  %49 = getelementptr inbounds %struct.view, %struct.view* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @diff_init_highlight(%struct.view* %47, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %44
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i8* @use_mailmap_arg(...) #1

declare dso_local i8* @show_notes_arg(...) #1

declare dso_local i8* @diff_context_arg(...) #1

declare dso_local i8* @ignore_space_arg(...) #1

declare dso_local i32 @diff_save_line(%struct.view*, i32, i32) #1

declare dso_local i32 @begin_update(%struct.view*, i32*, i8**, i32) #1

declare dso_local i32 @diff_init_highlight(%struct.view*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
