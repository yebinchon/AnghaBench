; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_scsi_cmd_init.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/cdrom_id/extr_cdrom_id.c_scsi_cmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmd = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i8, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32* }

@SG_FLAG_LUN_INHIBIT = common dso_local global i32 0, align 4
@SG_FLAG_DIRECT_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmd*)* @scsi_cmd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_cmd_init(%struct.scsi_cmd* %0) #0 {
  %2 = alloca %struct.scsi_cmd*, align 8
  store %struct.scsi_cmd* %0, %struct.scsi_cmd** %2, align 8
  %3 = load %struct.scsi_cmd*, %struct.scsi_cmd** %2, align 8
  %4 = call i32 @memzero(%struct.scsi_cmd* %3, i32 48)
  %5 = load %struct.scsi_cmd*, %struct.scsi_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_cmd, %struct.scsi_cmd* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.scsi_cmd*, %struct.scsi_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_cmd, %struct.scsi_cmd* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.scsi_cmd*, %struct.scsi_cmd** %2, align 8
  %12 = getelementptr inbounds %struct.scsi_cmd, %struct.scsi_cmd* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i32* %10, i32** %13, align 8
  %14 = load %struct.scsi_cmd*, %struct.scsi_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_cmd, %struct.scsi_cmd* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i8 83, i8* %16, align 8
  %17 = load %struct.scsi_cmd*, %struct.scsi_cmd** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_cmd, %struct.scsi_cmd* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32 8, i32* %19, align 4
  %20 = load %struct.scsi_cmd*, %struct.scsi_cmd** %2, align 8
  %21 = getelementptr inbounds %struct.scsi_cmd, %struct.scsi_cmd* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.scsi_cmd*, %struct.scsi_cmd** %2, align 8
  %25 = getelementptr inbounds %struct.scsi_cmd, %struct.scsi_cmd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 8
  %27 = load %struct.scsi_cmd*, %struct.scsi_cmd** %2, align 8
  %28 = getelementptr inbounds %struct.scsi_cmd, %struct.scsi_cmd* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.scsi_cmd*, %struct.scsi_cmd** %2, align 8
  %32 = getelementptr inbounds %struct.scsi_cmd, %struct.scsi_cmd* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @SG_FLAG_LUN_INHIBIT, align 4
  %35 = load i32, i32* @SG_FLAG_DIRECT_IO, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.scsi_cmd*, %struct.scsi_cmd** %2, align 8
  %38 = getelementptr inbounds %struct.scsi_cmd, %struct.scsi_cmd* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  ret void
}

declare dso_local i32 @memzero(%struct.scsi_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
