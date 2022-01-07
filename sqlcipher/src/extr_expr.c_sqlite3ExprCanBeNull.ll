; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprCanBeNull.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprCanBeNull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64, %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@TK_UPLUS = common dso_local global i64 0, align 8
@TK_UMINUS = common dso_local global i64 0, align 8
@TK_REGISTER = common dso_local global i32 0, align 4
@EP_CanBeNull = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3ExprCanBeNull(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  br label %5

5:                                                ; preds = %19, %1
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TK_UPLUS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TK_UMINUS, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %11, %5
  %18 = phi i1 [ true, %5 ], [ %16, %11 ]
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %3, align 8
  br label %5

23:                                               ; preds = %17
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @TK_REGISTER, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %23
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %73 [
    i32 129, label %37
    i32 128, label %37
    i32 130, label %37
    i32 132, label %37
    i32 131, label %38
  ]

37:                                               ; preds = %35, %35, %35, %35
  store i32 0, i32* %2, align 4
  br label %74

38:                                               ; preds = %35
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = load i32, i32* @EP_CanBeNull, align 4
  %41 = call i32 @ExprHasProperty(%struct.TYPE_10__* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = icmp eq %struct.TYPE_8__* %47, null
  br i1 %48, label %70, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp uge i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br label %68

68:                                               ; preds = %54, %49
  %69 = phi i1 [ false, %49 ], [ %67, %54 ]
  br label %70

70:                                               ; preds = %68, %43, %38
  %71 = phi i1 [ true, %43 ], [ true, %38 ], [ %69, %68 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %70, %37
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @ExprHasProperty(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
