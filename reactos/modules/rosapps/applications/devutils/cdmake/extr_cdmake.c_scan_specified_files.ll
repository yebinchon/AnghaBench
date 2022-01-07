; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_cdmake.c_scan_specified_files.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_cdmake.c_scan_specified_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32*, i32, i32, i32 }
%struct.target_dir_entry = type { i8*, %struct.target_dir_entry*, %struct.target_dir_entry*, %struct.target_file* }
%struct.target_file = type { i8*, i8*, %struct.target_file* }
%struct.stat = type { i32, i32, i32 }

@DIRECTORY_TIMESTAMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Cannot stat timestamp file '%s'\0A\00", align 1
@verbosity = common dso_local global i64 0, align 8
@VERBOSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"%d: file %s (from %s)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Cannot find '%s' (target '%s')\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%d: directory %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@compare_directory_order = common dso_local global i32 0, align 4
@source = common dso_local global i64* null, align 8
@end_source = common dso_local global i64* null, align 8
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.target_dir_entry*)* @scan_specified_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_specified_files(%struct.TYPE_8__* %0, %struct.target_dir_entry* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.target_dir_entry*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.target_file*, align 8
  %8 = alloca %struct.target_dir_entry*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.target_dir_entry* %1, %struct.target_dir_entry** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32* null, i32** %10, align 8
  %11 = load %struct.target_dir_entry*, %struct.target_dir_entry** %4, align 8
  %12 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %11, i32 0, i32 3
  %13 = load %struct.target_file*, %struct.target_file** %12, align 8
  store %struct.target_file* %13, %struct.target_file** %7, align 8
  br label %14

14:                                               ; preds = %95, %2
  %15 = load %struct.target_file*, %struct.target_file** %7, align 8
  %16 = icmp ne %struct.target_file* %15, null
  br i1 %16, label %17, label %99

17:                                               ; preds = %14
  %18 = load %struct.target_file*, %struct.target_file** %7, align 8
  %19 = getelementptr inbounds %struct.target_file, %struct.target_file* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @DIRECTORY_TIMESTAMP, align 4
  %22 = call i64 @strcmp(i8* %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = load %struct.target_file*, %struct.target_file** %7, align 8
  %26 = getelementptr inbounds %struct.target_file, %struct.target_file* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @stat(i8* %27, %struct.stat* %6)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.target_file*, %struct.target_file** %7, align 8
  %32 = getelementptr inbounds %struct.target_file, %struct.target_file* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, i8*, ...) @error_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2
  %39 = call i32 @convert_date_and_time(i32* %37, i32* %38)
  br label %94

40:                                               ; preds = %17
  %41 = load i64, i64* @verbosity, align 8
  %42 = load i64, i64* @VERBOSE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.target_file*, %struct.target_file** %7, align 8
  %49 = getelementptr inbounds %struct.target_file, %struct.target_file* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.target_file*, %struct.target_file** %7, align 8
  %52 = getelementptr inbounds %struct.target_file, %struct.target_file* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, i32, i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %47, i8* %50, i8* %53)
  br label %55

55:                                               ; preds = %44, %40
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = load i32, i32* @FALSE, align 4
  %58 = call %struct.TYPE_8__* @new_empty_dirrecord(%struct.TYPE_8__* %56, i32 %57)
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %5, align 8
  %59 = load %struct.target_file*, %struct.target_file** %7, align 8
  %60 = getelementptr inbounds %struct.target_file, %struct.target_file* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = load i32, i32* @FALSE, align 4
  %64 = call i32 @parse_filename_into_dirrecord(i8* %61, %struct.TYPE_8__* %62, i32 %63)
  %65 = load %struct.target_file*, %struct.target_file** %7, align 8
  %66 = getelementptr inbounds %struct.target_file, %struct.target_file* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @stat(i8* %67, %struct.stat* %6)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %78

