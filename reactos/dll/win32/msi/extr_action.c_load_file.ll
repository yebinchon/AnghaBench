; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_load_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i8*, %struct.TYPE_17__*, i32, i8*, i8*, i8*, i8*, i32, i8*, i32 }

@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Component not found: %s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@msifs_invalid = common dso_local global i32 0, align 4
@msidbSumInfoSourceTypeAdminImage = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@msidbFileAttributesCompressed = common dso_local global i32 0, align 4
@msidbFileAttributesPatchAdded = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@msidbFileAttributesNoncompressed = common dso_local global i32 0, align 4
@msidbSumInfoSourceTypeCompressed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"File loaded (file %s sequence %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*)* @load_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_file(i32* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %6, align 8
  %10 = call %struct.TYPE_17__* @msi_alloc_zero(i32 96)
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %8, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %12 = icmp ne %struct.TYPE_17__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %14, i32* %3, align 4
  br label %154

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i8* @msi_dup_record_field(i32* %16, i32 1)
  %18 = bitcast i8* %17 to %struct.TYPE_17__*
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 4
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %20, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call %struct.TYPE_17__* @MSI_RecordGetString(i32* %21, i32 2)
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %7, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = call i32 @msi_get_loaded_component(%struct.TYPE_16__* %23, %struct.TYPE_17__* %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 12
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 12
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %15
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = call i32 @debugstr_w(%struct.TYPE_17__* %33)
  %35 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = call i32 @msi_free(%struct.TYPE_17__* %38)
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %41 = call i32 @msi_free(%struct.TYPE_17__* %40)
  %42 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %42, i32* %3, align 4
  br label %154

43:                                               ; preds = %15
  %44 = load i32*, i32** %4, align 8
  %45 = call i8* @msi_dup_record_field(i32* %44, i32 3)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 11
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 11
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @msi_reduce_to_long_filename(i8* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = call i8* @msi_dup_record_field(i32* %52, i32 3)
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 9
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 9
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @folder_split_path(i8* %58, i8 signext 124)
  %60 = call i32 @strdupW(i32 %59)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = call i8* @MSI_RecordGetInteger(i32* %63, i32 4)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 8
  store i8* %64, i8** %66, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = call i8* @msi_dup_record_field(i32* %67, i32 5)
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 7
  store i8* %68, i8** %70, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i8* @msi_dup_record_field(i32* %71, i32 6)
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = call i8* @MSI_RecordGetInteger(i32* %75, i32 7)
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call i8* @MSI_RecordGetInteger(i32* %80, i32 8)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @msifs_invalid, align 4
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @msidbSumInfoSourceTypeAdminImage, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %43
  %94 = load i8*, i8** @FALSE, align 8
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %133

98:                                               ; preds = %43
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @msidbFileAttributesCompressed, align 4
  %103 = load i32, i32* @msidbFileAttributesPatchAdded, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %101, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %98
  %108 = load i32, i32* @TRUE, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %132

111:                                              ; preds = %98
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @msidbFileAttributesNoncompressed, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load i8*, i8** @FALSE, align 8
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %131

123:                                              ; preds = %111
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @msidbSumInfoSourceTypeCompressed, align 4
  %128 = and i32 %126, %127
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %123, %118
  br label %132

132:                                              ; preds = %131, %107
  br label %133

133:                                              ; preds = %132, %93
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %136 = call i32 @load_file_hash(%struct.TYPE_16__* %134, %struct.TYPE_17__* %135)
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %139 = call i32 @load_file_disk_id(%struct.TYPE_16__* %137, %struct.TYPE_17__* %138)
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = call i32 @debugstr_w(%struct.TYPE_17__* %142)
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 3
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %143, i8* %146)
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  %152 = call i32 @list_add_tail(i32* %149, i32* %151)
  %153 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %133, %32, %13
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.TYPE_17__* @msi_alloc_zero(i32) #1

declare dso_local i8* @msi_dup_record_field(i32*, i32) #1

declare dso_local %struct.TYPE_17__* @MSI_RecordGetString(i32*, i32) #1

declare dso_local i32 @msi_get_loaded_component(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_w(%struct.TYPE_17__*) #1

declare dso_local i32 @msi_free(%struct.TYPE_17__*) #1

declare dso_local i32 @msi_reduce_to_long_filename(i8*) #1

declare dso_local i32 @strdupW(i32) #1

declare dso_local i32 @folder_split_path(i8*, i8 signext) #1

declare dso_local i8* @MSI_RecordGetInteger(i32*, i32) #1

declare dso_local i32 @load_file_hash(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @load_file_disk_id(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @TRACE(i8*, i32, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
