; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-queue.c_cmdq_remove_group.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-queue.c_cmdq_remove_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_item = type { i64 }

@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdq_item*)* @cmdq_remove_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdq_remove_group(%struct.cmdq_item* %0) #0 {
  %2 = alloca %struct.cmdq_item*, align 8
  %3 = alloca %struct.cmdq_item*, align 8
  %4 = alloca %struct.cmdq_item*, align 8
  store %struct.cmdq_item* %0, %struct.cmdq_item** %2, align 8
  %5 = load %struct.cmdq_item*, %struct.cmdq_item** %2, align 8
  %6 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.cmdq_item*, %struct.cmdq_item** %2, align 8
  %12 = load i32, i32* @entry, align 4
  %13 = call %struct.cmdq_item* @TAILQ_NEXT(%struct.cmdq_item* %11, i32 %12)
  store %struct.cmdq_item* %13, %struct.cmdq_item** %3, align 8
  br label %14

14:                                               ; preds = %31, %10
  %15 = load %struct.cmdq_item*, %struct.cmdq_item** %3, align 8
  %16 = icmp ne %struct.cmdq_item* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load %struct.cmdq_item*, %struct.cmdq_item** %3, align 8
  %19 = load i32, i32* @entry, align 4
  %20 = call %struct.cmdq_item* @TAILQ_NEXT(%struct.cmdq_item* %18, i32 %19)
  store %struct.cmdq_item* %20, %struct.cmdq_item** %4, align 8
  %21 = load %struct.cmdq_item*, %struct.cmdq_item** %3, align 8
  %22 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.cmdq_item*, %struct.cmdq_item** %2, align 8
  %25 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load %struct.cmdq_item*, %struct.cmdq_item** %3, align 8
  %30 = call i32 @cmdq_remove(%struct.cmdq_item* %29)
  br label %31

31:                                               ; preds = %28, %17
  %32 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  store %struct.cmdq_item* %32, %struct.cmdq_item** %3, align 8
  br label %14

33:                                               ; preds = %9, %14
  ret void
}

declare dso_local %struct.cmdq_item* @TAILQ_NEXT(%struct.cmdq_item*, i32) #1

declare dso_local i32 @cmdq_remove(%struct.cmdq_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
