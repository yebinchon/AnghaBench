; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_resolve.c_sqlite3CreateColumnExpr.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_resolve.c_sqlite3CreateColumnExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.SrcList_item* }
%struct.SrcList_item = type { i32, i32, %struct.TYPE_8__* }

@TK_COLUMN = common dso_local global i32 0, align 4
@BMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @sqlite3CreateColumnExpr(i32* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.SrcList_item*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @TK_COLUMN, align 4
  %13 = call %struct.TYPE_11__* @sqlite3ExprAlloc(i32* %11, i32 %12, i32 0, i32 0)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %9, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %76

16:                                               ; preds = %4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.SrcList_item*, %struct.SrcList_item** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %19, i64 %21
  store %struct.SrcList_item* %22, %struct.SrcList_item** %10, align 8
  %23 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %24 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %28, align 8
  %29 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %30 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %16
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  br label %75

45:                                               ; preds = %16
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @BMS, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @testcase(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @BMS, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp eq i32 %54, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @testcase(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @BMS, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %45
  %64 = load i32, i32* @BMS, align 4
  %65 = sub nsw i32 %64, 1
  br label %68

66:                                               ; preds = %45
  %67 = load i32, i32* %8, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i32 [ %65, %63 ], [ %67, %66 ]
  %70 = shl i32 1, %69
  %71 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %72 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %68, %42
  br label %76

76:                                               ; preds = %75, %4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  ret %struct.TYPE_11__* %77
}

declare dso_local %struct.TYPE_11__* @sqlite3ExprAlloc(i32*, i32, i32, i32) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
