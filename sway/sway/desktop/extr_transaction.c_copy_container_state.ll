; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_copy_container_state.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_copy_container_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sway_transaction_instruction = type { %struct.sway_container_state }
%struct.sway_container_state = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sway_seat = type { i32 }
%struct.sway_node = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*, %struct.sway_transaction_instruction*)* @copy_container_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_container_state(%struct.sway_container* %0, %struct.sway_transaction_instruction* %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca %struct.sway_transaction_instruction*, align 8
  %5 = alloca %struct.sway_container_state*, align 8
  %6 = alloca %struct.sway_seat*, align 8
  %7 = alloca %struct.sway_node*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store %struct.sway_transaction_instruction* %1, %struct.sway_transaction_instruction** %4, align 8
  %8 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %4, align 8
  %9 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %8, i32 0, i32 0
  store %struct.sway_container_state* %9, %struct.sway_container_state** %5, align 8
  %10 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %11 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %10, i32 0, i32 20
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %14 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %13, i32 0, i32 20
  store i32 %12, i32* %14, align 8
  %15 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %16 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %15, i32 0, i32 19
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %19 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %18, i32 0, i32 19
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %21 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %20, i32 0, i32 18
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %24 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %23, i32 0, i32 18
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %26 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %25, i32 0, i32 17
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %29 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %28, i32 0, i32 17
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %31 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %30, i32 0, i32 16
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %34 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %33, i32 0, i32 16
  store i32 %32, i32* %34, align 8
  %35 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %36 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %35, i32 0, i32 15
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %39 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %38, i32 0, i32 15
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %41 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %40, i32 0, i32 14
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %44 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %43, i32 0, i32 14
  store i32 %42, i32* %44, align 8
  %45 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %46 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %45, i32 0, i32 13
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %49 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %48, i32 0, i32 13
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %51 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %54 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %53, i32 0, i32 12
  store i32 %52, i32* %54, align 8
  %55 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %56 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %59 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 4
  %60 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %61 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %64 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 8
  %65 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %66 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %69 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %68, i32 0, i32 9
  store i32 %67, i32* %69, align 4
  %70 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %71 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %74 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %73, i32 0, i32 8
  store i32 %72, i32* %74, align 8
  %75 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %76 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %79 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  %80 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %81 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %84 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %86 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %89 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %91 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %94 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %96 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %99 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %101 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %2
  %105 = call i32 (...) @create_list()
  %106 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %107 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %109 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %112 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @list_cat(i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %104, %2
  %116 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %116, %struct.sway_seat** %6, align 8
  %117 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %118 = call i32* @seat_get_focus(%struct.sway_seat* %117)
  %119 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %120 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %119, i32 0, i32 0
  %121 = icmp eq i32* %118, %120
  %122 = zext i1 %121 to i32
  %123 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %124 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %126 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %115
  %130 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %131 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %132 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %131, i32 0, i32 0
  %133 = call %struct.sway_node* @seat_get_active_tiling_child(%struct.sway_seat* %130, i32* %132)
  store %struct.sway_node* %133, %struct.sway_node** %7, align 8
  %134 = load %struct.sway_node*, %struct.sway_node** %7, align 8
  %135 = icmp ne %struct.sway_node* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load %struct.sway_node*, %struct.sway_node** %7, align 8
  %138 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  br label %141

140:                                              ; preds = %129
  br label %141

141:                                              ; preds = %140, %136
  %142 = phi i32* [ %139, %136 ], [ null, %140 ]
  %143 = load %struct.sway_container_state*, %struct.sway_container_state** %5, align 8
  %144 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %143, i32 0, i32 1
  store i32* %142, i32** %144, align 8
  br label %145

145:                                              ; preds = %141, %115
  ret void
}

declare dso_local i32 @create_list(...) #1

declare dso_local i32 @list_cat(i32, i32) #1

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local i32* @seat_get_focus(%struct.sway_seat*) #1

declare dso_local %struct.sway_node* @seat_get_active_tiling_child(%struct.sway_seat*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
