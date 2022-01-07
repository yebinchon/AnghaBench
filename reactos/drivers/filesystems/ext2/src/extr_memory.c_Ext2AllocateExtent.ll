; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_memory.c_Ext2AllocateExtent.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_memory.c_Ext2AllocateExtent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@Ext2Global = common dso_local global %struct.TYPE_2__* null, align 8
@PS_EXTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @Ext2AllocateExtent() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Ext2Global, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = call i64 @ExAllocateFromNPagedLookasideList(i32* %4)
  %6 = inttoptr i64 %5 to i32*
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %17

10:                                               ; preds = %0
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @RtlZeroMemory(i32* %11, i32 4)
  %13 = load i32, i32* @PS_EXTENT, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @INC_MEM_COUNT(i32 %13, i32* %14, i32 4)
  %16 = load i32*, i32** %2, align 8
  store i32* %16, i32** %1, align 8
  br label %17

17:                                               ; preds = %10, %9
  %18 = load i32*, i32** %1, align 8
  ret i32* %18
}

declare dso_local i64 @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @RtlZeroMemory(i32*, i32) #1

declare dso_local i32 @INC_MEM_COUNT(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
