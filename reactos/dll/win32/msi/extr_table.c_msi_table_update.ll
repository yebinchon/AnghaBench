; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_msi_table_update.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_msi_table_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"can't find row to modify\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, i32*, i64)* @msi_table_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msi_table_update(%struct.tagMSIVIEW* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tagMSIVIEW*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %12 = bitcast %struct.tagMSIVIEW* %11 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %18, i64* %4, align 8
  br label %46

19:                                               ; preds = %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @msi_table_find_row(%struct.TYPE_3__* %20, i32* %21, i64* %10, i32* null)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %28, i64* %4, align 8
  br label %46

29:                                               ; preds = %19
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = add nsw i64 %31, 1
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %35, i64* %4, align 8
  br label %46

36:                                               ; preds = %29
  %37 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 1, %42
  %44 = sub nsw i32 %43, 1
  %45 = call i64 @TABLE_set_row(%struct.tagMSIVIEW* %37, i64 %38, i32* %39, i32 %44)
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %36, %34, %26, %17
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local i64 @msi_table_find_row(%struct.TYPE_3__*, i32*, i64*, i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @TABLE_set_row(%struct.tagMSIVIEW*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
