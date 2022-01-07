; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_pmgl_done.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_pmgl_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmcFile = type { i32, %struct.chmcTreeNode** }
%struct.chmcTreeNode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chmc_pmgl_done(%struct.chmcFile* %0) #0 {
  %2 = alloca %struct.chmcFile*, align 8
  %3 = alloca %struct.chmcTreeNode*, align 8
  %4 = alloca i32, align 4
  store %struct.chmcFile* %0, %struct.chmcFile** %2, align 8
  %5 = load %struct.chmcFile*, %struct.chmcFile** %2, align 8
  %6 = call i32 @assert(%struct.chmcFile* %5)
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %24, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.chmcFile*, %struct.chmcFile** %2, align 8
  %10 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %7
  %14 = load %struct.chmcFile*, %struct.chmcFile** %2, align 8
  %15 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %14, i32 0, i32 1
  %16 = load %struct.chmcTreeNode**, %struct.chmcTreeNode*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.chmcTreeNode*, %struct.chmcTreeNode** %16, i64 %18
  %20 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %19, align 8
  store %struct.chmcTreeNode* %20, %struct.chmcTreeNode** %3, align 8
  %21 = load %struct.chmcFile*, %struct.chmcFile** %2, align 8
  %22 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %3, align 8
  %23 = call i32 @chmc_pmgl_add_entry(%struct.chmcFile* %21, %struct.chmcTreeNode* %22)
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %7

27:                                               ; preds = %7
  ret void
}

declare dso_local i32 @assert(%struct.chmcFile*) #1

declare dso_local i32 @chmc_pmgl_add_entry(%struct.chmcFile*, %struct.chmcTreeNode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
