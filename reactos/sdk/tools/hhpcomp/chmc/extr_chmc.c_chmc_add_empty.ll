; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_add_empty.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_add_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmcTreeNode = type { i32 }
%struct.chmcFile = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.chmcTreeNode* @chmc_add_empty(%struct.chmcFile* %0, i8* %1) #0 {
  %3 = alloca %struct.chmcFile*, align 8
  %4 = alloca i8*, align 8
  store %struct.chmcFile* %0, %struct.chmcFile** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.chmcFile*, %struct.chmcFile** %3, align 8
  %6 = call i32 @assert(%struct.chmcFile* %5)
  %7 = load %struct.chmcFile*, %struct.chmcFile** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.chmcTreeNode* @chmc_add_entry(%struct.chmcFile* %7, i8* %8, i32 0, i32 0, i32* null, i32 0, i32 0)
  ret %struct.chmcTreeNode* %9
}

declare dso_local i32 @assert(%struct.chmcFile*) #1

declare dso_local %struct.chmcTreeNode* @chmc_add_entry(%struct.chmcFile*, i8*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
