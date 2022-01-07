; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/extr_xxhash.c_xxh64_copy_state.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/extr_xxhash.c_xxh64_copy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xxh64_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xxh64_copy_state(%struct.xxh64_state* %0, %struct.xxh64_state* %1) #0 {
  %3 = alloca %struct.xxh64_state*, align 8
  %4 = alloca %struct.xxh64_state*, align 8
  store %struct.xxh64_state* %0, %struct.xxh64_state** %3, align 8
  store %struct.xxh64_state* %1, %struct.xxh64_state** %4, align 8
  %5 = load %struct.xxh64_state*, %struct.xxh64_state** %3, align 8
  %6 = load %struct.xxh64_state*, %struct.xxh64_state** %4, align 8
  %7 = call i32 @memcpy(%struct.xxh64_state* %5, %struct.xxh64_state* %6, i32 4)
  ret void
}

declare dso_local i32 @memcpy(%struct.xxh64_state*, %struct.xxh64_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
