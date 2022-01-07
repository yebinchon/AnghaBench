; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_dupedExprStructSize.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_dupedExprStructSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64 }

@EXPRDUP_REDUCE = common dso_local global i32 0, align 4
@EXPR_FULLSIZE = common dso_local global i32 0, align 4
@EP_Reduced = common dso_local global i32 0, align 4
@EP_TokenOnly = common dso_local global i32 0, align 4
@TK_SELECT_COLUMN = common dso_local global i64 0, align 8
@EP_WinFunc = common dso_local global i32 0, align 4
@EP_FromJoin = common dso_local global i32 0, align 4
@EP_MemToken = common dso_local global i32 0, align 4
@EP_NoReduce = common dso_local global i32 0, align 4
@EXPR_REDUCEDSIZE = common dso_local global i32 0, align 4
@EXPR_TOKENONLYSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @dupedExprStructSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dupedExprStructSize(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @EXPRDUP_REDUCE, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ true, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* @EXPR_FULLSIZE, align 4
  %17 = icmp sle i32 %16, 4095
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* @EP_Reduced, align 4
  %21 = load i32, i32* @EP_TokenOnly, align 4
  %22 = or i32 %20, %21
  %23 = and i32 4095, %22
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 0, %27
  br i1 %28, label %40, label %29

29:                                               ; preds = %12
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TK_SELECT_COLUMN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = load i32, i32* @EP_WinFunc, align 4
  %38 = call i64 @ExprHasProperty(%struct.TYPE_6__* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %29, %12
  %41 = load i32, i32* @EXPR_FULLSIZE, align 4
  store i32 %41, i32* %5, align 4
  br label %98

42:                                               ; preds = %35
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = load i32, i32* @EP_TokenOnly, align 4
  %45 = load i32, i32* @EP_Reduced, align 4
  %46 = or i32 %44, %45
  %47 = call i64 @ExprHasProperty(%struct.TYPE_6__* %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = load i32, i32* @EP_FromJoin, align 4
  %54 = call i64 @ExprHasProperty(%struct.TYPE_6__* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = load i32, i32* @EP_MemToken, align 4
  %61 = call i64 @ExprHasProperty(%struct.TYPE_6__* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = load i32, i32* @EP_NoReduce, align 4
  %68 = call i64 @ExprHasProperty(%struct.TYPE_6__* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %42
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77, %42
  %84 = load i32, i32* @EXPR_REDUCEDSIZE, align 4
  %85 = load i32, i32* @EP_Reduced, align 4
  %86 = or i32 %84, %85
  store i32 %86, i32* %5, align 4
  br label %97

87:                                               ; preds = %77
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i32, i32* @EXPR_TOKENONLYSIZE, align 4
  %95 = load i32, i32* @EP_TokenOnly, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %87, %83
  br label %98

98:                                               ; preds = %97, %40
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ExprHasProperty(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
