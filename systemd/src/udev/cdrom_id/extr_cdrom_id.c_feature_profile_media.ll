; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_feature_profile_media.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_feature_profile_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"profile 0x%02x \00", align 1
@cd_media = common dso_local global i32 0, align 4
@cd_media_mo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"profile 0x%02x media_cd_rom\00", align 1
@cd_media_cd_rom = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"profile 0x%02x media_cd_r\00", align 1
@cd_media_cd_r = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"profile 0x%02x media_cd_rw\00", align 1
@cd_media_cd_rw = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"profile 0x%02x media_dvd_ro\00", align 1
@cd_media_dvd_rom = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"profile 0x%02x media_dvd_r\00", align 1
@cd_media_dvd_r = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"profile 0x%02x media_dvd_ram\00", align 1
@cd_media_dvd_ram = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"profile 0x%02x media_dvd_rw_ro\00", align 1
@cd_media_dvd_rw = common dso_local global i32 0, align 4
@cd_media_dvd_rw_ro = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"profile 0x%02x media_dvd_rw_seq\00", align 1
@cd_media_dvd_rw_seq = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"profile 0x%02x media_dvd_plus_r\00", align 1
@cd_media_dvd_plus_r = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"profile 0x%02x media_dvd_plus_rw\00", align 1
@cd_media_dvd_plus_rw = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"profile 0x%02x media_dvd_plus_rw_dl\00", align 1
@cd_media_dvd_plus_rw_dl = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"profile 0x%02x media_dvd_plus_r_dl\00", align 1
@cd_media_dvd_plus_r_dl = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"profile 0x%02x media_bd\00", align 1
@cd_media_bd = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"profile 0x%02x media_bd_r\00", align 1
@cd_media_bd_r = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [27 x i8] c"profile 0x%02x media_bd_re\00", align 1
@cd_media_bd_re = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [27 x i8] c"profile 0x%02x media_hddvd\00", align 1
@cd_media_hddvd = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [29 x i8] c"profile 0x%02x media_hddvd_r\00", align 1
@cd_media_hddvd_r = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [30 x i8] c"profile 0x%02x media_hddvd_rw\00", align 1
@cd_media_hddvd_rw = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [25 x i8] c"profile 0x%02x <ignored>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @feature_profile_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @feature_profile_media(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %61 [
    i32 3, label %4
    i32 4, label %4
    i32 5, label %4
    i32 8, label %7
    i32 9, label %10
    i32 10, label %13
    i32 16, label %16
    i32 17, label %19
    i32 18, label %22
    i32 19, label %25
    i32 20, label %28
    i32 27, label %31
    i32 26, label %34
    i32 42, label %37
    i32 43, label %40
    i32 64, label %43
    i32 65, label %46
    i32 66, label %46
    i32 67, label %49
    i32 80, label %52
    i32 81, label %55
    i32 82, label %58
  ]

4:                                                ; preds = %1, %1, %1
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @log_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %5)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_mo, align 4
  br label %64

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @log_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_cd_rom, align 4
  br label %64

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @log_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_cd_r, align 4
  br label %64

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @log_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %14)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_cd_rw, align 4
  br label %64

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @log_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %17)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_dvd_rom, align 4
  br label %64

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @log_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %20)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_dvd_r, align 4
  br label %64

22:                                               ; preds = %1
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @log_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %23)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_dvd_ram, align 4
  br label %64

25:                                               ; preds = %1
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @log_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %26)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_dvd_rw, align 4
  store i32 1, i32* @cd_media_dvd_rw_ro, align 4
  br label %64

28:                                               ; preds = %1
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @log_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %29)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_dvd_rw, align 4
  store i32 1, i32* @cd_media_dvd_rw_seq, align 4
  br label %64

31:                                               ; preds = %1
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @log_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %32)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_dvd_plus_r, align 4
  br label %64

34:                                               ; preds = %1
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @log_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %35)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_dvd_plus_rw, align 4
  br label %64

37:                                               ; preds = %1
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @log_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %38)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_dvd_plus_rw_dl, align 4
  br label %64

40:                                               ; preds = %1
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @log_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %41)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_dvd_plus_r_dl, align 4
  br label %64

43:                                               ; preds = %1
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @log_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %44)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_bd, align 4
  br label %64

46:                                               ; preds = %1, %1
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @log_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %47)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_bd_r, align 4
  br label %64

49:                                               ; preds = %1
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @log_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 %50)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_bd_re, align 4
  br label %64

52:                                               ; preds = %1
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @log_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 %53)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_hddvd, align 4
  br label %64

55:                                               ; preds = %1
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @log_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32 %56)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_hddvd_r, align 4
  br label %64

58:                                               ; preds = %1
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @log_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i32 %59)
  store i32 1, i32* @cd_media, align 4
  store i32 1, i32* @cd_media_hddvd_rw, align 4
  br label %64

61:                                               ; preds = %1
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @log_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4
  ret void
}

declare dso_local i32 @log_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
