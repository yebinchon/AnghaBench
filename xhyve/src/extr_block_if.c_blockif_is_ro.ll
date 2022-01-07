; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_block_if.c_blockif_is_ro.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_block_if.c_blockif_is_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blockif_ctxt = type { i32, i32 }

@BLOCKIF_SIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blockif_is_ro(%struct.blockif_ctxt* %0) #0 {
  %2 = alloca %struct.blockif_ctxt*, align 8
  store %struct.blockif_ctxt* %0, %struct.blockif_ctxt** %2, align 8
  %3 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %2, align 8
  %4 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i64, i64* @BLOCKIF_SIG, align 8
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %5, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %2, align 8
  %12 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  ret i32 %13
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
