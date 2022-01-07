; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_msi_refresh_record.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_msi_refresh_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, %struct.TYPE_7__*, i64)* @msi_refresh_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msi_refresh_record(%struct.tagMSIVIEW* %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tagMSIVIEW*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = sub nsw i64 %13, 1
  %15 = call i64 @TABLE_get_row(%struct.tagMSIVIEW* %12, i64 %14, %struct.TYPE_7__** %8)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @ERROR_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* %9, align 8
  store i64 %20, i64* %4, align 8
  br label %47

21:                                               ; preds = %3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = call i32 @MSI_CloseRecord(i32* %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = call i64 @MSI_RecordGetFieldCount(%struct.TYPE_7__* %25)
  store i64 %26, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %39, %21
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = add nsw i64 %33, 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = load i64, i64* %10, align 8
  %37 = add nsw i64 %36, 1
  %38 = call i32 @MSI_RecordCopyField(%struct.TYPE_7__* %32, i64 %34, %struct.TYPE_7__* %35, i64 %37)
  br label %39

39:                                               ; preds = %31
  %40 = load i64, i64* %10, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %10, align 8
  br label %27

42:                                               ; preds = %27
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = call i32 @msiobj_release(i32* %44)
  %46 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %42, %19
  %48 = load i64, i64* %4, align 8
  ret i64 %48
}

declare dso_local i64 @TABLE_get_row(%struct.tagMSIVIEW*, i64, %struct.TYPE_7__**) #1

declare dso_local i32 @MSI_CloseRecord(i32*) #1

declare dso_local i64 @MSI_RecordGetFieldCount(%struct.TYPE_7__*) #1

declare dso_local i32 @MSI_RecordCopyField(%struct.TYPE_7__*, i64, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
