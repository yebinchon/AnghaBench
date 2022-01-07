; ModuleID = '/home/carl/AnghaBench/wcdb/repair/extr_sqliterk.c_sqliterkParsePage.c'
source_filename = "/home/carl/AnghaBench/wcdb/repair/extr_sqliterk.c_sqliterkParsePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SQLITERK_MISUSE = common dso_local global i32 0, align 4
@sqliterk_status_unchecked = common dso_local global i64 0, align 8
@SQLITERK_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqliterkParsePage(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @SQLITERK_MISUSE, align 4
  store i32 %11, i32* %3, align 4
  br label %46

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @sqliterkPagerGetStatus(i32 %15, i32 %16)
  %18 = load i64, i64* @sqliterk_status_unchecked, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @SQLITERK_OK, align 4
  store i32 %21, i32* %3, align 4
  br label %46

22:                                               ; preds = %12
  %23 = load i32, i32* @SQLITERK_OK, align 4
  store i32 %23, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @sqliterkBtreeOpen(%struct.TYPE_5__* %24, i32 %27, i32 %28, i32** %7)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SQLITERK_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %38

34:                                               ; preds = %22
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @sqliterkParseBtree(%struct.TYPE_5__* %35, i32* %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %33
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @sqliterkBtreeClose(i32* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %20, %10
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @sqliterkPagerGetStatus(i32, i32) #1

declare dso_local i32 @sqliterkBtreeOpen(%struct.TYPE_5__*, i32, i32, i32**) #1

declare dso_local i32 @sqliterkParseBtree(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @sqliterkBtreeClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
