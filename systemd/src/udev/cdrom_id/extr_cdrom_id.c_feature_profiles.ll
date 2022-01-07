; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_feature_profiles.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_feature_profiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"profile 0x%02x mo\00", align 1
@cd_mo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"profile 0x%02x cd_rom\00", align 1
@cd_cd_rom = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"profile 0x%02x cd_r\00", align 1
@cd_cd_r = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"profile 0x%02x cd_rw\00", align 1
@cd_cd_rw = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"profile 0x%02x dvd_rom\00", align 1
@cd_dvd_rom = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"profile 0x%02x dvd_ram\00", align 1
@cd_dvd_ram = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"profile 0x%02x dvd_rw\00", align 1
@cd_dvd_rw = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"profile 0x%02x dvd_plus_r\00", align 1
@cd_dvd_plus_r = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"profile 0x%02x dvd_plus_rw\00", align 1
@cd_dvd_plus_rw = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"profile 0x%02x dvd_plus_rw_dl\00", align 1
@cd_dvd_plus_rw_dl = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"profile 0x%02x dvd_plus_r_dl\00", align 1
@cd_dvd_plus_r_dl = common dso_local global i32 0, align 4
@cd_bd = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"profile 0x%02x bd\00", align 1
@cd_bd_r = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"profile 0x%02x bd_r\00", align 1
@cd_bd_re = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"profile 0x%02x bd_re\00", align 1
@cd_hddvd = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"profile 0x%02x hddvd\00", align 1
@cd_hddvd_r = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [23 x i8] c"profile 0x%02x hddvd_r\00", align 1
@cd_hddvd_rw = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [24 x i8] c"profile 0x%02x hddvd_rw\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"profile 0x%02x <ignored>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @feature_profiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feature_profiles(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %85, %2
  %8 = load i32, i32* %5, align 4
  %9 = add i32 %8, 4
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %4, align 8
  %12 = icmp ule i64 %10, %11
  br i1 %12, label %13, label %88

13:                                               ; preds = %7
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl i32 %19, 8
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %20, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %81 [
    i32 3, label %30
    i32 4, label %30
    i32 5, label %30
    i32 8, label %33
    i32 9, label %36
    i32 10, label %39
    i32 16, label %42
    i32 18, label %45
    i32 19, label %48
    i32 20, label %48
    i32 27, label %51
    i32 26, label %54
    i32 42, label %57
    i32 43, label %60
    i32 64, label %63
    i32 65, label %66
    i32 66, label %66
    i32 67, label %69
    i32 80, label %72
    i32 81, label %75
    i32 82, label %78
  ]

30:                                               ; preds = %13, %13, %13
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @log_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 1, i32* @cd_mo, align 4
  br label %84

33:                                               ; preds = %13
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @log_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  store i32 1, i32* @cd_cd_rom, align 4
  br label %84

36:                                               ; preds = %13
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @log_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  store i32 1, i32* @cd_cd_r, align 4
  br label %84

39:                                               ; preds = %13
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  store i32 1, i32* @cd_cd_rw, align 4
  br label %84

42:                                               ; preds = %13
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @log_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  store i32 1, i32* @cd_dvd_rom, align 4
  br label %84

45:                                               ; preds = %13
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @log_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  store i32 1, i32* @cd_dvd_ram, align 4
  br label %84

48:                                               ; preds = %13, %13
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @log_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %49)
  store i32 1, i32* @cd_dvd_rw, align 4
  br label %84

51:                                               ; preds = %13
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @log_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %52)
  store i32 1, i32* @cd_dvd_plus_r, align 4
  br label %84

54:                                               ; preds = %13
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @log_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  store i32 1, i32* @cd_dvd_plus_rw, align 4
  br label %84

57:                                               ; preds = %13
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @log_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %58)
  store i32 1, i32* @cd_dvd_plus_rw_dl, align 4
  br label %84

60:                                               ; preds = %13
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @log_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %61)
  store i32 1, i32* @cd_dvd_plus_r_dl, align 4
  br label %84

63:                                               ; preds = %13
  store i32 1, i32* @cd_bd, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @log_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %64)
  br label %84

66:                                               ; preds = %13, %13
  store i32 1, i32* @cd_bd_r, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @log_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %67)
  br label %84

69:                                               ; preds = %13
  store i32 1, i32* @cd_bd_re, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %70)
  br label %84

72:                                               ; preds = %13
  store i32 1, i32* @cd_hddvd, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %73)
  br label %84

75:                                               ; preds = %13
  store i32 1, i32* @cd_hddvd_r, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @log_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %76)
  br label %84

78:                                               ; preds = %13
  store i32 1, i32* @cd_hddvd_rw, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @log_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %79)
  br label %84

81:                                               ; preds = %13
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @log_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add i32 %86, 4
  store i32 %87, i32* %5, align 4
  br label %7

88:                                               ; preds = %7
  ret i32 0
}

declare dso_local i32 @log_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
