; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_send.c_send_chown_command.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_send.c_send_chown_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@BTRFS_SEND_CMD_CHOWN = common dso_local global i32 0, align 4
@BTRFS_SEND_TLV_PATH = common dso_local global i32 0, align 4
@BTRFS_SEND_TLV_UID = common dso_local global i32 0, align 4
@BTRFS_SEND_TLV_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i8, i8)* @send_chown_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_chown_command(%struct.TYPE_6__* %0, i8* %1, i8 signext %2, i8 signext %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = load i32, i32* @BTRFS_SEND_CMD_CHOWN, align 4
  %15 = call i32 @send_command(%struct.TYPE_6__* %13, i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = load i32, i32* @BTRFS_SEND_TLV_PATH, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = trunc i64 %23 to i32
  br label %26

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ %24, %21 ], [ 0, %25 ]
  %28 = call i32 @send_add_tlv(%struct.TYPE_6__* %16, i32 %17, i8* %18, i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = load i32, i32* @BTRFS_SEND_TLV_UID, align 4
  %31 = call i32 @send_add_tlv(%struct.TYPE_6__* %29, i32 %30, i8* %7, i32 1)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = load i32, i32* @BTRFS_SEND_TLV_GID, align 4
  %34 = call i32 @send_add_tlv(%struct.TYPE_6__* %32, i32 %33, i8* %8, i32 1)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @send_command_finish(%struct.TYPE_6__* %35, i32 %36)
  ret void
}

declare dso_local i32 @send_command(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @send_add_tlv(%struct.TYPE_6__*, i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @send_command_finish(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
