; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_patch_offset_get_files.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_patch_offset_get_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch_offset_list = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.patch_offset = type { i32, i8*, i32 }

@patch_offset_get_files.query = internal constant [57 x i8] c"SELECT * FROM File WHERE Sequence <= ? ORDER BY Sequence\00", align 16
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@msidbFileAttributesPatchAdded = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, %struct.patch_offset_list*)* @patch_offset_get_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @patch_offset_get_files(i32* %0, i64 %1, %struct.patch_offset_list* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.patch_offset_list*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.patch_offset*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.patch_offset_list* %2, %struct.patch_offset_list** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @MSI_DatabaseOpenViewW(i32* %12, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @patch_offset_get_files.query, i64 0, i64 0), %struct.TYPE_13__** %7)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %92

18:                                               ; preds = %3
  %19 = call %struct.TYPE_12__* @MSI_CreateRecord(i32 1)
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %8, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @MSI_RecordSetInteger(%struct.TYPE_12__* %20, i32 1, i64 %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = call i64 @MSI_ViewExecute(%struct.TYPE_13__* %23, %struct.TYPE_12__* %24)
  store i64 %25, i64* %9, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = call i32 @msiobj_release(i32* %27)
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @ERROR_SUCCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %92

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %84, %33
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = call i64 @MSI_ViewFetch(%struct.TYPE_13__* %35, %struct.TYPE_12__** %8)
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %88

39:                                               ; preds = %34
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = call i8* @MSI_RecordGetInteger(%struct.TYPE_12__* %40, i32 7)
  %42 = ptrtoint i8* %41 to i64
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @msidbFileAttributesPatchAdded, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %39
  %48 = call %struct.patch_offset* @msi_alloc(i32 24)
  store %struct.patch_offset* %48, %struct.patch_offset** %11, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = call i32 @msi_dup_record_field(%struct.TYPE_12__* %49, i32 1)
  %51 = load %struct.patch_offset*, %struct.patch_offset** %11, align 8
  %52 = getelementptr inbounds %struct.patch_offset, %struct.patch_offset* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = call i8* @MSI_RecordGetInteger(%struct.TYPE_12__* %53, i32 8)
  %55 = load %struct.patch_offset*, %struct.patch_offset** %11, align 8
  %56 = getelementptr inbounds %struct.patch_offset, %struct.patch_offset* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.patch_offset_list*, %struct.patch_offset_list** %6, align 8
  %58 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.patch_offset*, %struct.patch_offset** %11, align 8
  %61 = getelementptr inbounds %struct.patch_offset, %struct.patch_offset* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @min(i32 %59, i8* %62)
  %64 = load %struct.patch_offset_list*, %struct.patch_offset_list** %6, align 8
  %65 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.patch_offset_list*, %struct.patch_offset_list** %6, align 8
  %67 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.patch_offset*, %struct.patch_offset** %11, align 8
  %70 = getelementptr inbounds %struct.patch_offset, %struct.patch_offset* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @max(i32 %68, i8* %71)
  %73 = load %struct.patch_offset_list*, %struct.patch_offset_list** %6, align 8
  %74 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.patch_offset_list*, %struct.patch_offset_list** %6, align 8
  %76 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %75, i32 0, i32 1
  %77 = load %struct.patch_offset*, %struct.patch_offset** %11, align 8
  %78 = getelementptr inbounds %struct.patch_offset, %struct.patch_offset* %77, i32 0, i32 0
  %79 = call i32 @list_add_tail(i32* %76, i32* %78)
  %80 = load %struct.patch_offset_list*, %struct.patch_offset_list** %6, align 8
  %81 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %47, %39
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = call i32 @msiobj_release(i32* %86)
  br label %34

88:                                               ; preds = %34
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = call i32 @msiobj_release(i32* %90)
  br label %92

92:                                               ; preds = %88, %32, %17
  ret void
}

declare dso_local i64 @MSI_DatabaseOpenViewW(i32*, i8*, %struct.TYPE_13__**) #1

declare dso_local %struct.TYPE_12__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @MSI_RecordSetInteger(%struct.TYPE_12__*, i32, i64) #1

declare dso_local i64 @MSI_ViewExecute(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i64 @MSI_ViewFetch(%struct.TYPE_13__*, %struct.TYPE_12__**) #1

declare dso_local i8* @MSI_RecordGetInteger(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.patch_offset* @msi_alloc(i32) #1

declare dso_local i32 @msi_dup_record_field(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @min(i32, i8*) #1

declare dso_local i32 @max(i32, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
