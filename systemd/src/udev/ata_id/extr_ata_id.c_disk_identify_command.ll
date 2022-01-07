; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/ata_id/extr_ata_id.c_disk_identify_command.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/ata_id/extr_ata_id.c_disk_identify_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_io_v4 = type { i8, i32, i64, i32, i64, i64, i64, i8, i8*, i32, i8*, i64, i32*, i32, i32, i32, i32, i32 }
%struct.sg_io_hdr = type { i8, i32, i64, i32, i64, i64, i64, i8, i8*, i32, i8*, i64, i32*, i32, i32, i32, i32, i32 }

@COMMAND_TIMEOUT_MSEC = common dso_local global i32 0, align 4
@BSG_SUB_PROTOCOL_SCSI_CMD = common dso_local global i32 0, align 4
@BSG_PROTOCOL_SCSI = common dso_local global i32 0, align 4
@SG_IO = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@SG_DXFER_FROM_DEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @disk_identify_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disk_identify_command(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [12 x i32], align 16
  %9 = alloca [32 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sg_io_v4, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sg_io_hdr, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = bitcast [12 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 48, i1 false)
  %15 = bitcast i8* %14 to [12 x i32]*
  %16 = getelementptr inbounds [12 x i32], [12 x i32]* %15, i32 0, i32 0
  store i32 161, i32* %16, align 16
  %17 = getelementptr inbounds [12 x i32], [12 x i32]* %15, i32 0, i32 1
  store i32 8, i32* %17, align 4
  %18 = getelementptr inbounds [12 x i32], [12 x i32]* %15, i32 0, i32 2
  store i32 46, i32* %18, align 8
  %19 = getelementptr inbounds [12 x i32], [12 x i32]* %15, i32 0, i32 4
  store i32 1, i32* %19, align 16
  %20 = getelementptr inbounds [12 x i32], [12 x i32]* %15, i32 0, i32 9
  store i32 236, i32* %20, align 4
  %21 = bitcast [32 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 128, i1 false)
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %23 = getelementptr inbounds i32, i32* %22, i64 8
  store i32* %23, i32** %10, align 8
  %24 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 0
  store i8 81, i8* %24, align 8
  %25 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 1
  store i32 48, i32* %25, align 4
  %26 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 2
  %27 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %28 = ptrtoint i32* %27 to i64
  store i64 %28, i64* %26, align 8
  %29 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 3
  store i32 128, i32* %29, align 8
  %30 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 4
  %31 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %32 = ptrtoint i32* %31 to i64
  store i64 %32, i64* %30, align 8
  %33 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 5
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 6
  %36 = load i8*, i8** %6, align 8
  %37 = ptrtoint i8* %36 to i64
  store i64 %37, i64* %35, align 8
  %38 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 7
  store i8 0, i8* %38, align 8
  %39 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 8
  store i8* null, i8** %39, align 8
  %40 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 9
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 10
  store i8* null, i8** %41, align 8
  %42 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 11
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 12
  store i32* null, i32** %43, align 8
  %44 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 13
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 14
  %46 = load i32, i32* @COMMAND_TIMEOUT_MSEC, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 15
  store i32 0, i32* %47, align 8
  %48 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 16
  %49 = load i32, i32* @BSG_SUB_PROTOCOL_SCSI_CMD, align 4
  store i32 %49, i32* %48, align 4
  %50 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %11, i32 0, i32 17
  %51 = load i32, i32* @BSG_PROTOCOL_SCSI, align 4
  store i32 %51, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @SG_IO, align 4
  %54 = call i32 @ioctl(i32 %52, i32 %53, %struct.sg_io_v4* %11)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %99

57:                                               ; preds = %3
  %58 = load i64, i64* @errno, align 8
  %59 = load i64, i64* @EINVAL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %96

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 0
  store i8 0, i8* %62, align 8
  %63 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 3
  store i32 0, i32* %65, align 8
  %66 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 5
  store i64 0, i64* %67, align 8
  %68 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 6
  store i64 0, i64* %68, align 8
  %69 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 7
  store i8 83, i8* %69, align 8
  %70 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 8
  %71 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %72 = bitcast i32* %71 to i8*
  store i8* %72, i8** %70, align 8
  %73 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 9
  store i32 48, i32* %73, align 8
  %74 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 10
  %75 = load i8*, i8** %6, align 8
  store i8* %75, i8** %74, align 8
  %76 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 11
  %77 = load i64, i64* %7, align 8
  store i64 %77, i64* %76, align 8
  %78 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 12
  %79 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  store i32* %79, i32** %78, align 8
  %80 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 13
  store i32 128, i32* %80, align 8
  %81 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 14
  %82 = load i32, i32* @COMMAND_TIMEOUT_MSEC, align 4
  store i32 %82, i32* %81, align 4
  %83 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 15
  %84 = load i32, i32* @SG_DXFER_FROM_DEV, align 4
  store i32 %84, i32* %83, align 8
  %85 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 16
  store i32 0, i32* %85, align 4
  %86 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 17
  store i32 0, i32* %86, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @SG_IO, align 4
  %89 = bitcast %struct.sg_io_hdr* %13 to %struct.sg_io_v4*
  %90 = call i32 @ioctl(i32 %87, i32 %88, %struct.sg_io_v4* %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %61
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %4, align 4
  br label %128

95:                                               ; preds = %61
  br label %98

96:                                               ; preds = %57
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %4, align 4
  br label %128

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %98, %3
  %100 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %101 = load i32, i32* %100, align 16
  %102 = icmp eq i32 %101, 114
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load i32*, i32** %10, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 9
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i32*, i32** %10, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 12
  br i1 %112, label %127, label %113

113:                                              ; preds = %108, %103, %99
  %114 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %115 = load i32, i32* %114, align 16
  %116 = icmp eq i32 %115, 112
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 12
  %119 = load i32, i32* %118, align 16
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 13
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 29
  br i1 %124, label %127, label %125

125:                                              ; preds = %121, %117, %113
  %126 = load i64, i64* @EIO, align 8
  store i64 %126, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %128

127:                                              ; preds = %121, %108
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %127, %125, %96, %93
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ioctl(i32, i32, %struct.sg_io_v4*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
