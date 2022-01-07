; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fsctl.c_NtfsHasFileSystem.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fsctl.c_NtfsHasFileSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64*, i64*, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"NtfsHasFileSystem() called\0A\00", align 1
@IOCTL_DISK_GET_DRIVE_GEOMETRY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"NtfsDeviceIoControl() failed (Status %lx)\0A\00", align 1
@FixedMedia = common dso_local global i64 0, align 8
@IOCTL_DISK_GET_PARTITION_INFO = common dso_local global i32 0, align 4
@PARTITION_IFS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid partition type\0A\00", align 1
@STATUS_UNRECOGNIZED_VOLUME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"BytesPerSector: %lu\0A\00", align 1
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"NTFS    \00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed with NTFS-identifier: [%.8s]\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed in field Unused0: [%.7s]\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Failed in field Unused3: [%.4s]\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Cluster size failed: %hu, %hu, %hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @NtfsHasFileSystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NtfsHasFileSystem(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = call i32 @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 24, i32* %7, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @IOCTL_DISK_GET_DRIVE_GEOMETRY, align 4
  %14 = load i32, i32* @TRUE, align 4
  %15 = call i32 @NtfsDeviceIoControl(i32 %12, i32 %13, i32* null, i32 0, %struct.TYPE_10__* %5, i32* %7, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @NT_SUCCESS(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %10, align 4
  %21 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %2, align 4
  br label %186

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FixedMedia, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  store i32 24, i32* %7, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @IOCTL_DISK_GET_PARTITION_INFO, align 4
  %31 = load i32, i32* @TRUE, align 4
  %32 = call i32 @NtfsDeviceIoControl(i32 %29, i32 %30, i32* null, i32 0, %struct.TYPE_10__* %4, i32* %7, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @NT_SUCCESS(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %2, align 4
  br label %186

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PARTITION_IFS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @STATUS_UNRECOGNIZED_VOLUME, align 4
  store i32 %47, i32* %2, align 4
  br label %186

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %23
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @NonPagedPool, align 4
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @TAG_NTFS, align 4
  %57 = call %struct.TYPE_9__* @ExAllocatePoolWithTag(i32 %53, i32 %55, i32 %56)
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %9, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %59 = icmp eq %struct.TYPE_9__* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %61, i32* %2, align 4
  br label %186

62:                                               ; preds = %49
  %63 = load i32, i32* %3, align 4
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %67 = ptrtoint %struct.TYPE_9__* %66 to i32
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i32 @NtfsReadSectors(i32 %63, i32 0, i32 1, i32 %65, i32 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @NT_SUCCESS(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %62
  br label %182

74:                                               ; preds = %62
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @RtlCompareMemory(i32 %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %79 = icmp ne i32 %78, 8
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @STATUS_UNRECOGNIZED_VOLUME, align 4
  store i32 %85, i32* %10, align 4
  br label %182

86:                                               ; preds = %74
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %108, %86
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 7
  br i1 %89, label %90, label %111

90:                                               ; preds = %87
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %90
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64* %104)
  %106 = load i32, i32* @STATUS_UNRECOGNIZED_VOLUME, align 4
  store i32 %106, i32* %10, align 4
  br label %182

107:                                              ; preds = %90
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %87

111:                                              ; preds = %87
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %133, %111
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 4
  br i1 %114, label %115, label %136

115:                                              ; preds = %112
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %115
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i64* %129)
  %131 = load i32, i32* @STATUS_UNRECOGNIZED_VOLUME, align 4
  store i32 %131, i32* %10, align 4
  br label %182

132:                                              ; preds = %115
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %112

136:                                              ; preds = %112
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %140, %144
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 512
  br i1 %147, label %148, label %181

148:                                              ; preds = %136
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 1024
  br i1 %150, label %151, label %181

151:                                              ; preds = %148
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 2048
  br i1 %153, label %154, label %181

154:                                              ; preds = %151
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 4096
  br i1 %156, label %157, label %181

157:                                              ; preds = %154
  %158 = load i32, i32* %6, align 4
  %159 = icmp ne i32 %158, 8192
  br i1 %159, label %160, label %181

160:                                              ; preds = %157
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 16384
  br i1 %162, label %163, label %181

163:                                              ; preds = %160
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 32768
  br i1 %165, label %166, label %181

166:                                              ; preds = %163
  %167 = load i32, i32* %6, align 4
  %168 = icmp ne i32 %167, 65536
  br i1 %168, label %169, label %181

169:                                              ; preds = %166
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %6, align 4
  %179 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %173, i32 %177, i32 %178)
  %180 = load i32, i32* @STATUS_UNRECOGNIZED_VOLUME, align 4
  store i32 %180, i32* %10, align 4
  br label %182

181:                                              ; preds = %166, %163, %160, %157, %154, %151, %148, %136
  br label %182

182:                                              ; preds = %181, %169, %125, %100, %80, %73
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %184 = call i32 @ExFreePool(%struct.TYPE_9__* %183)
  %185 = load i32, i32* %10, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %182, %60, %45, %36, %19
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @NtfsDeviceIoControl(i32, i32, i32*, i32, %struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local %struct.TYPE_9__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @NtfsReadSectors(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RtlCompareMemory(i32, i8*, i32) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
