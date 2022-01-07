; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_method_set_reboot_to_firmware_setup.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_method_set_reboot_to_firmware_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"SYSTEMD_REBOOT_TO_FIRMWARE_SETUP\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SD_BUS_ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Firmware does not support boot into firmware.\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Failed to parse $SYSTEMD_REBOOT_TO_FIRMWARE_SETUP: %m\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"org.freedesktop.login1.set-reboot-to-firmware-setup\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"/run/systemd/reboot-to-firmware-setup\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32*)* @method_set_reboot_to_firmware_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_set_reboot_to_firmware_setup(%struct.TYPE_8__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = call i32 @assert(%struct.TYPE_8__* %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = call i32 @assert(%struct.TYPE_8__* %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = call i32 @sd_bus_message_read(%struct.TYPE_8__* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %113

24:                                               ; preds = %3
  %25 = call i32 @getenv_bool(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @ENXIO, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = call i32 (...) @efi_reboot_to_firmware_supported()
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @SD_BUS_ERROR_NOT_SUPPORTED, align 4
  %39 = call i32 @sd_bus_error_setf(i32* %37, i32 %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 %39, i32* %4, align 4
  br label %113

40:                                               ; preds = %30
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %4, align 4
  br label %113

45:                                               ; preds = %40
  store i32 1, i32* %9, align 4
  br label %61

46:                                               ; preds = %24
  %47 = load i32, i32* %11, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @log_warning_errno(i32 %53, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* @SD_BUS_ERROR_NOT_SUPPORTED, align 4
  %58 = call i32 @sd_bus_error_setf(i32* %56, i32 %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 %58, i32* %4, align 4
  br label %113

59:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %45
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %64 = load i32, i32* @UID_INVALID, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @bus_verify_polkit_async(%struct.TYPE_8__* %62, i32 %63, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 0, i32 %64, i32* %66, i32* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %113

73:                                               ; preds = %61
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 1, i32* %4, align 4
  br label %113

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @efi_set_reboot_to_firmware(i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %4, align 4
  br label %113

87:                                               ; preds = %80
  br label %110

88:                                               ; preds = %77
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = call i32 @touch(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %4, align 4
  br label %113

97:                                               ; preds = %91
  br label %109

98:                                               ; preds = %88
  %99 = call i64 @unlink(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i32, i32* @errno, align 4
  %103 = load i32, i32* @ENOENT, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* @errno, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %113

108:                                              ; preds = %101, %98
  br label %109

109:                                              ; preds = %108, %97
  br label %110

110:                                              ; preds = %109, %87
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %112 = call i32 @sd_bus_reply_method_return(%struct.TYPE_8__* %111, i32* null)
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %110, %105, %95, %85, %76, %71, %55, %43, %36, %22
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i32 @getenv_bool(i8*) #1

declare dso_local i32 @efi_reboot_to_firmware_supported(...) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_8__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @efi_set_reboot_to_firmware(i32) #1

declare dso_local i32 @touch(i8*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
