; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_send.c_send_utimes_command_dir.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_send.c_send_utimes_command_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@BTRFS_SEND_CMD_UTIMES = common dso_local global i32 0, align 4
@BTRFS_SEND_TLV_PATH = common dso_local global i32 0, align 4
@BTRFS_SEND_TLV_ATIME = common dso_local global i32 0, align 4
@BTRFS_SEND_TLV_MTIME = common dso_local global i32 0, align 4
@BTRFS_SEND_TLV_CTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*, i32*, i32*)* @send_utimes_command_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_utimes_command_dir(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = load i32, i32* @BTRFS_SEND_CMD_UTIMES, align 4
  %17 = call i32 @send_command(%struct.TYPE_10__* %15, i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = load i32, i32* @BTRFS_SEND_TLV_PATH, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @send_add_tlv_path(%struct.TYPE_10__* %18, i32 %19, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = load i32, i32* @BTRFS_SEND_TLV_ATIME, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @send_add_tlv(%struct.TYPE_10__* %30, i32 %31, i32* %32, i32 4)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = load i32, i32* @BTRFS_SEND_TLV_MTIME, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @send_add_tlv(%struct.TYPE_10__* %34, i32 %35, i32* %36, i32 4)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = load i32, i32* @BTRFS_SEND_TLV_CTIME, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @send_add_tlv(%struct.TYPE_10__* %38, i32 %39, i32* %40, i32 4)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @send_command_finish(%struct.TYPE_10__* %42, i32 %43)
  ret void
}

declare dso_local i32 @send_command(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @send_add_tlv_path(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @send_add_tlv(%struct.TYPE_10__*, i32, i32*, i32) #1

declare dso_local i32 @send_command_finish(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
