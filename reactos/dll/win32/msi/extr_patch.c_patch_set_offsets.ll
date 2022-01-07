; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_patch_set_offsets.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_patch_set_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.patch_offset_list = type { i64, i64, i64, i64 }

@patch_media_query = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MSI_INITIAL_MEDIA_TRANSFORM_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Failed to set offsets, expect breakage (%u)\0A\00", align 1
@MSIMODIFY_UPDATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Failed to update Media table entry, expect breakage (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, i32*)* @patch_set_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @patch_set_offsets(%struct.TYPE_19__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.patch_offset_list*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = load i32, i32* @patch_media_query, align 4
  %14 = call i64 @MSI_DatabaseOpenViewW(%struct.TYPE_19__* %12, i32 %13, %struct.TYPE_18__** %6)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %3, align 8
  br label %118

20:                                               ; preds = %2
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = call i64 @MSI_ViewExecute(%struct.TYPE_18__* %21, i32 0)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %113

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %102, %39, %27
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = call i64 @MSI_ViewFetch(%struct.TYPE_18__* %29, %struct.TYPE_17__** %7)
  %31 = load i64, i64* @ERROR_SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %112

33:                                               ; preds = %28
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %35 = call i64 @MSI_RecordGetInteger(%struct.TYPE_17__* %34, i32 2)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @MSI_INITIAL_MEDIA_TRANSFORM_OFFSET, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = call i32 @msiobj_release(i32* %41)
  br label %28

43:                                               ; preds = %33
  %44 = call %struct.patch_offset_list* (...) @patch_offset_list_create()
  store %struct.patch_offset_list* %44, %struct.patch_offset_list** %11, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.patch_offset_list*, %struct.patch_offset_list** %11, align 8
  %48 = call i32 @patch_offset_get_files(%struct.TYPE_19__* %45, i64 %46, %struct.patch_offset_list* %47)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.patch_offset_list*, %struct.patch_offset_list** %11, align 8
  %52 = call i32 @patch_offset_get_filepatches(%struct.TYPE_19__* %49, i64 %50, %struct.patch_offset_list* %51)
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.patch_offset_list*, %struct.patch_offset_list** %11, align 8
  %57 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.patch_offset_list*, %struct.patch_offset_list** %11, align 8
  %62 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  store i64 %64, i64* %10, align 8
  %65 = load %struct.patch_offset_list*, %struct.patch_offset_list** %11, align 8
  %66 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.patch_offset_list*, %struct.patch_offset_list** %11, align 8
  %72 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  %73 = load %struct.patch_offset_list*, %struct.patch_offset_list** %11, align 8
  %74 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %43
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %79 = load %struct.patch_offset_list*, %struct.patch_offset_list** %11, align 8
  %80 = call i64 @patch_offset_modify_db(%struct.TYPE_19__* %78, %struct.patch_offset_list* %79)
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @ERROR_SUCCESS, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %85)
  br label %87

87:                                               ; preds = %84, %77
  br label %88

88:                                               ; preds = %87, %43
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @MSI_RecordSetInteger(%struct.TYPE_17__* %89, i32 2, i64 %90)
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %93 = load i32, i32* @MSIMODIFY_UPDATE, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %95 = call i64 @MSI_ViewModify(%struct.TYPE_18__* %92, i32 %93, %struct.TYPE_17__* %94)
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* @ERROR_SUCCESS, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @ERR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %100)
  br label %102

102:                                              ; preds = %99, %88
  %103 = load i64, i64* %10, align 8
  %104 = add nsw i64 %103, 1
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.patch_offset_list*, %struct.patch_offset_list** %11, align 8
  %108 = call i32 @patch_offset_list_free(%struct.patch_offset_list* %107)
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = call i32 @msiobj_release(i32* %110)
  br label %28

112:                                              ; preds = %28
  br label %113

113:                                              ; preds = %112, %26
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = call i32 @msiobj_release(i32* %115)
  %117 = load i64, i64* %8, align 8
  store i64 %117, i64* %3, align 8
  br label %118

118:                                              ; preds = %113, %18
  %119 = load i64, i64* %3, align 8
  ret i64 %119
}

declare dso_local i64 @MSI_DatabaseOpenViewW(%struct.TYPE_19__*, i32, %struct.TYPE_18__**) #1

declare dso_local i64 @MSI_ViewExecute(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @MSI_ViewFetch(%struct.TYPE_18__*, %struct.TYPE_17__**) #1

declare dso_local i64 @MSI_RecordGetInteger(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local %struct.patch_offset_list* @patch_offset_list_create(...) #1

declare dso_local i32 @patch_offset_get_files(%struct.TYPE_19__*, i64, %struct.patch_offset_list*) #1

declare dso_local i32 @patch_offset_get_filepatches(%struct.TYPE_19__*, i64, %struct.patch_offset_list*) #1

declare dso_local i64 @patch_offset_modify_db(%struct.TYPE_19__*, %struct.patch_offset_list*) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @MSI_RecordSetInteger(%struct.TYPE_17__*, i32, i64) #1

declare dso_local i64 @MSI_ViewModify(%struct.TYPE_18__*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @patch_offset_list_free(%struct.patch_offset_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
