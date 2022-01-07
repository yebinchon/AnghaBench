; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_entry_destroy.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_entry_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmcTreeNode = type { i32, %struct.chmcTreeNode*, %struct.chmcTreeNode* }

@CHMC_TNFL_STATIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chmc_entry_destroy(%struct.chmcTreeNode* %0) #0 {
  %2 = alloca %struct.chmcTreeNode*, align 8
  store %struct.chmcTreeNode* %0, %struct.chmcTreeNode** %2, align 8
  %3 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %2, align 8
  %4 = call i32 @assert(%struct.chmcTreeNode* %3)
  %5 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %2, align 8
  %6 = getelementptr inbounds %struct.chmcTreeNode, %struct.chmcTreeNode* %5, i32 0, i32 2
  %7 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %6, align 8
  %8 = call i32 @assert(%struct.chmcTreeNode* %7)
  %9 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %2, align 8
  %10 = getelementptr inbounds %struct.chmcTreeNode, %struct.chmcTreeNode* %9, i32 0, i32 2
  %11 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %10, align 8
  %12 = call i32 @free(%struct.chmcTreeNode* %11)
  %13 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %2, align 8
  %14 = getelementptr inbounds %struct.chmcTreeNode, %struct.chmcTreeNode* %13, i32 0, i32 1
  %15 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %14, align 8
  %16 = icmp ne %struct.chmcTreeNode* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %2, align 8
  %19 = getelementptr inbounds %struct.chmcTreeNode, %struct.chmcTreeNode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CHMC_TNFL_STATIC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %2, align 8
  %26 = getelementptr inbounds %struct.chmcTreeNode, %struct.chmcTreeNode* %25, i32 0, i32 1
  %27 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %26, align 8
  %28 = call i32 @free(%struct.chmcTreeNode* %27)
  br label %29

29:                                               ; preds = %24, %17, %1
  %30 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %2, align 8
  %31 = call i32 @free(%struct.chmcTreeNode* %30)
  ret void
}

declare dso_local i32 @assert(%struct.chmcTreeNode*) #1

declare dso_local i32 @free(%struct.chmcTreeNode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
