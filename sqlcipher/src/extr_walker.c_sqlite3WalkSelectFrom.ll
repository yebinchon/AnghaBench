; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_walker.c_sqlite3WalkSelectFrom.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_walker.c_sqlite3WalkSelectFrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.SrcList_item* }
%struct.SrcList_item = type { %struct.TYPE_7__, %struct.TYPE_6__, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@WRC_Abort = common dso_local global i32 0, align 4
@WRC_Continue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3WalkSelectFrom(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.SrcList_item*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %6, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load %struct.SrcList_item*, %struct.SrcList_item** %20, align 8
  store %struct.SrcList_item* %21, %struct.SrcList_item** %8, align 8
  br label %22

22:                                               ; preds = %56, %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %22
  %26 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %27 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %33 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @sqlite3WalkSelect(i32* %31, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @WRC_Abort, align 4
  store i32 %38, i32* %3, align 4
  br label %63

39:                                               ; preds = %30, %25
  %40 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %41 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %48 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @sqlite3WalkExprList(i32* %46, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @WRC_Abort, align 4
  store i32 %54, i32* %3, align 4
  br label %63

55:                                               ; preds = %45, %39
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %7, align 4
  %59 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %60 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %59, i32 1
  store %struct.SrcList_item* %60, %struct.SrcList_item** %8, align 8
  br label %22

61:                                               ; preds = %22
  %62 = load i32, i32* @WRC_Continue, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %53, %37
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3WalkSelect(i32*, i64) #1

declare dso_local i64 @sqlite3WalkExprList(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
