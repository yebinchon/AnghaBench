; ModuleID = '/home/carl/AnghaBench/vlc/modules/gui/extr_eject.c_EjectSCSI.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/gui/extr_eject.c_EjectSCSI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdata = type { i32, i32, [256 x i8] }

@ALLOW_MEDIUM_REMOVAL = common dso_local global i8 0, align 1
@SCSI_IOCTL_SEND_COMMAND = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@START_STOP = common dso_local global i8* null, align 8
@BLKRRPART = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @EjectSCSI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EjectSCSI(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdata, align 4
  store i32 %0, i32* %3, align 4
  %5 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %7 = load i8, i8* @ALLOW_MEDIUM_REMOVAL, align 1
  %8 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 2
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8 %7, i8* %9, align 4
  %10 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 2
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %11, align 1
  %12 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 2
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 2
  store i8 0, i8* %13, align 2
  %14 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 2
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 3
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 2
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 4
  store i8 0, i8* %17, align 4
  %18 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 2
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 5
  store i8 0, i8* %19, align 1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SCSI_IOCTL_SEND_COMMAND, align 4
  %22 = bitcast %struct.sdata* %4 to i8*
  %23 = call i64 (i32, i32, ...) @ioctl(i32 %20, i32 %21, i8* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %2, align 4
  br label %80

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load i8*, i8** @START_STOP, align 8
  %31 = ptrtoint i8* %30 to i8
  %32 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 2
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %32, i64 0, i64 0
  store i8 %31, i8* %33, align 4
  %34 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 2
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %34, i64 0, i64 1
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 2
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %36, i64 0, i64 2
  store i8 0, i8* %37, align 2
  %38 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 2
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i64 0, i64 3
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 2
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %40, i64 0, i64 4
  store i8 1, i8* %41, align 4
  %42 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 2
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %42, i64 0, i64 5
  store i8 0, i8* %43, align 1
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @SCSI_IOCTL_SEND_COMMAND, align 4
  %46 = bitcast %struct.sdata* %4 to i8*
  %47 = call i64 (i32, i32, ...) @ioctl(i32 %44, i32 %45, i8* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %27
  %50 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %50, i32* %2, align 4
  br label %80

51:                                               ; preds = %27
  %52 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 0
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = load i8*, i8** @START_STOP, align 8
  %55 = ptrtoint i8* %54 to i8
  %56 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 2
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %56, i64 0, i64 0
  store i8 %55, i8* %57, align 4
  %58 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 2
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %58, i64 0, i64 1
  store i8 0, i8* %59, align 1
  %60 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 2
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %60, i64 0, i64 2
  store i8 0, i8* %61, align 2
  %62 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 2
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %62, i64 0, i64 3
  store i8 0, i8* %63, align 1
  %64 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 2
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %64, i64 0, i64 4
  store i8 2, i8* %65, align 4
  %66 = getelementptr inbounds %struct.sdata, %struct.sdata* %4, i32 0, i32 2
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %66, i64 0, i64 5
  store i8 0, i8* %67, align 1
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @SCSI_IOCTL_SEND_COMMAND, align 4
  %70 = bitcast %struct.sdata* %4 to i8*
  %71 = call i64 (i32, i32, ...) @ioctl(i32 %68, i32 %69, i8* %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %51
  %74 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %74, i32* %2, align 4
  br label %80

75:                                               ; preds = %51
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @BLKRRPART, align 4
  %78 = call i64 (i32, i32, ...) @ioctl(i32 %76, i32 %77)
  %79 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %75, %73, %49, %25
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @ioctl(i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
