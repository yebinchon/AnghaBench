; ModuleID = '/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_pager.c_sqliterkPageAcquireType.c'
source_filename = "/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_pager.c_sqliterkPageAcquireType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@SQLITERK_OK = common dso_local global i32 0, align 4
@SQLITERK_MISUSE = common dso_local global i32 0, align 4
@sqliterk_page_type_unknown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqliterkPageAcquireType(%struct.TYPE_4__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @sqliterkPagerIsPagenoValid(%struct.TYPE_4__* %15, i32 %16)
  %18 = load i32, i32* @SQLITERK_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20, %14, %3
  %24 = load i32, i32* @SQLITERK_MISUSE, align 4
  store i32 %24, i32* %4, align 4
  br label %60

25:                                               ; preds = %20
  %26 = load i32, i32* @SQLITERK_OK, align 4
  store i32 %26, i32* %8, align 4
  store i64 1, i64* %10, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @sqliterkPagenoHeaderOffset(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %31, %38
  %40 = call i32 @sqliterkOSRead(i32 %29, i64 %39, i8* %9, i64* %10)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @SQLITERK_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %25
  br label %56

45:                                               ; preds = %25
  %46 = call i32 @sqliterkParseInt(i8* %9, i32 0, i32 1, i32* %11)
  %47 = load i32, i32* %11, align 4
  switch i32 %47, label %51 [
    i32 131, label %48
    i32 130, label %48
    i32 129, label %48
    i32 128, label %48
  ]

48:                                               ; preds = %45, %45, %45, %45
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @sqliterk_page_type_unknown, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* @SQLITERK_OK, align 4
  store i32 %55, i32* %4, align 4
  br label %60

56:                                               ; preds = %44
  %57 = load i32, i32* @sqliterk_page_type_unknown, align 4
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %54, %23
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @sqliterkPagerIsPagenoValid(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @sqliterkOSRead(i32, i64, i8*, i64*) #1

declare dso_local i64 @sqliterkPagenoHeaderOffset(i32) #1

declare dso_local i32 @sqliterkParseInt(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
