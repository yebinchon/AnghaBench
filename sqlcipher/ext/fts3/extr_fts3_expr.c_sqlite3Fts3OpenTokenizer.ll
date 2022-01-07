; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_expr.c_sqlite3Fts3OpenTokenizer.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_expr.c_sqlite3Fts3OpenTokenizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__*, i8*, i32, %struct.TYPE_11__**)*, i32, i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*)* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }

@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts3OpenTokenizer(%struct.TYPE_12__* %0, i32 %1, i8* %2, i32 %3, %struct.TYPE_11__** %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__**, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_11__** %4, %struct.TYPE_11__*** %10, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %12, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_12__*, i8*, i32, %struct.TYPE_11__**)*, i32 (%struct.TYPE_12__*, i8*, i32, %struct.TYPE_11__**)** %18, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 %19(%struct.TYPE_12__* %20, i8* %21, i32 %22, %struct.TYPE_11__** %12)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @SQLITE_OK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %29 = icmp eq %struct.TYPE_11__* %28, null
  br label %30

30:                                               ; preds = %27, %5
  %31 = phi i1 [ true, %5 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @SQLITE_OK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %30
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %40, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %43, 1
  br i1 %44, label %45, label %62

45:                                               ; preds = %37
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %47, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 %48(%struct.TYPE_11__* %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @SQLITE_OK, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %60 = call i32 %58(%struct.TYPE_11__* %59)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %12, align 8
  br label %61

61:                                               ; preds = %55, %45
  br label %62

62:                                               ; preds = %61, %37
  br label %63

63:                                               ; preds = %62, %30
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %65 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %65, align 8
  %66 = load i32, i32* %13, align 4
  ret i32 %66
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
