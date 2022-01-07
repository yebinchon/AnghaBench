; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprSynonymAdvanceto.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprSynonymAdvanceto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i64*, i32*)* @fts5ExprSynonymAdvanceto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5ExprSynonymAdvanceto(%struct.TYPE_6__* %0, i32 %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* @SQLITE_OK, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %11, align 8
  br label %18

18:                                               ; preds = %60, %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @SQLITE_OK, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ]
  br i1 %26, label %27, label %64

27:                                               ; preds = %25
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = call i64 @sqlite3Fts5IterEof(%struct.TYPE_7__* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %13, align 8
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %13, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %41, %33
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48, %41
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @sqlite3Fts5IterNextFrom(%struct.TYPE_7__* %55, i64 %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %52, %48, %45
  br label %59

59:                                               ; preds = %58, %27
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %11, align 8
  br label %18

64:                                               ; preds = %25
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @SQLITE_OK, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  store i32 1, i32* %12, align 4
  br label %76

71:                                               ; preds = %64
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @fts5ExprSynonymRowid(%struct.TYPE_6__* %72, i32 %73, i32* %12)
  %75 = load i64*, i64** %7, align 8
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i32, i32* %12, align 4
  ret i32 %77
}

declare dso_local i64 @sqlite3Fts5IterEof(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3Fts5IterNextFrom(%struct.TYPE_7__*, i64) #1

declare dso_local i64 @fts5ExprSynonymRowid(%struct.TYPE_6__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
