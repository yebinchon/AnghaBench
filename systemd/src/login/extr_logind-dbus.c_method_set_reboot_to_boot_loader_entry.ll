; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_method_set_reboot_to_boot_loader_entry.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_method_set_reboot_to_boot_loader_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@SD_BUS_ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Boot loader entry '%s' is not known.\00", align 1
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Boot loader entry name '%s' is not valid, refusing.\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"SYSTEMD_REBOOT_TO_BOOT_LOADER_ENTRY\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [75 x i8] c"Failed to determine whether reboot into boot loader entry is supported: %m\00", align 1
@EFI_LOADER_FEATURE_ENTRY_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Loader does not support boot into boot loader entry.\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"Failed to parse $SYSTEMD_REBOOT_TO_BOOT_LOADER_ENTRY: %m\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [55 x i8] c"org.freedesktop.login1.set-reboot-to-boot-loader-entry\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4
@EFI_VENDOR_LOADER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"LoaderEntryOneShot\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"/run/systemd/reboot-to-boot-loader-entry\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"/run/systemd/reboot-boot-to-loader-entry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32*)* @method_set_reboot_to_boot_loader_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_set_reboot_to_boot_loader_entry(%struct.TYPE_8__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %8, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = call i32 @assert(%struct.TYPE_8__* %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = call i32 @assert(%struct.TYPE_8__* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = call i32 @sd_bus_message_read(%struct.TYPE_8__* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %160

25:                                               ; preds = %3
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @isempty(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8* null, i8** %10, align 8
  br label %56

30:                                               ; preds = %25
  %31 = load i8*, i8** %10, align 8
  %32 = call i64 @efi_loader_entry_name_valid(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @boot_loader_entry_exists(i8* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %160

41:                                               ; preds = %34
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @SD_BUS_ERROR_NOT_SUPPORTED, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %45, i32 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  store i32 %48, i32* %4, align 4
  br label %160

49:                                               ; preds = %41
  br label %55

50:                                               ; preds = %30
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %51, i32 %52, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  store i32 %54, i32* %4, align 4
  br label %160

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %29
  %57 = call i32 @getenv_bool(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @ENXIO, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %56
  %63 = call i32 @efi_loader_get_features(i32* %12)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @log_warning_errno(i32 %67, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @EFI_LOADER_FEATURE_ENTRY_ONESHOT, align 4
  %75 = call i32 @FLAGS_SET(i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72, %69
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* @SD_BUS_ERROR_NOT_SUPPORTED, align 4
  %80 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %78, i32 %79, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  store i32 %80, i32* %4, align 4
  br label %160

81:                                               ; preds = %72
  store i32 1, i32* %9, align 4
  br label %97

82:                                               ; preds = %56
  %83 = load i32, i32* %11, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @log_warning_errno(i32 %89, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* @SD_BUS_ERROR_NOT_SUPPORTED, align 4
  %94 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %92, i32 %93, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  store i32 %94, i32* %4, align 4
  br label %160

95:                                               ; preds = %82
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96, %81
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %100 = load i32, i32* @UID_INVALID, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @bus_verify_polkit_async(%struct.TYPE_8__* %98, i32 %99, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 0, i32 %100, i32* %102, i32* %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %4, align 4
  br label %160

109:                                              ; preds = %97
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 1, i32* %4, align 4
  br label %160

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %113
  %117 = load i8*, i8** %10, align 8
  %118 = call i64 @isempty(i8* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* @EFI_VENDOR_LOADER, align 4
  %122 = call i32 @efi_set_variable(i32 %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32* null, i32 0)
  store i32 %122, i32* %11, align 4
  br label %127

123:                                              ; preds = %116
  %124 = load i32, i32* @EFI_VENDOR_LOADER, align 4
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 @efi_set_variable_string(i32 %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %125)
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %123, %120
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %4, align 4
  br label %160

132:                                              ; preds = %127
  br label %157

133:                                              ; preds = %113
  %134 = load i8*, i8** %10, align 8
  %135 = call i64 @isempty(i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = call i64 @unlink(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i32, i32* @errno, align 4
  %142 = load i32, i32* @ENOENT, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, i32* @errno, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %160

147:                                              ; preds = %140, %137
  br label %156

148:                                              ; preds = %133
  %149 = load i8*, i8** %10, align 8
  %150 = call i32 @write_string_file_atomic_label(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8* %149)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* %11, align 4
  store i32 %154, i32* %4, align 4
  br label %160

155:                                              ; preds = %148
  br label %156

156:                                              ; preds = %155, %147
  br label %157

157:                                              ; preds = %156, %132
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %159 = call i32 @sd_bus_reply_method_return(%struct.TYPE_8__* %158, i32* null)
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %157, %153, %144, %130, %112, %107, %91, %77, %50, %44, %39, %23
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_8__*, i8*, i8**) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i64 @efi_loader_entry_name_valid(i8*) #1

declare dso_local i32 @boot_loader_entry_exists(i8*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, ...) #1

declare dso_local i32 @getenv_bool(i8*) #1

declare dso_local i32 @efi_loader_get_features(i32*) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @FLAGS_SET(i32, i32) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_8__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @efi_set_variable(i32, i8*, i32*, i32) #1

declare dso_local i32 @efi_set_variable_string(i32, i8*, i8*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @write_string_file_atomic_label(i8*, i8*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
