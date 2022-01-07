; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_copy_workspace_state.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_copy_workspace_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sway_transaction_instruction = type { %struct.sway_workspace_state }
%struct.sway_workspace_state = type { i32, %struct.sway_container*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.sway_container = type { %struct.sway_container* }
%struct.sway_seat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_workspace*, %struct.sway_transaction_instruction*)* @copy_workspace_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_workspace_state(%struct.sway_workspace* %0, %struct.sway_transaction_instruction* %1) #0 {
  %3 = alloca %struct.sway_workspace*, align 8
  %4 = alloca %struct.sway_transaction_instruction*, align 8
  %5 = alloca %struct.sway_workspace_state*, align 8
  %6 = alloca %struct.sway_seat*, align 8
  %7 = alloca %struct.sway_container*, align 8
  store %struct.sway_workspace* %0, %struct.sway_workspace** %3, align 8
  store %struct.sway_transaction_instruction* %1, %struct.sway_transaction_instruction** %4, align 8
  %8 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %4, align 8
  %9 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %8, i32 0, i32 0
  store %struct.sway_workspace_state* %9, %struct.sway_workspace_state** %5, align 8
  %10 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %11 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sway_workspace_state*, %struct.sway_workspace_state** %5, align 8
  %14 = getelementptr inbounds %struct.sway_workspace_state, %struct.sway_workspace_state* %13, i32 0, i32 10
  store i32 %12, i32* %14, align 8
  %15 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %16 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sway_workspace_state*, %struct.sway_workspace_state** %5, align 8
  %19 = getelementptr inbounds %struct.sway_workspace_state, %struct.sway_workspace_state* %18, i32 0, i32 9
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %21 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sway_workspace_state*, %struct.sway_workspace_state** %5, align 8
  %24 = getelementptr inbounds %struct.sway_workspace_state, %struct.sway_workspace_state* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %26 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sway_workspace_state*, %struct.sway_workspace_state** %5, align 8
  %29 = getelementptr inbounds %struct.sway_workspace_state, %struct.sway_workspace_state* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %31 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sway_workspace_state*, %struct.sway_workspace_state** %5, align 8
  %34 = getelementptr inbounds %struct.sway_workspace_state, %struct.sway_workspace_state* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %36 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sway_workspace_state*, %struct.sway_workspace_state** %5, align 8
  %39 = getelementptr inbounds %struct.sway_workspace_state, %struct.sway_workspace_state* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %41 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sway_workspace_state*, %struct.sway_workspace_state** %5, align 8
  %44 = getelementptr inbounds %struct.sway_workspace_state, %struct.sway_workspace_state* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = call i8* (...) @create_list()
  %46 = load %struct.sway_workspace_state*, %struct.sway_workspace_state** %5, align 8
  %47 = getelementptr inbounds %struct.sway_workspace_state, %struct.sway_workspace_state* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = call i8* (...) @create_list()
  %49 = load %struct.sway_workspace_state*, %struct.sway_workspace_state** %5, align 8
  %50 = getelementptr inbounds %struct.sway_workspace_state, %struct.sway_workspace_state* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.sway_workspace_state*, %struct.sway_workspace_state** %5, align 8
  %52 = getelementptr inbounds %struct.sway_workspace_state, %struct.sway_workspace_state* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %55 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @list_cat(i8* %53, i32 %56)
  %58 = load %struct.sway_workspace_state*, %struct.sway_workspace_state** %5, align 8
  %59 = getelementptr inbounds %struct.sway_workspace_state, %struct.sway_workspace_state* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %62 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @list_cat(i8* %60, i32 %63)
  %65 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %65, %struct.sway_seat** %6, align 8
  %66 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %67 = call i32* @seat_get_focus(%struct.sway_seat* %66)
  %68 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %69 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %68, i32 0, i32 0
  %70 = icmp eq i32* %67, %69
  %71 = zext i1 %70 to i32
  %72 = load %struct.sway_workspace_state*, %struct.sway_workspace_state** %5, align 8
  %73 = getelementptr inbounds %struct.sway_workspace_state, %struct.sway_workspace_state* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %75 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %76 = call %struct.sway_container* @seat_get_focus_inactive_tiling(%struct.sway_seat* %74, %struct.sway_workspace* %75)
  store %struct.sway_container* %76, %struct.sway_container** %7, align 8
  %77 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %78 = icmp ne %struct.sway_container* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %2
  br label %80

80:                                               ; preds = %85, %79
  %81 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %82 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %81, i32 0, i32 0
  %83 = load %struct.sway_container*, %struct.sway_container** %82, align 8
  %84 = icmp ne %struct.sway_container* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %87 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %86, i32 0, i32 0
  %88 = load %struct.sway_container*, %struct.sway_container** %87, align 8
  store %struct.sway_container* %88, %struct.sway_container** %7, align 8
  br label %80

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %2
  %91 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %92 = load %struct.sway_workspace_state*, %struct.sway_workspace_state** %5, align 8
  %93 = getelementptr inbounds %struct.sway_workspace_state, %struct.sway_workspace_state* %92, i32 0, i32 1
  store %struct.sway_container* %91, %struct.sway_container** %93, align 8
  ret void
}

declare dso_local i8* @create_list(...) #1

declare dso_local i32 @list_cat(i8*, i32) #1

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local i32* @seat_get_focus(%struct.sway_seat*) #1

declare dso_local %struct.sway_container* @seat_get_focus_inactive_tiling(%struct.sway_seat*, %struct.sway_workspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
