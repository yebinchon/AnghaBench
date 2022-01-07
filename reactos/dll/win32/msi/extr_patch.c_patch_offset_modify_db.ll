; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_patch_offset_modify_db.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_patch_offset_modify_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch_offset_list = type { i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@patch_offset_modify_db.file_query = internal constant [83 x i8] c"SELECT * FROM `File` WHERE `Sequence` >= ? AND `Sequence` <= ? ORDER BY `Sequence`\00", align 16
@patch_offset_modify_db.patch_query = internal constant [83 x i8] c"SELECT *FROM `Patch` WHERE `Sequence` >= ? AND `Sequence` <= ? ORDER BY `Sequence`\00", align 16
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.patch_offset_list*)* @patch_offset_modify_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @patch_offset_modify_db(i32* %0, %struct.patch_offset_list* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.patch_offset_list*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.patch_offset_list* %1, %struct.patch_offset_list** %5, align 8
  %12 = load %struct.patch_offset_list*, %struct.patch_offset_list** %5, align 8
  %13 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.patch_offset_list*, %struct.patch_offset_list** %5, align 8
  %16 = getelementptr inbounds %struct.patch_offset_list, %struct.patch_offset_list* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @MSI_DatabaseOpenViewW(i32* %18, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @patch_offset_modify_db.file_query, i64 0, i64 0), %struct.TYPE_15__** %7)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %24, i64* %3, align 8
  br label %118

25:                                               ; preds = %2
  %26 = call %struct.TYPE_14__* @MSI_CreateRecord(i32 2)
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %6, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @MSI_RecordSetInteger(%struct.TYPE_14__* %27, i32 1, i64 %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @MSI_RecordSetInteger(%struct.TYPE_14__* %30, i32 2, i64 %31)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = call i64 @MSI_ViewExecute(%struct.TYPE_15__* %33, %struct.TYPE_14__* %34)
  store i64 %35, i64* %8, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = call i32 @msiobj_release(i32* %37)
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %25
  br label %113

43:                                               ; preds = %25
  br label %44

44:                                               ; preds = %62, %43
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = call i64 @MSI_ViewFetch(%struct.TYPE_15__* %45, %struct.TYPE_14__** %6)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* @ERROR_SUCCESS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.patch_offset_list*, %struct.patch_offset_list** %5, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = call i64 @patch_update_file_sequence(i32* %50, %struct.patch_offset_list* %51, %struct.TYPE_15__* %52, %struct.TYPE_14__* %53)
  store i64 %54, i64* %8, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = call i32 @msiobj_release(i32* %56)
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @ERROR_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %113

62:                                               ; preds = %49
  br label %44

63:                                               ; preds = %44
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = call i32 @msiobj_release(i32* %65)
  %67 = load i32*, i32** %4, align 8
  %68 = call i64 @MSI_DatabaseOpenViewW(i32* %67, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @patch_offset_modify_db.patch_query, i64 0, i64 0), %struct.TYPE_15__** %7)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @ERROR_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %73, i64* %3, align 8
  br label %118

74:                                               ; preds = %63
  %75 = call %struct.TYPE_14__* @MSI_CreateRecord(i32 2)
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** %6, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @MSI_RecordSetInteger(%struct.TYPE_14__* %76, i32 1, i64 %77)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @MSI_RecordSetInteger(%struct.TYPE_14__* %79, i32 2, i64 %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = call i64 @MSI_ViewExecute(%struct.TYPE_15__* %82, %struct.TYPE_14__* %83)
  store i64 %84, i64* %8, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = call i32 @msiobj_release(i32* %86)
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @ERROR_SUCCESS, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %74
  br label %113

92:                                               ; preds = %74
  br label %93

93:                                               ; preds = %111, %92
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %95 = call i64 @MSI_ViewFetch(%struct.TYPE_15__* %94, %struct.TYPE_14__** %6)
  store i64 %95, i64* %11, align 8
  %96 = load i64, i64* @ERROR_SUCCESS, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %93
  %99 = load i32*, i32** %4, align 8
  %100 = load %struct.patch_offset_list*, %struct.patch_offset_list** %5, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %103 = call i64 @patch_update_filepatch_sequence(i32* %99, %struct.patch_offset_list* %100, %struct.TYPE_15__* %101, %struct.TYPE_14__* %102)
  store i64 %103, i64* %8, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = call i32 @msiobj_release(i32* %105)
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* @ERROR_SUCCESS, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %113

111:                                              ; preds = %98
  br label %93

112:                                              ; preds = %93
  br label %113

113:                                              ; preds = %112, %110, %91, %61, %42
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = call i32 @msiobj_release(i32* %115)
  %117 = load i64, i64* %8, align 8
  store i64 %117, i64* %3, align 8
  br label %118

118:                                              ; preds = %113, %72, %23
  %119 = load i64, i64* %3, align 8
  ret i64 %119
}

declare dso_local i64 @MSI_DatabaseOpenViewW(i32*, i8*, %struct.TYPE_15__**) #1

declare dso_local %struct.TYPE_14__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @MSI_RecordSetInteger(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i64 @MSI_ViewExecute(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i64 @MSI_ViewFetch(%struct.TYPE_15__*, %struct.TYPE_14__**) #1

declare dso_local i64 @patch_update_file_sequence(i32*, %struct.patch_offset_list*, %struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i64 @patch_update_filepatch_sequence(i32*, %struct.patch_offset_list*, %struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
