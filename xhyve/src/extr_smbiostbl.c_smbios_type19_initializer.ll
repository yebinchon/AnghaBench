; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_smbiostbl.c_smbios_type19_initializer.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_smbiostbl.c_smbios_type19_initializer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbios_structure = type { i32 }
%struct.smbios_table_type19 = type { i32, i64, i8* }

@type16_handle = common dso_local global i8* null, align 8
@guest_lomem = common dso_local global i64 0, align 8
@guest_himem = common dso_local global i64 0, align 8
@GB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbios_structure*, i8**, i8*, i8**, i32*, i32*)* @smbios_type19_initializer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbios_type19_initializer(%struct.smbios_structure* %0, i8** %1, i8* %2, i8** %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.smbios_structure*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.smbios_table_type19*, align 8
  store %struct.smbios_structure* %0, %struct.smbios_structure** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.smbios_structure*, %struct.smbios_structure** %7, align 8
  %15 = load i8**, i8*** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i8**, i8*** %10, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = call i32 @smbios_generic_initializer(%struct.smbios_structure* %14, i8** %15, i8* %16, i8** %17, i32* %18, i32* %19)
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.smbios_table_type19*
  store %struct.smbios_table_type19* %22, %struct.smbios_table_type19** %13, align 8
  %23 = load i8*, i8** @type16_handle, align 8
  %24 = load %struct.smbios_table_type19*, %struct.smbios_table_type19** %13, align 8
  %25 = getelementptr inbounds %struct.smbios_table_type19, %struct.smbios_table_type19* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.smbios_table_type19*, %struct.smbios_table_type19** %13, align 8
  %27 = getelementptr inbounds %struct.smbios_table_type19, %struct.smbios_table_type19* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load i64, i64* @guest_lomem, align 8
  %29 = load %struct.smbios_table_type19*, %struct.smbios_table_type19** %13, align 8
  %30 = getelementptr inbounds %struct.smbios_table_type19, %struct.smbios_table_type19* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* @guest_himem, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %6
  %34 = load i8**, i8*** %10, align 8
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %9, align 8
  %36 = load %struct.smbios_structure*, %struct.smbios_structure** %7, align 8
  %37 = load i8**, i8*** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i8**, i8*** %10, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @smbios_generic_initializer(%struct.smbios_structure* %36, i8** %37, i8* %38, i8** %39, i32* %40, i32* %41)
  %43 = load i8*, i8** %9, align 8
  %44 = bitcast i8* %43 to %struct.smbios_table_type19*
  store %struct.smbios_table_type19* %44, %struct.smbios_table_type19** %13, align 8
  %45 = load i8*, i8** @type16_handle, align 8
  %46 = load %struct.smbios_table_type19*, %struct.smbios_table_type19** %13, align 8
  %47 = getelementptr inbounds %struct.smbios_table_type19, %struct.smbios_table_type19* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @GB, align 4
  %49 = mul nsw i32 4, %48
  %50 = load %struct.smbios_table_type19*, %struct.smbios_table_type19** %13, align 8
  %51 = getelementptr inbounds %struct.smbios_table_type19, %struct.smbios_table_type19* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i64, i64* @guest_himem, align 8
  %53 = load %struct.smbios_table_type19*, %struct.smbios_table_type19** %13, align 8
  %54 = getelementptr inbounds %struct.smbios_table_type19, %struct.smbios_table_type19* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %33, %6
  ret i32 0
}

declare dso_local i32 @smbios_generic_initializer(%struct.smbios_structure*, i8**, i8*, i8**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
