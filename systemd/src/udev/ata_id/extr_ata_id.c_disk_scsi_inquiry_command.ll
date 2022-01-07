; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/ata_id/extr_ata_id.c_disk_scsi_inquiry_command.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/ata_id/extr_ata_id.c_disk_scsi_inquiry_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_io_v4 = type { i8, i32, i64, i32, i64, i64, i64, i8, i8*, i32, i8*, i64, i32*, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.sg_io_hdr = type { i8, i32, i64, i32, i64, i64, i64, i8, i8*, i32, i8*, i64, i32*, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32 }

@COMMAND_TIMEOUT_MSEC = common dso_local global i32 0, align 4
@BSG_SUB_PROTOCOL_SCSI_CMD = common dso_local global i32 0, align 4
@BSG_PROTOCOL_SCSI = common dso_local global i32 0, align 4
@SG_IO = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@SG_DXFER_FROM_DEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @disk_scsi_inquiry_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disk_scsi_inquiry_command(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [6 x i32], align 16
  %9 = alloca [32 x i32], align 16
  %10 = alloca %struct.sg_io_v4, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sg_io_hdr, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  store i32 18, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i64, i64* %7, align 8
  %18 = lshr i64 %17, 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds i32, i32* %16, i64 1
  %21 = load i64, i64* %7, align 8
  %22 = and i64 %21, 255
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds i32, i32* %20, i64 1
  %25 = getelementptr inbounds i32, i32* %13, i64 6
  br label %26

26:                                               ; preds = %26, %3
  %27 = phi i32* [ %24, %3 ], [ %28, %26 ]
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = icmp eq i32* %28, %25
  br i1 %29, label %30, label %26

30:                                               ; preds = %26
  %31 = bitcast [32 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %31, i8 0, i64 128, i1 false)
  %32 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 0
  store i8 81, i8* %32, align 8
  %33 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 1
  store i32 24, i32* %33, align 4
  %34 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 2
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %36 = ptrtoint i32* %35 to i64
  store i64 %36, i64* %34, align 8
  %37 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 3
  store i32 128, i32* %37, align 8
  %38 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 4
  %39 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %40 = ptrtoint i32* %39 to i64
  store i64 %40, i64* %38, align 8
  %41 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 5
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %41, align 8
  %43 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 6
  %44 = load i8*, i8** %6, align 8
  %45 = ptrtoint i8* %44 to i64
  store i64 %45, i64* %43, align 8
  %46 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 7
  store i8 0, i8* %46, align 8
  %47 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 8
  store i8* null, i8** %47, align 8
  %48 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 9
  store i32 0, i32* %48, align 8
  %49 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 10
  store i8* null, i8** %49, align 8
  %50 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 11
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 12
  store i32* null, i32** %51, align 8
  %52 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 13
  store i32 0, i32* %52, align 8
  %53 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 14
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 15
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 16
  store i64 0, i64* %55, align 8
  %56 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 17
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 18
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 19
  %59 = load i32, i32* @COMMAND_TIMEOUT_MSEC, align 4
  store i32 %59, i32* %58, align 8
  %60 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 20
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 21
  %62 = load i32, i32* @BSG_SUB_PROTOCOL_SCSI_CMD, align 4
  store i32 %62, i32* %61, align 8
  %63 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 22
  %64 = load i32, i32* @BSG_PROTOCOL_SCSI, align 4
  store i32 %64, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @SG_IO, align 4
  %67 = call i32 @ioctl(i32 %65, i32 %66, %struct.sg_io_v4* %10)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %131

70:                                               ; preds = %30
  %71 = load i64, i64* @errno, align 8
  %72 = load i64, i64* @EINVAL, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %128

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 0
  store i8 0, i8* %75, align 8
  %76 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 3
  store i32 0, i32* %78, align 8
  %79 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 4
  store i64 0, i64* %79, align 8
  %80 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 5
  store i64 0, i64* %80, align 8
  %81 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 6
  store i64 0, i64* %81, align 8
  %82 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 7
  store i8 83, i8* %82, align 8
  %83 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 8
  %84 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %85 = bitcast i32* %84 to i8*
  store i8* %85, i8** %83, align 8
  %86 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 9
  store i32 24, i32* %86, align 8
  %87 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 10
  %88 = load i8*, i8** %6, align 8
  store i8* %88, i8** %87, align 8
  %89 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 11
  %90 = load i64, i64* %7, align 8
  store i64 %90, i64* %89, align 8
  %91 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 12
  %92 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  store i32* %92, i32** %91, align 8
  %93 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 13
  store i32 128, i32* %93, align 8
  %94 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 14
  store i64 0, i64* %94, align 8
  %95 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 15
  store i64 0, i64* %95, align 8
  %96 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 16
  store i64 0, i64* %96, align 8
  %97 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 17
  store i64 0, i64* %97, align 8
  %98 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 18
  store i64 0, i64* %98, align 8
  %99 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 19
  %100 = load i32, i32* @COMMAND_TIMEOUT_MSEC, align 4
  store i32 %100, i32* %99, align 8
  %101 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 20
  %102 = load i32, i32* @SG_DXFER_FROM_DEV, align 4
  store i32 %102, i32* %101, align 4
  %103 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 21
  store i32 0, i32* %103, align 8
  %104 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 22
  store i32 0, i32* %104, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @SG_IO, align 4
  %107 = bitcast %struct.sg_io_hdr* %12 to %struct.sg_io_v4*
  %108 = call i32 @ioctl(i32 %105, i32 %106, %struct.sg_io_v4* %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %74
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %4, align 4
  br label %146

113:                                              ; preds = %74
  %114 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 14
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 15
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %12, i32 0, i32 16
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %121, %117, %113
  %126 = load i64, i64* @EIO, align 8
  store i64 %126, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %146

127:                                              ; preds = %121
  br label %130

128:                                              ; preds = %70
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %4, align 4
  br label %146

130:                                              ; preds = %127
  br label %131

131:                                              ; preds = %130, %30
  %132 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 17
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 18
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %10, i32 0, i32 16
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %139, %135, %131
  %144 = load i64, i64* @EIO, align 8
  store i64 %144, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %146

145:                                              ; preds = %139
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %143, %128, %125, %111
  %147 = load i32, i32* %4, align 4
  ret i32 %147
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
