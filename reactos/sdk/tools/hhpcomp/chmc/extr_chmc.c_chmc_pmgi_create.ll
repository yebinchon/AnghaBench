; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_pmgi_create.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_pmgi_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmcPmgiChunkNode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.chmcPmgiChunkNode* @chmc_pmgi_create() #0 {
  %1 = alloca %struct.chmcPmgiChunkNode*, align 8
  %2 = call %struct.chmcPmgiChunkNode* @malloc(i32 4)
  store %struct.chmcPmgiChunkNode* %2, %struct.chmcPmgiChunkNode** %1, align 8
  %3 = load %struct.chmcPmgiChunkNode*, %struct.chmcPmgiChunkNode** %1, align 8
  %4 = icmp ne %struct.chmcPmgiChunkNode* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.chmcPmgiChunkNode*, %struct.chmcPmgiChunkNode** %1, align 8
  %7 = call i32 @chmc_pmgi_init(%struct.chmcPmgiChunkNode* %6)
  br label %8

8:                                                ; preds = %5, %0
  %9 = load %struct.chmcPmgiChunkNode*, %struct.chmcPmgiChunkNode** %1, align 8
  ret %struct.chmcPmgiChunkNode* %9
}

declare dso_local %struct.chmcPmgiChunkNode* @malloc(i32) #1

declare dso_local i32 @chmc_pmgi_init(%struct.chmcPmgiChunkNode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
