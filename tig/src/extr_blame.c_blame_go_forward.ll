; ModuleID = '/home/carl/AnghaBench/tig/src/extr_blame.c_blame_go_forward.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_blame.c_blame_go_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_2__*, i32, %struct.blame_state* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.blame_state = type { %struct.blame_history_state }
%struct.blame_history_state = type { i32, i32 }
%struct.blame = type { i32, %struct.blame_commit* }
%struct.blame_commit = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [35 x i8] c"The selected commit has no parents\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"The selected commit is already displayed\00", align 1
@blame_view_history = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to save current view state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.view*, %struct.blame*, i32)* @blame_go_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blame_go_forward(%struct.view* %0, %struct.blame* %1, i32 %2) #0 {
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.blame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.blame_state*, align 8
  %8 = alloca %struct.blame_history_state*, align 8
  %9 = alloca %struct.blame_commit*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.blame* %1, %struct.blame** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.view*, %struct.view** %4, align 8
  %13 = getelementptr inbounds %struct.view, %struct.view* %12, i32 0, i32 2
  %14 = load %struct.blame_state*, %struct.blame_state** %13, align 8
  store %struct.blame_state* %14, %struct.blame_state** %7, align 8
  %15 = load %struct.blame_state*, %struct.blame_state** %7, align 8
  %16 = getelementptr inbounds %struct.blame_state, %struct.blame_state* %15, i32 0, i32 0
  store %struct.blame_history_state* %16, %struct.blame_history_state** %8, align 8
  %17 = load %struct.blame*, %struct.blame** %5, align 8
  %18 = getelementptr inbounds %struct.blame, %struct.blame* %17, i32 0, i32 1
  %19 = load %struct.blame_commit*, %struct.blame_commit** %18, align 8
  store %struct.blame_commit* %19, %struct.blame_commit** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.blame_commit*, %struct.blame_commit** %9, align 8
  %24 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  br label %30

26:                                               ; preds = %3
  %27 = load %struct.blame_commit*, %struct.blame_commit** %9, align 8
  %28 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i8* [ %25, %22 ], [ %29, %26 ]
  store i8* %31, i8** %10, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.blame_commit*, %struct.blame_commit** %9, align 8
  %36 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  br label %42

38:                                               ; preds = %30
  %39 = load %struct.blame_commit*, %struct.blame_commit** %9, align 8
  %40 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i8* [ %37, %34 ], [ %41, %38 ]
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @report(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %109

52:                                               ; preds = %47, %42
  %53 = load %struct.blame_history_state*, %struct.blame_history_state** %8, align 8
  %54 = getelementptr inbounds %struct.blame_history_state, %struct.blame_history_state* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @strcmp(i32 %55, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %52
  %60 = load %struct.blame_history_state*, %struct.blame_history_state** %8, align 8
  %61 = getelementptr inbounds %struct.blame_history_state, %struct.blame_history_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @strcmp(i32 %62, i8* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = call i32 @report(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %109

68:                                               ; preds = %59, %52
  %69 = load %struct.view*, %struct.view** %4, align 8
  %70 = getelementptr inbounds %struct.view, %struct.view* %69, i32 0, i32 1
  %71 = load %struct.blame_history_state*, %struct.blame_history_state** %8, align 8
  %72 = call i32 @push_view_history_state(i32* @blame_view_history, i32* %70, %struct.blame_history_state* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = call i32 @report(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %109

76:                                               ; preds = %68
  %77 = load %struct.view*, %struct.view** %4, align 8
  %78 = getelementptr inbounds %struct.view, %struct.view* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @string_ncopy(i32 %81, i8* %82, i32 8)
  %84 = load %struct.view*, %struct.view** %4, align 8
  %85 = getelementptr inbounds %struct.view, %struct.view* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %11, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = call i32 @string_ncopy(i32 %88, i8* %89, i32 %91)
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %76
  %96 = load %struct.view*, %struct.view** %4, align 8
  %97 = load %struct.blame*, %struct.blame** %5, align 8
  %98 = call i32 @setup_blame_parent_line(%struct.view* %96, %struct.blame* %97)
  br label %99

99:                                               ; preds = %95, %76
  %100 = load %struct.blame*, %struct.blame** %5, align 8
  %101 = getelementptr inbounds %struct.blame, %struct.blame* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.view*, %struct.view** %4, align 8
  %104 = getelementptr inbounds %struct.view, %struct.view* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i32 %102, i32* %106, align 4
  %107 = load %struct.view*, %struct.view** %4, align 8
  %108 = call i32 @reload_view(%struct.view* %107)
  br label %109

109:                                              ; preds = %99, %74, %66, %50
  ret void
}

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @push_view_history_state(i32*, i32*, %struct.blame_history_state*) #1

declare dso_local i32 @string_ncopy(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @setup_blame_parent_line(%struct.view*, %struct.blame*) #1

declare dso_local i32 @reload_view(%struct.view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