70:                                               ; preds = %55
  %71 = load %struct.target_file*, %struct.target_file** %7, align 8
  %72 = getelementptr inbounds %struct.target_file, %struct.target_file* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.target_file*, %struct.target_file** %7, align 8
  %75 = getelementptr inbounds %struct.target_file, %struct.target_file* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i8*, i8*, ...) @error_exit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %73, i8* %76)
  br label %78

78:                                               ; preds = %70, %55
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %82 = call i32 @convert_date_and_time(i32* %80, i32* %81)
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 4
  store i32 %84, i32* %88, align 4
  %89 = load %struct.target_file*, %struct.target_file** %7, align 8
  %90 = getelementptr inbounds %struct.target_file, %struct.target_file* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %78, %35
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.target_file*, %struct.target_file** %7, align 8
  %97 = getelementptr inbounds %struct.target_file, %struct.target_file* %96, i32 0, i32 2
  %98 = load %struct.target_file*, %struct.target_file** %97, align 8
  store %struct.target_file* %98, %struct.target_file** %7, align 8
  br label %14

99:                                               ; preds = %14
  %100 = load %struct.target_dir_entry*, %struct.target_dir_entry** %4, align 8
  %101 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %100, i32 0, i32 2
  %102 = load %struct.target_dir_entry*, %struct.target_dir_entry** %101, align 8
  store %struct.target_dir_entry* %102, %struct.target_dir_entry** %8, align 8
  br label %103

103:                                              ; preds = %130, %99
  %104 = load %struct.target_dir_entry*, %struct.target_dir_entry** %8, align 8
  %105 = icmp ne %struct.target_dir_entry* %104, null
  br i1 %105, label %106, label %134

106:                                              ; preds = %103
  %107 = load i64, i64* @verbosity, align 8
  %108 = load i64, i64* @VERBOSE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.target_dir_entry*, %struct.target_dir_entry** %8, align 8
  %115 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i8*, i32, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %113, i8* %116)
  br label %118

118:                                              ; preds = %110, %106
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = load i32, i32* @TRUE, align 4
  %121 = call %struct.TYPE_8__* @new_empty_dirrecord(%struct.TYPE_8__* %119, i32 %120)
  store %struct.TYPE_8__* %121, %struct.TYPE_8__** %5, align 8
  %122 = load %struct.target_dir_entry*, %struct.target_dir_entry** %8, align 8
  %123 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %126 = load i32, i32* @TRUE, align 4
  %127 = call i32 @parse_filename_into_dirrecord(i8* %124, %struct.TYPE_8__* %125, i32 %126)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = load %struct.target_dir_entry*, %struct.target_dir_entry** %8, align 8
  call void @scan_specified_files(%struct.TYPE_8__* %128, %struct.target_dir_entry* %129)
  br label %130

130:                                              ; preds = %118
  %131 = load %struct.target_dir_entry*, %struct.target_dir_entry** %8, align 8
  %132 = getelementptr inbounds %struct.target_dir_entry, %struct.target_dir_entry* %131, i32 0, i32 1
  %133 = load %struct.target_dir_entry*, %struct.target_dir_entry** %132, align 8
  store %struct.target_dir_entry* %133, %struct.target_dir_entry** %8, align 8
  br label %103

134:                                              ; preds = %103
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* @compare_directory_order, align 4
  %139 = call i32* @sort_linked_list(i32* %137, i32 0, i32 %138)
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  store i32* %139, i32** %141, align 8
  %142 = load i64*, i64** @source, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  store i64 0, i64* %143, align 8
  %144 = load i64*, i64** @source, align 8
  store i64* %144, i64** @end_source, align 8
  ret void
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @error_exit(i8*, i8*, ...) #1

declare dso_local i32 @convert_date_and_time(i32*, i32*) #1

declare dso_local i32 @printf(i8*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @new_empty_dirrecord(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @parse_filename_into_dirrecord(i8*, %struct.TYPE_8__*, i32) #1

declare dso_local i32* @sort_linked_list(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
