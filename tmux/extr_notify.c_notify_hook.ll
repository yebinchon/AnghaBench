; ModuleID = '/home/carl/AnghaBench/tmux/extr_notify.c_notify_hook.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_notify.c_notify_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_item = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.notify_entry = type { i8*, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @notify_hook(%struct.cmdq_item* %0, i8* %1) #0 {
  %3 = alloca %struct.cmdq_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.notify_entry, align 8
  store %struct.cmdq_item* %0, %struct.cmdq_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 @memset(%struct.notify_entry* %5, i32 0, i32 32)
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds %struct.notify_entry, %struct.notify_entry* %5, i32 0, i32 0
  store i8* %7, i8** %8, align 8
  %9 = getelementptr inbounds %struct.notify_entry, %struct.notify_entry* %5, i32 0, i32 5
  %10 = load %struct.cmdq_item*, %struct.cmdq_item** %3, align 8
  %11 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %10, i32 0, i32 0
  %12 = call i32 @cmd_find_copy_state(i32* %9, %struct.TYPE_4__* %11)
  %13 = load %struct.cmdq_item*, %struct.cmdq_item** %3, align 8
  %14 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.notify_entry, %struct.notify_entry* %5, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load %struct.cmdq_item*, %struct.cmdq_item** %3, align 8
  %18 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.notify_entry, %struct.notify_entry* %5, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = load %struct.cmdq_item*, %struct.cmdq_item** %3, align 8
  %23 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.notify_entry, %struct.notify_entry* %5, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.cmdq_item*, %struct.cmdq_item** %3, align 8
  %28 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.notify_entry, %struct.notify_entry* %5, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load %struct.cmdq_item*, %struct.cmdq_item** %3, align 8
  %35 = call i32 @notify_insert_hook(%struct.cmdq_item* %34, %struct.notify_entry* %5)
  ret void
}

declare dso_local i32 @memset(%struct.notify_entry*, i32, i32) #1

declare dso_local i32 @cmd_find_copy_state(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @notify_insert_hook(%struct.cmdq_item*, %struct.notify_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
