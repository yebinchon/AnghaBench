; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_smbiostbl.c_smbios_build.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_smbiostbl.c_smbios_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i32 (%struct.smbios_structure*, i8**, i8*, i8**, i64*, i64*)*, %struct.smbios_structure* }
%struct.smbios_structure = type { i32 }
%struct.smbios_entry_point = type { i32 }

@guest_lomem = common dso_local global i32 0, align 4
@guest_himem = common dso_local global i32 0, align 4
@SMBIOS_BASE = common dso_local global i64 0, align 8
@SMBIOS_MAX_LENGTH = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"smbios table requires mapped mem\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@smbios_template = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbios_build() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.smbios_entry_point*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.smbios_structure*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32 (%struct.smbios_structure*, i8**, i8*, i8**, i64*, i64*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = call i32 (...) @xh_vm_get_lowmem_size()
  store i32 %15, i32* @guest_lomem, align 4
  %16 = call i32 (...) @xh_vm_get_highmem_size()
  store i32 %16, i32* @guest_himem, align 4
  %17 = load i64, i64* @SMBIOS_BASE, align 8
  %18 = load i32, i32* @SMBIOS_MAX_LENGTH, align 4
  %19 = call i8* @paddr_guest2host(i64 %17, i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %0
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %1, align 4
  br label %104

26:                                               ; preds = %0
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = bitcast i8* %28 to %struct.smbios_entry_point*
  store %struct.smbios_entry_point* %29, %struct.smbios_entry_point** %2, align 8
  %30 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %2, align 8
  %31 = load i64, i64* @SMBIOS_BASE, align 8
  %32 = add i64 %31, 4
  %33 = call i32 @smbios_ep_initializer(%struct.smbios_entry_point* %30, i64 %32)
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 4
  store i8* %35, i8** %5, align 8
  %36 = load i8*, i8** %5, align 8
  store i8* %36, i8** %7, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %81, %26
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smbios_template, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load %struct.smbios_structure*, %struct.smbios_structure** %42, align 8
  %44 = icmp ne %struct.smbios_structure* %43, null
  br i1 %44, label %45, label %84

45:                                               ; preds = %37
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smbios_template, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load %struct.smbios_structure*, %struct.smbios_structure** %50, align 8
  store %struct.smbios_structure* %51, %struct.smbios_structure** %10, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smbios_template, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  store i8** %57, i8*** %11, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smbios_template, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32 (%struct.smbios_structure*, i8**, i8*, i8**, i64*, i64*)*, i32 (%struct.smbios_structure*, i8**, i8*, i8**, i64*, i64*)** %62, align 8
  store i32 (%struct.smbios_structure*, i8**, i8*, i8**, i64*, i64*)* %63, i32 (%struct.smbios_structure*, i8**, i8*, i8**, i64*, i64*)** %12, align 8
  %64 = load i32 (%struct.smbios_structure*, i8**, i8*, i8**, i64*, i64*)*, i32 (%struct.smbios_structure*, i8**, i8*, i8**, i64*, i64*)** %12, align 8
  %65 = load %struct.smbios_structure*, %struct.smbios_structure** %10, align 8
  %66 = load i8**, i8*** %11, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 %64(%struct.smbios_structure* %65, i8** %66, i8* %67, i8** %13, i64* %3, i64* %14)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %45
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %1, align 4
  br label %104

73:                                               ; preds = %45
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* %4, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i64, i64* %14, align 8
  store i64 %78, i64* %4, align 8
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i8*, i8** %13, align 8
  store i8* %80, i8** %5, align 8
  br label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %37

84:                                               ; preds = %37
  %85 = load i8*, i8** %5, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = load i32, i32* @SMBIOS_MAX_LENGTH, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %2, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = load i64, i64* %3, align 8
  %102 = load i64, i64* %4, align 8
  %103 = call i32 @smbios_ep_finalizer(%struct.smbios_entry_point* %95, i64 %100, i64 %101, i64 %102)
  store i32 0, i32* %1, align 4
  br label %104

104:                                              ; preds = %84, %71, %22
  %105 = load i32, i32* %1, align 4
  ret i32 %105
}

declare dso_local i32 @xh_vm_get_lowmem_size(...) #1

declare dso_local i32 @xh_vm_get_highmem_size(...) #1

declare dso_local i8* @paddr_guest2host(i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @smbios_ep_initializer(%struct.smbios_entry_point*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @smbios_ep_finalizer(%struct.smbios_entry_point*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
