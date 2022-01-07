; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vacuum.c_sqlite3Vacuum.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vacuum.c_sqlite3Vacuum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@OP_Vacuum = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3Vacuum(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = call i32* @sqlite3GetVdbe(%struct.TYPE_7__* %10)
  store i32* %11, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %57

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @sqlite3TwoPartName(%struct.TYPE_7__* %19, i32* %20, i32* %21, i32** %5)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %57

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %15
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %56

30:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @sqlite3ResolveSelfReference(%struct.TYPE_7__* %34, i32 0, i32 0, i32* %35, i32 0)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @sqlite3ExprCode(%struct.TYPE_7__* %43, i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %38, %33, %30
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* @OP_Vacuum, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @sqlite3VdbeAddOp2(i32* %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @sqlite3VdbeUsesBtree(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %27
  br label %57

57:                                               ; preds = %56, %25, %14
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @sqlite3ExprDelete(i32 %60, i32* %61)
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3TwoPartName(%struct.TYPE_7__*, i32*, i32*, i32**) #1

declare dso_local i64 @sqlite3ResolveSelfReference(%struct.TYPE_7__*, i32, i32, i32*, i32) #1

declare dso_local i32 @sqlite3ExprCode(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeUsesBtree(i32*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
