; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_property_get_reboot_to_firmware_setup.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_property_get_reboot_to_firmware_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"SYSTEMD_REBOOT_TO_FIRMWARE_SETUP\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Failed to determine reboot-to-firmware-setup state: %m\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Failed to parse $SYSTEMD_REBOOT_TO_FIRMWARE_SETUP: %m\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"/run/systemd/reboot-to-firmware-setup\00", align 1
@F_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [73 x i8] c"Failed to check whether /run/systemd/reboot-to-firmware-setup exists: %m\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32*)* @property_get_reboot_to_firmware_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_get_reboot_to_firmware_setup(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @assert(i8* %16)
  %18 = load i8*, i8** %12, align 8
  %19 = call i32 @assert(i8* %18)
  %20 = load i8*, i8** %13, align 8
  %21 = call i32 @assert(i8* %20)
  %22 = call i32 @getenv_bool(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %7
  %28 = call i32 (...) @efi_get_reboot_to_firmware()
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @log_warning_errno(i32 %37, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %31, %27
  br label %65

40:                                               ; preds = %7
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @log_warning_errno(i32 %44, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %64

46:                                               ; preds = %40
  %47 = load i32, i32* %15, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i32, i32* @F_OK, align 4
  %51 = call i64 @access(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i32, i32* @errno, align 4
  %55 = load i32, i32* @ENOENT, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @log_warning_errno(i32 %58, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %53
  store i32 0, i32* %15, align 4
  br label %62

61:                                               ; preds = %49
  store i32 1, i32* %15, align 4
  br label %62

62:                                               ; preds = %61, %60
  br label %63

63:                                               ; preds = %62, %46
  br label %64

64:                                               ; preds = %63, %43
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i8*, i8** %12, align 8
  %67 = load i32, i32* %15, align 4
  %68 = icmp sgt i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @sd_bus_message_append(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  ret i32 %70
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @getenv_bool(i8*) #1

declare dso_local i32 @efi_get_reboot_to_firmware(...) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @sd_bus_message_append(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
