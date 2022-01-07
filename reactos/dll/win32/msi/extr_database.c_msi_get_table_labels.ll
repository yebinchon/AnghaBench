; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_database.c_msi_get_table_labels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_database.c_msi_get_table_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32**, i32*)* @msi_get_table_labels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msi_get_table_labels(i32* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %13, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @MSI_DatabaseGetPrimaryKeys(i32* %14, i32 %15, %struct.TYPE_5__** %13)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* %10, align 8
  store i64 %21, i64* %5, align 8
  br label %69

22:                                               ; preds = %4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %24 = call i64 @MSI_RecordGetFieldCount(%struct.TYPE_5__* %23)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = add nsw i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32* @msi_alloc(i32 %33)
  %35 = load i32**, i32*** %8, align 8
  store i32* %34, i32** %35, align 8
  %36 = load i32**, i32*** %8, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %22
  %40 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %40, i64* %10, align 8
  br label %64

41:                                               ; preds = %22
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @strdupW(i32 %42)
  %44 = load i32**, i32*** %8, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %43, i32* %46, align 4
  store i64 1, i64* %11, align 8
  br label %47

47:                                               ; preds = %60, %41
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @MSI_RecordGetString(%struct.TYPE_5__* %52, i64 %53)
  %55 = call i32 @strdupW(i32 %54)
  %56 = load i32**, i32*** %8, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %51
  %61 = load i64, i64* %11, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %11, align 8
  br label %47

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63, %39
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = call i32 @msiobj_release(i32* %66)
  %68 = load i64, i64* %10, align 8
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %64, %20
  %70 = load i64, i64* %5, align 8
  ret i64 %70
}

declare dso_local i64 @MSI_DatabaseGetPrimaryKeys(i32*, i32, %struct.TYPE_5__**) #1

declare dso_local i64 @MSI_RecordGetFieldCount(%struct.TYPE_5__*) #1

declare dso_local i32* @msi_alloc(i32) #1

declare dso_local i32 @strdupW(i32) #1

declare dso_local i32 @MSI_RecordGetString(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
