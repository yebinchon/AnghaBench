; ModuleID = '/home/carl/AnghaBench/tig/src/extr_main.c_main_register_commit.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_main.c_main_register_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.main_state* }
%struct.main_state = type { i32, i32, i32, i64, %struct.graph* }
%struct.graph = type { i32 (%struct.graph*, i32*, i32, i8*, i32)* }
%struct.commit = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.view*, %struct.commit*, i8*, i32)* @main_register_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @main_register_commit(%struct.view* %0, %struct.commit* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.main_state*, align 8
  %10 = alloca %struct.graph*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.commit* %1, %struct.commit** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.view*, %struct.view** %5, align 8
  %12 = getelementptr inbounds %struct.view, %struct.view* %11, i32 0, i32 0
  %13 = load %struct.main_state*, %struct.main_state** %12, align 8
  store %struct.main_state* %13, %struct.main_state** %9, align 8
  %14 = load %struct.main_state*, %struct.main_state** %9, align 8
  %15 = getelementptr inbounds %struct.main_state, %struct.main_state* %14, i32 0, i32 4
  %16 = load %struct.graph*, %struct.graph** %15, align 8
  store %struct.graph* %16, %struct.graph** %10, align 8
  %17 = load %struct.commit*, %struct.commit** %6, align 8
  %18 = getelementptr inbounds %struct.commit, %struct.commit* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @string_copy_rev(i32 %19, i8* %20)
  %22 = load %struct.main_state*, %struct.main_state** %9, align 8
  %23 = getelementptr inbounds %struct.main_state, %struct.main_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %4
  %27 = load %struct.main_state*, %struct.main_state** %9, align 8
  %28 = getelementptr inbounds %struct.main_state, %struct.main_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.main_state*, %struct.main_state** %9, align 8
  %33 = getelementptr inbounds %struct.main_state, %struct.main_state* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31, %26, %4
  %37 = load %struct.commit*, %struct.commit** %6, align 8
  %38 = getelementptr inbounds %struct.commit, %struct.commit* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @is_head_commit(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.view*, %struct.view** %5, align 8
  %44 = load %struct.main_state*, %struct.main_state** %9, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @main_add_changes(%struct.view* %43, %struct.main_state* %44, i8* %45)
  %47 = load %struct.main_state*, %struct.main_state** %9, align 8
  %48 = getelementptr inbounds %struct.main_state, %struct.main_state* %47, i32 0, i32 2
  store i32 0, i32* %48, align 8
  %49 = load %struct.main_state*, %struct.main_state** %9, align 8
  %50 = getelementptr inbounds %struct.main_state, %struct.main_state* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load %struct.main_state*, %struct.main_state** %9, align 8
  %52 = getelementptr inbounds %struct.main_state, %struct.main_state* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %42, %36, %31
  %54 = load %struct.main_state*, %struct.main_state** %9, align 8
  %55 = getelementptr inbounds %struct.main_state, %struct.main_state* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.graph*, %struct.graph** %10, align 8
  %60 = getelementptr inbounds %struct.graph, %struct.graph* %59, i32 0, i32 0
  %61 = load i32 (%struct.graph*, i32*, i32, i8*, i32)*, i32 (%struct.graph*, i32*, i32, i8*, i32)** %60, align 8
  %62 = load %struct.graph*, %struct.graph** %10, align 8
  %63 = load %struct.commit*, %struct.commit** %6, align 8
  %64 = getelementptr inbounds %struct.commit, %struct.commit* %63, i32 0, i32 1
  %65 = load %struct.commit*, %struct.commit** %6, align 8
  %66 = getelementptr inbounds %struct.commit, %struct.commit* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 %61(%struct.graph* %62, i32* %64, i32 %67, i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %58, %53
  ret void
}

declare dso_local i32 @string_copy_rev(i32, i8*) #1

declare dso_local i64 @is_head_commit(i32) #1

declare dso_local i32 @main_add_changes(%struct.view*, %struct.main_state*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
