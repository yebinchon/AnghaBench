; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/ata_id/extr_ata_id.c_disk_identify.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/ata_id/extr_ata_id.c_disk_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @disk_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disk_identify(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [36 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @memzero(i32* %13, i32 512)
  %15 = load i32, i32* %4, align 4
  %16 = getelementptr inbounds [36 x i32], [36 x i32]* %8, i64 0, i64 0
  %17 = call i32 @disk_scsi_inquiry_command(i32 %15, i32* %16, i32 144)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %66

21:                                               ; preds = %3
  %22 = getelementptr inbounds [36 x i32], [36 x i32]* %8, i64 0, i64 0
  %23 = load i32, i32* %22, align 16
  %24 = and i32 %23, 31
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  store i32 1, i32* %12, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @disk_identify_packet_device_command(i32 %28, i32* %29, i32 512)
  store i32 %30, i32* %7, align 4
  br label %44

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  store i32 -1, i32* %7, align 4
  %35 = load i32, i32* @EIO, align 4
  store i32 %35, i32* @errno, align 4
  br label %66

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @disk_identify_command(i32 %37, i32* %38, i32 512)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %66

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %27
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %57, %44
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 512
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %60

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %45

60:                                               ; preds = %55, %45
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  store i32 -1, i32* %7, align 4
  %64 = load i32, i32* @EIO, align 4
  store i32 %64, i32* @errno, align 4
  br label %66

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %63, %42, %34, %20
  %67 = load i32*, i32** %6, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @memzero(i32*, i32) #1

declare dso_local i32 @disk_scsi_inquiry_command(i32, i32*, i32) #1

declare dso_local i32 @disk_identify_packet_device_command(i32, i32*, i32) #1

declare dso_local i32 @disk_identify_command(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
