; ModuleID = '/home/carl/AnghaBench/tig/src/extr_main.c_main_add_changes.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_main.c_main_add_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.main_state = type { i32, i32, i32 }

@NULL_ID = common dso_local global i8* null, align 8
@LINE_STAT_UNTRACKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Untracked changes\00", align 1
@LINE_STAT_UNSTAGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Unstaged changes\00", align 1
@LINE_STAT_STAGED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Staged changes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.main_state*, i8*)* @main_add_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @main_add_changes(%struct.view* %0, %struct.main_state* %1, i8* %2) #0 {
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.main_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.main_state* %1, %struct.main_state** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** @NULL_ID, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** @NULL_ID, align 8
  store i8* %12, i8** %9, align 8
  %13 = load %struct.main_state*, %struct.main_state** %5, align 8
  %14 = getelementptr inbounds %struct.main_state, %struct.main_state* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  store i8* null, i8** %7, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %8, align 8
  br label %19

19:                                               ; preds = %17, %3
  %20 = load %struct.main_state*, %struct.main_state** %5, align 8
  %21 = getelementptr inbounds %struct.main_state, %struct.main_state* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  store i8* null, i8** %8, align 8
  %25 = load %struct.main_state*, %struct.main_state** %5, align 8
  %26 = getelementptr inbounds %struct.main_state, %struct.main_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %29, %24
  br label %32

32:                                               ; preds = %31, %19
  %33 = load %struct.main_state*, %struct.main_state** %5, align 8
  %34 = getelementptr inbounds %struct.main_state, %struct.main_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i8* null, i8** %9, align 8
  br label %38

38:                                               ; preds = %37, %32
  %39 = load %struct.view*, %struct.view** %4, align 8
  %40 = load i32, i32* @LINE_STAT_UNTRACKED, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @main_add_changes_commit(%struct.view* %39, i32 %40, i8* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.view*, %struct.view** %4, align 8
  %46 = load i32, i32* @LINE_STAT_UNSTAGED, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = call i64 @main_add_changes_commit(%struct.view* %45, i32 %46, i8* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.view*, %struct.view** %4, align 8
  %52 = load i32, i32* @LINE_STAT_STAGED, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @main_add_changes_commit(%struct.view* %51, i32 %52, i8* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %50, %44, %38
  %57 = phi i1 [ false, %44 ], [ false, %38 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  ret i32 %58
}

declare dso_local i64 @main_add_changes_commit(%struct.view*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
