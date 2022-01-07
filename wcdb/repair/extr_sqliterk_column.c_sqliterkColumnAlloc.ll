; ModuleID = '/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_column.c_sqliterkColumnAlloc.c'
source_filename = "/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_column.c_sqliterkColumnAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SQLITERK_MISUSE = common dso_local global i32 0, align 4
@SQLITERK_OK = common dso_local global i32 0, align 4
@SQLITERK_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqliterkColumnAlloc(%struct.TYPE_5__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %3, align 8
  %6 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %7 = icmp ne %struct.TYPE_5__** %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @SQLITERK_MISUSE, align 4
  store i32 %9, i32* %2, align 4
  br label %46

10:                                               ; preds = %1
  %11 = load i32, i32* @SQLITERK_OK, align 4
  store i32 %11, i32* %4, align 4
  %12 = call %struct.TYPE_5__* @sqliterkOSMalloc(i32 8)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %5, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @SQLITERK_NOMEM, align 4
  store i32 %16, i32* %4, align 4
  br label %37

17:                                               ; preds = %10
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = call i32 @sqliterkValuesAlloc(i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SQLITERK_OK, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %37

25:                                               ; preds = %17
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @sqliterkValuesAlloc(i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SQLITERK_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %37

33:                                               ; preds = %25
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %35, align 8
  %36 = load i32, i32* @SQLITERK_OK, align 4
  store i32 %36, i32* %2, align 4
  br label %46

37:                                               ; preds = %32, %24, %15
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = call i32 @sqliterkColumnFree(%struct.TYPE_5__* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %44, align 8
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %33, %8
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_5__* @sqliterkOSMalloc(i32) #1

declare dso_local i32 @sqliterkValuesAlloc(i32*) #1

declare dso_local i32 @sqliterkColumnFree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
