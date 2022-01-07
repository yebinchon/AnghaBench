; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_distinct.c_DISTINCT_find_matching_rows.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_distinct.c_DISTINCT_find_matching_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_5__ = type { i64, i64*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.TYPE_6__*, i64, i64, i64*, i32*)* }

@.str = private unnamed_addr constant [16 x i8] c"%p, %d, %u, %p\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, i64, i64, i64*, i32*)* @DISTINCT_find_matching_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DISTINCT_find_matching_rows(%struct.tagMSIVIEW* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.tagMSIVIEW*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %7, align 8
  %15 = bitcast %struct.tagMSIVIEW* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %12, align 8
  %16 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.tagMSIVIEW* %16, i64 %17, i64 %18, i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %5
  %27 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %27, i64* %6, align 8
  br label %62

28:                                               ; preds = %5
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64 (%struct.TYPE_6__*, i64, i64, i64*, i32*)*, i64 (%struct.TYPE_6__*, i64, i64, i64*, i32*)** %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64*, i64** %10, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i64 %35(%struct.TYPE_6__* %38, i64 %39, i64 %40, i64* %41, i32* %42)
  store i64 %43, i64* %13, align 8
  %44 = load i64*, i64** %10, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ugt i64 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %28
  %51 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  store i64 %51, i64* %6, align 8
  br label %62

52:                                               ; preds = %28
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i64*, i64** %10, align 8
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %10, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i64, i64* %13, align 8
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %52, %50, %26
  %63 = load i64, i64* %6, align 8
  ret i64 %63
}

declare dso_local i32 @TRACE(i8*, %struct.tagMSIVIEW*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
