; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_mmuobject.c_allocvsidtree.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_mmuobject.c_allocvsidtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.TYPE_2__* }

@FreeTree = common dso_local global %struct.TYPE_2__* null, align 8
@TreeAlloc = common dso_local global i32 0, align 4
@NextTreePage = common dso_local global i32* null, align 8
@PpcPageTable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @allocvsidtree() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FreeTree, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FreeTree, align 8
  %8 = bitcast %struct.TYPE_2__* %7 to i32*
  store i32* %8, i32** %2, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FreeTree, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** @FreeTree, align 8
  %12 = load i32*, i32** %2, align 8
  store i32* %12, i32** %1, align 8
  br label %35

13:                                               ; preds = %0
  %14 = load i32, i32* @TreeAlloc, align 4
  %15 = icmp sge i32 %14, 3
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** @NextTreePage, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %16, %13
  %20 = call i32* (...) @allocpage()
  store i32* %20, i32** %3, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @PpcPageTable, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 0, %23
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = call i64 @PPC_PAGE_ADDR(i32* %25)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** @NextTreePage, align 8
  store i32 1, i32* @TreeAlloc, align 4
  %28 = load i32*, i32** @NextTreePage, align 8
  store i32* %28, i32** %1, align 8
  br label %35

29:                                               ; preds = %16
  %30 = load i32*, i32** @NextTreePage, align 8
  %31 = load i32, i32* @TreeAlloc, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @TreeAlloc, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32* %34, i32** %1, align 8
  br label %35

35:                                               ; preds = %29, %19, %6
  %36 = load i32*, i32** %1, align 8
  ret i32* %36
}

declare dso_local i32* @allocpage(...) #1

declare dso_local i64 @PPC_PAGE_ADDR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
