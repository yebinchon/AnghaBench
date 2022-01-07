; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_numtree.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_numtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@TTrue = common dso_local global i32 0, align 4
@TNot = common dso_local global i32 0, align 4
@TAny = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*, i32)* @numtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @numtree(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @TTrue, align 4
  %13 = call %struct.TYPE_8__* @newleaf(i32* %11, i32 %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %3, align 8
  br label %41

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 2, %19
  %21 = sub nsw i32 %20, 1
  %22 = call %struct.TYPE_8__* @newtree(i32* %18, i32 %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %6, align 8
  br label %35

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 2, %27
  %29 = call %struct.TYPE_8__* @newtree(i32* %26, i32 %28)
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %6, align 8
  %30 = load i32, i32* @TNot, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = call %struct.TYPE_8__* @sib1(%struct.TYPE_8__* %33)
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %7, align 8
  br label %35

35:                                               ; preds = %23, %17
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = load i32, i32* @TAny, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @fillseq(%struct.TYPE_8__* %36, i32 %37, i32 %38, i32* null)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %3, align 8
  br label %41

41:                                               ; preds = %35, %10
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %42
}

declare dso_local %struct.TYPE_8__* @newleaf(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @newtree(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @sib1(%struct.TYPE_8__*) #1

declare dso_local i32 @fillseq(%struct.TYPE_8__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
