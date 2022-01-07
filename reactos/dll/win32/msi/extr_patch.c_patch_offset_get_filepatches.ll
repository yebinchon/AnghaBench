; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_patch_offset_get_filepatches.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_patch_offset_get_filepatches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch_offset_list = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.patch_offset = type { i32, i32, i32 }

@patch_offset_get_filepatches.query = internal constant [58 x i8] c"SELECT * FROM Patch WHERE Sequence <= ? ORDER BY Sequence\00", align 16
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, %struct.patch_offset_list*)* @patch_offset_get_filepatches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @patch_offset_get_filepatches(i32* %0, i64 %1, %struct.patch_offset_list* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.patch_offset_list*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.patch_offset*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.patch_offset_list* %2, %struct.patch_offset_list** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @MSI_DatabaseOpenViewW(i32* %11, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @patch_offset_get_filepatches.query, i64 0, i64 0), %struct.TYPE_13__** %7)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %82

17:                                               ; preds = %3
  %18 = call %struct.TYPE_12__* @MSI_CreateRecord(i32 1)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %8, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @MSI_RecordSetInteger(%struct.TYPE_12__* %19, i32 1, i64 %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %24 = call i64 @MSI_ViewExecute(%struct.TYPE_13__* %22, %struct.TYPE_12__* %23)
  store i64 %24, i64* %9, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = call i32 @msiobj_release(i32* %26)
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %82

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %38, %32
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %35 = call i64 @MSI_ViewFetch(%struct.TYPE_13__* %34, %struct.TYPE_12__** %8)
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %78

38:                                               ; preds = %33
  %39 = call %struct.patch_offset* @msi_alloc(i32 12)
  store %struct.patch_offset* %39, %struct.patch_offset** %10, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = call i32 @msi_dup_record_field(%struct.TYPE_12__* %40, i32 1)
  %42 = load %struct.patch_offset*, %struct.patch_offset** %10, align 8
  %43 = getelementptr inbounds %struct.patch_offset, %struct.patch_offset* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = call i32 @MSI_RecordGetInteger(%struct.TYPE_12__* %44, i32 2)
  %46 = load %struct.patch_offset*, %struct.patch_offset** %10, align 8
  %47 = getelementptr inbounds %struct.patch_offset, %struct.patch_offset* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.patch_offset_list*, %struct.patch_offset_list** %6, align 8
  %49 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.patch_offset*, %struct.patch_offset** %10, align 8
  %52 = getelementptr inbounds %struct.patch_offset, %struct.patch_offset* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @min(i32 %50, i32 %53)
  %55 = load %struct.patch_offset_list*, %struct.patch_offset_list** %6, align 8
  %56 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.patch_offset_list*, %struct.patch_offset_list** %6, align 8
  %58 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.patch_offset*, %struct.patch_offset** %10, align 8
  %61 = getelementptr inbounds %struct.patch_offset, %struct.patch_offset* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @max(i32 %59, i32 %62)
  %64 = load %struct.patch_offset_list*, %struct.patch_offset_list** %6, align 8
  %65 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.patch_offset_list*, %struct.patch_offset_list** %6, align 8
  %67 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %66, i32 0, i32 1
  %68 = load %struct.patch_offset*, %struct.patch_offset** %10, align 8
  %69 = getelementptr inbounds %struct.patch_offset, %struct.patch_offset* %68, i32 0, i32 0
  %70 = call i32 @list_add_tail(i32* %67, i32* %69)
  %71 = load %struct.patch_offset_list*, %struct.patch_offset_list** %6, align 8
  %72 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = call i32 @msiobj_release(i32* %76)
  br label %33

78:                                               ; preds = %33
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = call i32 @msiobj_release(i32* %80)
  br label %82

82:                                               ; preds = %78, %31, %16
  ret void
}

declare dso_local i64 @MSI_DatabaseOpenViewW(i32*, i8*, %struct.TYPE_13__**) #1

declare dso_local %struct.TYPE_12__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @MSI_RecordSetInteger(%struct.TYPE_12__*, i32, i64) #1

declare dso_local i64 @MSI_ViewExecute(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i64 @MSI_ViewFetch(%struct.TYPE_13__*, %struct.TYPE_12__**) #1

declare dso_local %struct.patch_offset* @msi_alloc(i32) #1

declare dso_local i32 @msi_dup_record_field(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @MSI_RecordGetInteger(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
