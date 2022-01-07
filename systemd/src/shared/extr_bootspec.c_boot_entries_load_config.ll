; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bootspec.c_boot_entries_load_config.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bootspec.c_boot_entries_load_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"/loader/loader.conf\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"/loader/entries\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"/EFI/Linux/\00", align 1
@boot_entry_compare = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to uniquify boot entries: %m\00", align 1
@EFI_VENDOR_LOADER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"LoaderEntryOneShot\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Failed to read EFI variable \22LoaderEntryOneShot\22: %m\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"LoaderEntryDefault\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Failed to read EFI variable \22LoaderEntryDefault\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @boot_entries_load_config(i8* %0, i8* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %11 = call i32 @assert(%struct.TYPE_6__* %10)
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %53

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @strjoina(i8* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = call i32 @boot_loader_read_conf(i8* %17, %struct.TYPE_6__* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %165

24:                                               ; preds = %14
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @strjoina(i8* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = call i32 @boot_entries_find(i8* %27, i8* %28, i32* %30, i32* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %165

38:                                               ; preds = %24
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @strjoina(i8* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = call i32 @boot_entries_find_unified(i8* %41, i8* %42, i32* %44, i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %165

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %3
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %85

56:                                               ; preds = %53
  %57 = load i8*, i8** %6, align 8
  %58 = call i8* @strjoina(i8* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = call i32 @boot_entries_find(i8* %59, i8* %60, i32* %62, i32* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %165

70:                                               ; preds = %56
  %71 = load i8*, i8** %6, align 8
  %72 = call i8* @strjoina(i8* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i8* %72, i8** %8, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = call i32 @boot_entries_find_unified(i8* %73, i8* %74, i32* %76, i32* %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %70
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %165

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84, %53
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @boot_entry_compare, align 4
  %93 = call i32 @typesafe_qsort(i32 %88, i32 %91, i32 %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @boot_entries_uniquify(i32 %96, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %85
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @log_error_errno(i32 %104, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 %105, i32* %4, align 4
  br label %165

106:                                              ; preds = %85
  %107 = call i64 (...) @is_efi_boot()
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %160

109:                                              ; preds = %106
  %110 = load i32, i32* @EFI_VENDOR_LOADER, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = call i32 @efi_get_variable_string(i32 %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %109
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @ENOENT, align 4
  %119 = sub nsw i32 0, %118
  %120 = load i32, i32* @ENODATA, align 4
  %121 = sub nsw i32 0, %120
  %122 = call i32 @IN_SET(i32 %117, i32 %119, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %116
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @log_warning_errno(i32 %125, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i32, i32* %9, align 4
  store i32 %132, i32* %4, align 4
  br label %165

133:                                              ; preds = %124
  br label %134

134:                                              ; preds = %133, %116, %109
  %135 = load i32, i32* @EFI_VENDOR_LOADER, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = call i32 @efi_get_variable_string(i32 %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32* %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %159

141:                                              ; preds = %134
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @ENOENT, align 4
  %144 = sub nsw i32 0, %143
  %145 = load i32, i32* @ENODATA, align 4
  %146 = sub nsw i32 0, %145
  %147 = call i32 @IN_SET(i32 %142, i32 %144, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %159, label %149

149:                                              ; preds = %141
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @log_warning_errno(i32 %150, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  %155 = icmp eq i32 %152, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %4, align 4
  br label %165

158:                                              ; preds = %149
  br label %159

159:                                              ; preds = %158, %141, %134
  br label %160

160:                                              ; preds = %159, %106
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %162 = call i32 @boot_entries_select_default(%struct.TYPE_6__* %161)
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %160, %156, %131, %103, %82, %68, %50, %36, %22
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i8* @strjoina(i8*, i8*) #1

declare dso_local i32 @boot_loader_read_conf(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @boot_entries_find(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @boot_entries_find_unified(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @typesafe_qsort(i32, i32, i32) #1

declare dso_local i32 @boot_entries_uniquify(i32, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i64 @is_efi_boot(...) #1

declare dso_local i32 @efi_get_variable_string(i32, i8*, i32*) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @boot_entries_select_default(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
