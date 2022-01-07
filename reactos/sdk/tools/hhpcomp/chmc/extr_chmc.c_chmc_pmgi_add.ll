; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_pmgi_add.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_pmgi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmcFile = type { %struct.chmcFile*, i32, i32, %struct.chmcItspHeader }
%struct.chmcItspHeader = type { i32 }
%struct.chmcPmgiChunkNode = type { %struct.chmcPmgiChunkNode*, i32, i32, %struct.chmcItspHeader }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chmc_pmgi_add(%struct.chmcFile* %0, %struct.chmcPmgiChunkNode* %1) #0 {
  %3 = alloca %struct.chmcFile*, align 8
  %4 = alloca %struct.chmcPmgiChunkNode*, align 8
  %5 = alloca %struct.chmcItspHeader*, align 8
  store %struct.chmcFile* %0, %struct.chmcFile** %3, align 8
  store %struct.chmcPmgiChunkNode* %1, %struct.chmcPmgiChunkNode** %4, align 8
  %6 = load %struct.chmcFile*, %struct.chmcFile** %3, align 8
  %7 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %6, i32 0, i32 3
  store %struct.chmcItspHeader* %7, %struct.chmcItspHeader** %5, align 8
  %8 = load %struct.chmcFile*, %struct.chmcFile** %3, align 8
  %9 = bitcast %struct.chmcFile* %8 to %struct.chmcPmgiChunkNode*
  %10 = call i32 @assert(%struct.chmcPmgiChunkNode* %9)
  %11 = load %struct.chmcPmgiChunkNode*, %struct.chmcPmgiChunkNode** %4, align 8
  %12 = call i32 @assert(%struct.chmcPmgiChunkNode* %11)
  %13 = load %struct.chmcPmgiChunkNode*, %struct.chmcPmgiChunkNode** %4, align 8
  %14 = getelementptr inbounds %struct.chmcPmgiChunkNode, %struct.chmcPmgiChunkNode* %13, i32 0, i32 2
  %15 = load %struct.chmcFile*, %struct.chmcFile** %3, align 8
  %16 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %15, i32 0, i32 1
  %17 = call i32 @list_add_tail(i32* %14, i32* %16)
  %18 = load %struct.chmcItspHeader*, %struct.chmcItspHeader** %5, align 8
  %19 = getelementptr inbounds %struct.chmcItspHeader, %struct.chmcItspHeader* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.chmcPmgiChunkNode*, %struct.chmcPmgiChunkNode** %4, align 8
  %23 = bitcast %struct.chmcPmgiChunkNode* %22 to %struct.chmcFile*
  %24 = load %struct.chmcFile*, %struct.chmcFile** %3, align 8
  %25 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %24, i32 0, i32 0
  store %struct.chmcFile* %23, %struct.chmcFile** %25, align 8
  ret void
}

declare dso_local i32 @assert(%struct.chmcPmgiChunkNode*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
