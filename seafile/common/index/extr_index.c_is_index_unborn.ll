; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_is_index_unborn.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_is_index_unborn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_index_unborn(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %3 = load %struct.index_state*, %struct.index_state** %2, align 8
  %4 = getelementptr inbounds %struct.index_state, %struct.index_state* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = load %struct.index_state*, %struct.index_state** %2, align 8
  %9 = getelementptr inbounds %struct.index_state, %struct.index_state* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = load %struct.index_state*, %struct.index_state** %2, align 8
  %14 = getelementptr inbounds %struct.index_state, %struct.index_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %12, %7, %1
  %20 = phi i1 [ false, %7 ], [ false, %1 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
