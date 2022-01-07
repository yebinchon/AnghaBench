; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprAdvanceto.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprAdvanceto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i64*, i32*, i32*)* @fts5ExprAdvanceto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5ExprAdvanceto(%struct.TYPE_5__* %0, i32 %1, i64* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %12, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %13, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %13, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %22, %5
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %70

29:                                               ; preds = %26
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %13, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %29, %22
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @sqlite3Fts5IterNextFrom(%struct.TYPE_5__* %34, i64 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = call i64 @sqlite3Fts5IterEof(%struct.TYPE_5__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39, %33
  %44 = load i32, i32* %14, align 4
  %45 = load i32*, i32** %10, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %11, align 8
  store i32 1, i32* %46, align 4
  store i32 1, i32* %6, align 4
  br label %73

47:                                               ; preds = %39
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %13, align 8
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %66, label %57

57:                                               ; preds = %53, %47
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp sle i64 %61, %62
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i1 [ false, %57 ], [ %63, %60 ]
  br label %66

66:                                               ; preds = %64, %53
  %67 = phi i1 [ true, %53 ], [ %65, %64 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  br label %70

70:                                               ; preds = %66, %29, %26
  %71 = load i64, i64* %13, align 8
  %72 = load i64*, i64** %9, align 8
  store i64 %71, i64* %72, align 8
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %70, %43
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @sqlite3Fts5IterNextFrom(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @sqlite3Fts5IterEof(%struct.TYPE_5__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
