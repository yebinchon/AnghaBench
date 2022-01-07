; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_cd_inquiry.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_cd_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmd = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"INQUIRY\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"not an MMC unit\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"INQUIRY: [%.8s][%.16s][%.4s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cd_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd_inquiry(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmd, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i32 @scsi_cmd_init(%struct.scsi_cmd* %4)
  %8 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 0, i32 18)
  %9 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 4, i32 36)
  %10 = call i32 @scsi_cmd_set(%struct.scsi_cmd* %4, i32 5, i32 0)
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %13 = call i32 @scsi_cmd_run(%struct.scsi_cmd* %4, i32 %11, i8* %12, i32 36)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @info_scsi_cmd_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 -1, i32* %2, align 4
  br label %37

19:                                               ; preds = %1
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %21 = load i8, i8* %20, align 16
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 31
  %24 = icmp ne i32 %23, 5
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = call i32 @SYNTHETIC_ERRNO(i32 %26)
  %28 = call i32 @log_debug_errno(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %2, align 4
  br label %37

29:                                               ; preds = %19
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %31 = getelementptr inbounds i8, i8* %30, i64 8
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %33 = getelementptr inbounds i8, i8* %32, i64 16
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %35 = getelementptr inbounds i8, i8* %34, i64 32
  %36 = call i32 @log_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %31, i8* %33, i8* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %29, %25, %16
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @scsi_cmd_init(%struct.scsi_cmd*) #1

declare dso_local i32 @scsi_cmd_set(%struct.scsi_cmd*, i32, i32) #1

declare dso_local i32 @scsi_cmd_run(%struct.scsi_cmd*, i32, i8*, i32) #1

declare dso_local i32 @info_scsi_cmd_err(i8*, i32) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @log_debug(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
