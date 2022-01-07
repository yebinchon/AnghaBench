; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_msi_table_find_row.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_msi_table_find_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32*, i64*, i64*)* @msi_table_find_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msi_table_find_row(%struct.TYPE_7__* %0, i32* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %13, i64* %11, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i64* @msi_record_to_row(%struct.TYPE_7__* %14, i32* %15)
  store i64* %16, i64** %12, align 8
  %17 = load i64*, i64** %12, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %11, align 8
  store i64 %20, i64* %5, align 8
  br label %50

21:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %43, %21
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %23, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %22
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64*, i64** %12, align 8
  %34 = load i64*, i64** %9, align 8
  %35 = call i64 @msi_row_matches(%struct.TYPE_7__* %31, i64 %32, i64* %33, i64* %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i64, i64* %10, align 8
  %41 = load i64*, i64** %8, align 8
  store i64 %40, i64* %41, align 8
  br label %46

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %10, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %10, align 8
  br label %22

46:                                               ; preds = %39, %22
  %47 = load i64*, i64** %12, align 8
  %48 = call i32 @msi_free(i64* %47)
  %49 = load i64, i64* %11, align 8
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %46, %19
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local i64* @msi_record_to_row(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @msi_row_matches(%struct.TYPE_7__*, i64, i64*, i64*) #1

declare dso_local i32 @msi_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
