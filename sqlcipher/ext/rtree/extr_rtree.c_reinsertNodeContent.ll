; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_reinsertNodeContent.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_reinsertNodeContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @reinsertNodeContent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reinsertNodeContent(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %11 = load i32, i32* @SQLITE_OK, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = call i32 @NCELL(%struct.TYPE_8__* %12)
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %56, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @SQLITE_OK, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %59

24:                                               ; preds = %22
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @nodeGetCell(i32* %25, %struct.TYPE_8__* %26, i32 %27, i32* %9)
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @ChooseLeaf(i32* %29, i32* %9, i32 %33, %struct.TYPE_8__** %8)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SQLITE_OK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %24
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @rtreeInsertCell(i32* %39, %struct.TYPE_8__* %40, i32* %9, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = call i32 @nodeRelease(i32* %46, %struct.TYPE_8__* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SQLITE_OK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %38
  br label %55

55:                                               ; preds = %54, %24
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %14

59:                                               ; preds = %22
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @NCELL(%struct.TYPE_8__*) #1

declare dso_local i32 @nodeGetCell(i32*, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @ChooseLeaf(i32*, i32*, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @rtreeInsertCell(i32*, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @nodeRelease(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
