; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprCodeAtInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprCodeAtInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3ExprCodeAtInit(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.ExprList_item*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ExprList_item*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = call i32 @ConstFactorOk(%struct.TYPE_10__* %12)
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %3
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %22 = icmp ne %struct.TYPE_11__* %21, null
  br i1 %22, label %23, label %57

23:                                               ; preds = %20
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load %struct.ExprList_item*, %struct.ExprList_item** %25, align 8
  store %struct.ExprList_item* %26, %struct.ExprList_item** %9, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %51, %23
  %31 = load i32, i32* %10, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %35 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %40 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @sqlite3ExprCompare(i32 0, i32 %41, i32* %42, i32 -1)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %47 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %4, align 4
  br label %101

50:                                               ; preds = %38, %33
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %53 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %52, i32 1
  store %struct.ExprList_item* %53, %struct.ExprList_item** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %10, align 4
  br label %30

56:                                               ; preds = %30
  br label %57

57:                                               ; preds = %56, %20, %3
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32* @sqlite3ExprDup(i32 %60, i32* %61, i32 0)
  store i32* %62, i32** %6, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call %struct.TYPE_11__* @sqlite3ExprListAppend(%struct.TYPE_10__* %63, %struct.TYPE_11__* %64, i32* %65)
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %8, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = icmp ne %struct.TYPE_11__* %67, null
  br i1 %68, label %69, label %96

69:                                               ; preds = %57
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load %struct.ExprList_item*, %struct.ExprList_item** %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %72, i64 %77
  store %struct.ExprList_item* %78, %struct.ExprList_item** %11, align 8
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = load %struct.ExprList_item*, %struct.ExprList_item** %11, align 8
  %83 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %69
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %86, %69
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.ExprList_item*, %struct.ExprList_item** %11, align 8
  %94 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  br label %96

96:                                               ; preds = %91, %57
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %99, align 8
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %96, %45
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ConstFactorOk(%struct.TYPE_10__*) #1

declare dso_local i64 @sqlite3ExprCompare(i32, i32, i32*, i32) #1

declare dso_local i32* @sqlite3ExprDup(i32, i32*, i32) #1

declare dso_local %struct.TYPE_11__* @sqlite3ExprListAppend(%struct.TYPE_10__*, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
