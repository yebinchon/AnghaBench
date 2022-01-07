; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_msiquery.c_msi_primary_key_iterator.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_msiquery.c_msi_primary_key_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_primary_key_record_info = type { i32, i64 }

@MSITYPE_KEY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.msi_primary_key_record_info*)* @msi_primary_key_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_primary_key_iterator(i32* %0, %struct.msi_primary_key_record_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.msi_primary_key_record_info*, align 8
  %5 = alloca %struct.msi_primary_key_record_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.msi_primary_key_record_info* %1, %struct.msi_primary_key_record_info** %4, align 8
  %9 = load %struct.msi_primary_key_record_info*, %struct.msi_primary_key_record_info** %4, align 8
  store %struct.msi_primary_key_record_info* %9, %struct.msi_primary_key_record_info** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @MSI_RecordGetInteger(i32* %10, i32 4)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @MSITYPE_KEY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %2
  %17 = load %struct.msi_primary_key_record_info*, %struct.msi_primary_key_record_info** %5, align 8
  %18 = getelementptr inbounds %struct.msi_primary_key_record_info, %struct.msi_primary_key_record_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.msi_primary_key_record_info*, %struct.msi_primary_key_record_info** %5, align 8
  %22 = getelementptr inbounds %struct.msi_primary_key_record_info, %struct.msi_primary_key_record_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %16
  %26 = load %struct.msi_primary_key_record_info*, %struct.msi_primary_key_record_info** %5, align 8
  %27 = getelementptr inbounds %struct.msi_primary_key_record_info, %struct.msi_primary_key_record_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @MSI_RecordGetString(i32* %31, i32 1)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.msi_primary_key_record_info*, %struct.msi_primary_key_record_info** %5, align 8
  %34 = getelementptr inbounds %struct.msi_primary_key_record_info, %struct.msi_primary_key_record_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @MSI_RecordSetStringW(i64 %35, i32 0, i32 %36)
  br label %38

38:                                               ; preds = %30, %25
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @MSI_RecordGetString(i32* %39, i32 3)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.msi_primary_key_record_info*, %struct.msi_primary_key_record_info** %5, align 8
  %42 = getelementptr inbounds %struct.msi_primary_key_record_info, %struct.msi_primary_key_record_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.msi_primary_key_record_info*, %struct.msi_primary_key_record_info** %5, align 8
  %45 = getelementptr inbounds %struct.msi_primary_key_record_info, %struct.msi_primary_key_record_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @MSI_RecordSetStringW(i64 %43, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %38, %16
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i32, i32* @ERROR_SUCCESS, align 4
  ret i32 %51
}

declare dso_local i32 @MSI_RecordGetInteger(i32*, i32) #1

declare dso_local i32 @MSI_RecordGetString(i32*, i32) #1

declare dso_local i32 @MSI_RecordSetStringW(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
