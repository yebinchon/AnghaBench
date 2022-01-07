; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_database.c_msi_get_query_types.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_database.c_msi_get_query_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@MSICOLINFO_TYPES = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32**, i64*)* @msi_get_query_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msi_get_query_types(i32* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @MSICOLINFO_TYPES, align 4
  %14 = call i64 @MSI_ViewGetColumnInfo(i32* %12, i32 %13, %struct.TYPE_5__** %11)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %4, align 8
  br label %58

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %22 = call i64 @MSI_RecordGetFieldCount(%struct.TYPE_5__* %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = mul i64 %23, 4
  %25 = call i32* @msi_alloc(i64 %24)
  %26 = load i32**, i32*** %6, align 8
  store i32* %25, i32** %26, align 8
  %27 = load i32**, i32*** %6, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %31, i64* %8, align 8
  br label %53

32:                                               ; preds = %20
  %33 = load i64, i64* %10, align 8
  %34 = load i64*, i64** %7, align 8
  store i64 %33, i64* %34, align 8
  store i64 1, i64* %9, align 8
  br label %35

35:                                               ; preds = %49, %32
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @MSI_RecordGetString(%struct.TYPE_5__* %40, i64 %41)
  %43 = call i32 @strdupW(i32 %42)
  %44 = load i32**, i32*** %6, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = sub nsw i64 %46, 1
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %43, i32* %48, align 4
  br label %49

49:                                               ; preds = %39
  %50 = load i64, i64* %9, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %35

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52, %30
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = call i32 @msiobj_release(i32* %55)
  %57 = load i64, i64* %8, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %53, %18
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

declare dso_local i64 @MSI_ViewGetColumnInfo(i32*, i32, %struct.TYPE_5__**) #1

declare dso_local i64 @MSI_RecordGetFieldCount(%struct.TYPE_5__*) #1

declare dso_local i32* @msi_alloc(i64) #1

declare dso_local i32 @strdupW(i32) #1

declare dso_local i32 @MSI_RecordGetString(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
