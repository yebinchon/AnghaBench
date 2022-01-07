; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_redact.c_get_next_redact_record.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_redact.c_get_next_redact_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redact_record = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.redact_record* (i32*, %struct.redact_record*)* @get_next_redact_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.redact_record* @get_next_redact_record(i32* %0, %struct.redact_record* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.redact_record*, align 8
  %5 = alloca %struct.redact_record*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.redact_record* %1, %struct.redact_record** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.redact_record* @bqueue_dequeue(i32* %6)
  store %struct.redact_record* %7, %struct.redact_record** %5, align 8
  %8 = load %struct.redact_record*, %struct.redact_record** %4, align 8
  %9 = load %struct.redact_record*, %struct.redact_record** %5, align 8
  %10 = call i32 @redact_record_before(%struct.redact_record* %8, %struct.redact_record* %9)
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.redact_record*, %struct.redact_record** %4, align 8
  %13 = call i32 @kmem_free(%struct.redact_record* %12, i32 4)
  %14 = load %struct.redact_record*, %struct.redact_record** %5, align 8
  ret %struct.redact_record* %14
}

declare dso_local %struct.redact_record* @bqueue_dequeue(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @redact_record_before(%struct.redact_record*, %struct.redact_record*) #1

declare dso_local i32 @kmem_free(%struct.redact_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
