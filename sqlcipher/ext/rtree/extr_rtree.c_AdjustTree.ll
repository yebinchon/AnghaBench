; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_AdjustTree.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_AdjustTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@SQLITE_CORRUPT_VTAB = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i32*)* @AdjustTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AdjustTree(i32* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %52, %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %54

19:                                               ; preds = %14
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %10, align 8
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = icmp sgt i32 %24, 1000
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = call i64 @nodeParentIndex(i32* %27, %struct.TYPE_6__* %28, i32* %12)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26, %19
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @RTREE_IS_CORRUPT(i32* %32)
  %34 = load i32, i32* @SQLITE_CORRUPT_VTAB, align 4
  store i32 %34, i32* %4, align 4
  br label %56

35:                                               ; preds = %26
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @nodeGetCell(i32* %36, %struct.TYPE_6__* %37, i32 %38, i32* %11)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @cellContains(i32* %40, i32* %11, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %35
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @cellUnion(i32* %45, i32* %11, i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @nodeOverwriteCell(i32* %48, %struct.TYPE_6__* %49, i32* %11, i32 %50)
  br label %52

52:                                               ; preds = %44, %35
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %8, align 8
  br label %14

54:                                               ; preds = %14
  %55 = load i32, i32* @SQLITE_OK, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %31
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @nodeParentIndex(i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @RTREE_IS_CORRUPT(i32*) #1

declare dso_local i32 @nodeGetCell(i32*, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @cellContains(i32*, i32*, i32*) #1

declare dso_local i32 @cellUnion(i32*, i32*, i32*) #1

declare dso_local i32 @nodeOverwriteCell(i32*, %struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
