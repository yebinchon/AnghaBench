; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-queue.c_cmdq_get.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-queue.c_cmdq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_list = type { i32 }
%struct.client = type { %struct.cmdq_list }

@global_queue = common dso_local global %struct.cmdq_list zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmdq_list* (%struct.client*)* @cmdq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmdq_list* @cmdq_get(%struct.client* %0) #0 {
  %2 = alloca %struct.cmdq_list*, align 8
  %3 = alloca %struct.client*, align 8
  store %struct.client* %0, %struct.client** %3, align 8
  %4 = load %struct.client*, %struct.client** %3, align 8
  %5 = icmp eq %struct.client* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct.cmdq_list* @global_queue, %struct.cmdq_list** %2, align 8
  br label %10

7:                                                ; preds = %1
  %8 = load %struct.client*, %struct.client** %3, align 8
  %9 = getelementptr inbounds %struct.client, %struct.client* %8, i32 0, i32 0
  store %struct.cmdq_list* %9, %struct.cmdq_list** %2, align 8
  br label %10

10:                                               ; preds = %7, %6
  %11 = load %struct.cmdq_list*, %struct.cmdq_list** %2, align 8
  ret %struct.cmdq_list* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
