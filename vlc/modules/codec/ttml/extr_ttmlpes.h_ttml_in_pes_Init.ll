; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_ttmlpes.h_ttml_in_pes_Init.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_ttmlpes.h_ttml_in_pes_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttml_in_pes_ctx = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttml_in_pes_ctx*)* @ttml_in_pes_Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttml_in_pes_Init(%struct.ttml_in_pes_ctx* %0) #0 {
  %2 = alloca %struct.ttml_in_pes_ctx*, align 8
  store %struct.ttml_in_pes_ctx* %0, %struct.ttml_in_pes_ctx** %2, align 8
  %3 = load %struct.ttml_in_pes_ctx*, %struct.ttml_in_pes_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.ttml_in_pes_ctx, %struct.ttml_in_pes_ctx* %3, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load %struct.ttml_in_pes_ctx*, %struct.ttml_in_pes_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.ttml_in_pes_ctx, %struct.ttml_in_pes_ctx* %5, i32 0, i32 0
  store i32 -1, i32* %6, align 8
  %7 = load %struct.ttml_in_pes_ctx*, %struct.ttml_in_pes_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.ttml_in_pes_ctx, %struct.ttml_in_pes_ctx* %7, i32 0, i32 1
  store i32 -1, i32* %8, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
