; ModuleID = '/home/carl/AnghaBench/tig/src/extr_main.c_main_get_column_data.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_main.c_main_get_column_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.main_state* }
%struct.main_state = type { i32, i64, i32*, i64 }
%struct.line = type { i32, %struct.commit* }
%struct.commit = type { i32, i32, i32, i32, i32 }
%struct.view_column_data = type { i32, i32*, i32, i32, i32, i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main_get_column_data(%struct.view* %0, %struct.line* %1, %struct.view_column_data* %2) #0 {
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.line*, align 8
  %6 = alloca %struct.view_column_data*, align 8
  %7 = alloca %struct.main_state*, align 8
  %8 = alloca %struct.commit*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.line* %1, %struct.line** %5, align 8
  store %struct.view_column_data* %2, %struct.view_column_data** %6, align 8
  %9 = load %struct.view*, %struct.view** %4, align 8
  %10 = getelementptr inbounds %struct.view, %struct.view* %9, i32 0, i32 0
  %11 = load %struct.main_state*, %struct.main_state** %10, align 8
  store %struct.main_state* %11, %struct.main_state** %7, align 8
  %12 = load %struct.line*, %struct.line** %5, align 8
  %13 = getelementptr inbounds %struct.line, %struct.line* %12, i32 0, i32 1
  %14 = load %struct.commit*, %struct.commit** %13, align 8
  store %struct.commit* %14, %struct.commit** %8, align 8
  %15 = load %struct.commit*, %struct.commit** %8, align 8
  %16 = getelementptr inbounds %struct.commit, %struct.commit* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.view_column_data*, %struct.view_column_data** %6, align 8
  %19 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load %struct.commit*, %struct.commit** %8, align 8
  %21 = getelementptr inbounds %struct.commit, %struct.commit* %20, i32 0, i32 3
  %22 = load %struct.view_column_data*, %struct.view_column_data** %6, align 8
  %23 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %22, i32 0, i32 6
  store i32* %21, i32** %23, align 8
  %24 = load %struct.commit*, %struct.commit** %8, align 8
  %25 = getelementptr inbounds %struct.commit, %struct.commit* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.view_column_data*, %struct.view_column_data** %6, align 8
  %28 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.main_state*, %struct.main_state** %7, align 8
  %30 = getelementptr inbounds %struct.main_state, %struct.main_state* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %3
  %34 = load %struct.main_state*, %struct.main_state** %7, align 8
  %35 = getelementptr inbounds %struct.main_state, %struct.main_state* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.line*, %struct.line** %5, align 8
  %38 = getelementptr inbounds %struct.line, %struct.line* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.view_column_data*, %struct.view_column_data** %6, align 8
  %45 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %33, %3
  %47 = load %struct.commit*, %struct.commit** %8, align 8
  %48 = getelementptr inbounds %struct.commit, %struct.commit* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.view_column_data*, %struct.view_column_data** %6, align 8
  %51 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.main_state*, %struct.main_state** %7, align 8
  %53 = getelementptr inbounds %struct.main_state, %struct.main_state* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %46
  %57 = load %struct.main_state*, %struct.main_state** %7, align 8
  %58 = getelementptr inbounds %struct.main_state, %struct.main_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.view_column_data*, %struct.view_column_data** %6, align 8
  %61 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.commit*, %struct.commit** %8, align 8
  %63 = getelementptr inbounds %struct.commit, %struct.commit* %62, i32 0, i32 0
  %64 = load %struct.view_column_data*, %struct.view_column_data** %6, align 8
  %65 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %64, i32 0, i32 1
  store i32* %63, i32** %65, align 8
  br label %66

66:                                               ; preds = %56, %46
  %67 = load %struct.line*, %struct.line** %5, align 8
  %68 = load %struct.commit*, %struct.commit** %8, align 8
  %69 = call i32 @main_get_commit_refs(%struct.line* %67, %struct.commit* %68)
  %70 = load %struct.view_column_data*, %struct.view_column_data** %6, align 8
  %71 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  ret i32 1
}

declare dso_local i32 @main_get_commit_refs(%struct.line*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
