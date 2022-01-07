; ModuleID = '/home/carl/AnghaBench/systemd/src/rfkill/extr_rfkill.c_context_save_and_clear.c'
source_filename = "/home/carl/AnghaBench/systemd/src/rfkill/extr_rfkill.c_context_save_and_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.write_queue_item* }
%struct.write_queue_item = type { i32 }

@queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @context_save_and_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_save_and_clear(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.write_queue_item*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_4__* %4)
  br label %6

6:                                                ; preds = %11, %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.write_queue_item*, %struct.write_queue_item** %8, align 8
  store %struct.write_queue_item* %9, %struct.write_queue_item** %3, align 8
  %10 = icmp ne %struct.write_queue_item* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load i32, i32* @queue, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.write_queue_item*, %struct.write_queue_item** %14, align 8
  %16 = load %struct.write_queue_item*, %struct.write_queue_item** %3, align 8
  %17 = call i32 @LIST_REMOVE(i32 %12, %struct.write_queue_item* %15, %struct.write_queue_item* %16)
  %18 = load %struct.write_queue_item*, %struct.write_queue_item** %3, align 8
  %19 = call i32 @save_state_write_one(%struct.write_queue_item* %18)
  %20 = load %struct.write_queue_item*, %struct.write_queue_item** %3, align 8
  %21 = call i32 @write_queue_item_free(%struct.write_queue_item* %20)
  br label %6

22:                                               ; preds = %6
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @safe_close(i32 %25)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @LIST_REMOVE(i32, %struct.write_queue_item*, %struct.write_queue_item*) #1

declare dso_local i32 @save_state_write_one(%struct.write_queue_item*) #1

declare dso_local i32 @write_queue_item_free(%struct.write_queue_item*) #1

declare dso_local i32 @safe_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
