; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_cd_profiles_old_mmc.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_cd_profiles_old_mmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmd = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"READ DISC INFORMATION\00", align 1
@cd_media = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"no current profile, but disc is present; assuming CD-ROM\00", align 1
@cd_media_cd_rom = common dso_local global i32 0, align 4
@cd_media_track_count = common dso_local global i32 0, align 4
@cd_media_track_count_data = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"no current profile, assuming no media\00", align 1
@cd_media_cd_rw = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"profile 0x0a media_cd_rw\00", align 1
@cd_cd_r = common dso_local global i64 0, align 8
@cd_media_cd_r = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"profile 0x09 media_cd_r\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"profile 0x08 media_cd_rom\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cd_profiles_old_mmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd_profiles_old_mmc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmd, align 4
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  store i32 %0, i32* %3, align 4
  %7 = call i32 @scsi_cmd_init(%struct.scsi_cmd* %4)
  %8 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 0, i32 81)
  %9 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 8, i32 32)
  %10 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 9, i32 0)
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %13 = call i32 @scsi_cmd_run(%struct.scsi_cmd* %4, i32 %11, i8* %12, i32 32)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @info_scsi_cmd_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @cd_media, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @log_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @cd_media_cd_rom, align 4
  store i32 1, i32* @cd_media_track_count, align 4
  store i32 1, i32* @cd_media_track_count_data, align 4
  store i32 0, i32* %2, align 4
  br label %50

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOMEDIUM, align 4
  %25 = call i32 @SYNTHETIC_ERRNO(i32 %24)
  %26 = call i32 @log_debug_errno(i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 %26, i32* %2, align 4
  br label %50

27:                                               ; preds = %1
  store i32 1, i32* @cd_media, align 4
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 2
  %29 = load i8, i8* %28, align 2
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 16
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  store i32 1, i32* @cd_media_cd_rw, align 4
  %34 = call i32 @log_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %49

35:                                               ; preds = %27
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 2
  %37 = load i8, i8* %36, align 2
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 3
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i64, i64* @cd_cd_r, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  store i32 1, i32* @cd_media_cd_r, align 4
  %45 = call i32 @log_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %48

46:                                               ; preds = %41, %35
  store i32 1, i32* @cd_media_cd_rom, align 4
  %47 = call i32 @log_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %44
  br label %49

49:                                               ; preds = %48, %33
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %23, %21
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @scsi_cmd_init(%struct.scsi_cmd*) #1

declare dso_local i32 @scsi_cmd_set(%struct.scsi_cmd*, i32, i32) #1

declare dso_local i32 @scsi_cmd_run(%struct.scsi_cmd*, i32, i8*, i32) #1

declare dso_local i32 @info_scsi_cmd_err(i8*, i32) #1

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
