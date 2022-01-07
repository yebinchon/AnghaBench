; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_database.c_merge_verify_primary_keys.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_database.c_merge_verify_primary_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_DATATYPE_MISMATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32)* @merge_verify_primary_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @merge_verify_primary_keys(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @MSI_DatabaseGetPrimaryKeys(i32* %13, i32 %14, %struct.TYPE_5__** %8)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @ERROR_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %4, align 8
  br label %67

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @MSI_DatabaseGetPrimaryKeys(i32* %22, i32 %23, %struct.TYPE_5__** %9)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %59

29:                                               ; preds = %21
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = call i64 @MSI_RecordGetFieldCount(%struct.TYPE_5__* %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = call i64 @MSI_RecordGetFieldCount(%struct.TYPE_5__* %33)
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i64, i64* @ERROR_DATATYPE_MISMATCH, align 8
  store i64 %37, i64* %10, align 8
  br label %59

38:                                               ; preds = %29
  store i64 1, i64* %11, align 8
  br label %39

39:                                               ; preds = %55, %38
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @MSI_RecordGetString(%struct.TYPE_5__* %44, i64 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @MSI_RecordGetString(%struct.TYPE_5__* %47, i64 %48)
  %50 = call i64 @strcmpW(i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i64, i64* @ERROR_DATATYPE_MISMATCH, align 8
  store i64 %53, i64* %10, align 8
  br label %59

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %11, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %11, align 8
  br label %39

58:                                               ; preds = %39
  br label %59

59:                                               ; preds = %58, %52, %36, %28
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = call i32 @msiobj_release(i32* %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @msiobj_release(i32* %64)
  %66 = load i64, i64* %10, align 8
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %59, %19
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local i64 @MSI_DatabaseGetPrimaryKeys(i32*, i32, %struct.TYPE_5__**) #1

declare dso_local i64 @MSI_RecordGetFieldCount(%struct.TYPE_5__*) #1

declare dso_local i64 @strcmpW(i32, i32) #1

declare dso_local i32 @MSI_RecordGetString(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
