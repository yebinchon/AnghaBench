; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_storages.c_STORAGES_find_matching_rows.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_storages.c_STORAGES_find_matching_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"(%d, %d): %d\0A\00", align 1
@NUM_STORAGES_COLS = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, i64, i64, i64*, i32*)* @STORAGES_find_matching_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @STORAGES_find_matching_rows(%struct.tagMSIVIEW* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.tagMSIVIEW*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i64, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %7, align 8
  %15 = bitcast %struct.tagMSIVIEW* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %12, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @PtrToUlong(i32 %17)
  store i64 %18, i64* %13, align 8
  %19 = load i64*, i64** %10, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %21, i64 %22)
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %5
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @NUM_STORAGES_COLS, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %5
  %31 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %31, i64* %6, align 8
  br label %70

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %53, %32
  %34 = load i64, i64* %13, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %41, align 8
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %42, i64 %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i64, i64* %13, align 8
  %52 = load i64*, i64** %10, align 8
  store i64 %51, i64* %52, align 8
  br label %56

53:                                               ; preds = %39
  %54 = load i64, i64* %13, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %13, align 8
  br label %33

56:                                               ; preds = %50, %33
  %57 = load i64, i64* %13, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %13, align 8
  %59 = call i32 @UlongToPtr(i64 %58)
  %60 = load i32*, i32** %11, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i64, i64* %13, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  store i64 %67, i64* %6, align 8
  br label %70

68:                                               ; preds = %56
  %69 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %68, %66, %30
  %71 = load i64, i64* %6, align 8
  ret i64 %71
}

declare dso_local i64 @PtrToUlong(i32) #1

declare dso_local i32 @TRACE(i8*, i64, i64, i64) #1

declare dso_local i32 @UlongToPtr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
