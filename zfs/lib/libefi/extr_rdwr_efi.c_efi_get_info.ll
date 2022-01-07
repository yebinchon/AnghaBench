; ModuleID = '/home/carl/AnghaBench/zfs/lib/libefi/extr_rdwr_efi.c_efi_get_info.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libefi/extr_rdwr_efi.c_efi_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dk_cinfo = type { i32, i8*, i64, i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"/proc/self/fd/%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/dev/sd\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@DKC_SCSI_CCS = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"/dev/%[a-zA-Z]%hu\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"/dev/hd\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"hd\00", align 1
@DKC_DIRECT = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"/dev/md\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"pseudo\00", align 1
@DKC_MD = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"/dev/md%[0-9]p%hu\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"/dev/vd\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"vd\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"/dev/xvd\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"xvd\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"/dev/zd\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"zd\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"/dev/zd%[0-9]p%hu\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"/dev/dm-\00", align 1
@DKC_VBD = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"dm-\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"/dev/dm-%[0-9]p%hu\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"/dev/ram\00", align 1
@DKC_PCMCIA_MEM = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [4 x i8] c"ram\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"/dev/ram%[0-9]p%hu\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"/dev/loop\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"/dev/loop%[0-9]p%hu\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"/dev/nvme\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"nvme\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"/dev/nvme%[0-9]\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"/dev/nvme%*[0-9]n%[0-9]p%hu\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@DKC_UNKNOWN = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@efi_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [22 x i8] c"DKIOCINFO errno 0x%x\0A\00", align 1
@VT_EIO = common dso_local global i32 0, align 4
@VT_EINVAL = common dso_local global i32 0, align 4
@VT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dk_cinfo*)* @efi_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_get_info(i32 %0, %struct.dk_cinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dk_cinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.dk_cinfo* %1, %struct.dk_cinfo** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %11 = call i32 @memset(%struct.dk_cinfo* %10, i32 0, i32 32)
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = call i8* @calloc(i32 1, i32 %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %296

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @realpath(i8* %21, i32* null)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @free(i8* %23)
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %296

28:                                               ; preds = %17
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @strncmp(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %34 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @strcpy(i64 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i8*, i8** @DKC_SCSI_CCS, align 8
  %38 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %39 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %42 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %45 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %44, i32 0, i32 0
  %46 = call i32 (i8*, i8*, i64, ...) @sscanf(i8* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %43, i32* %45)
  store i32 %46, i32* %8, align 4
  br label %287

47:                                               ; preds = %28
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @strncmp(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %53 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @strcpy(i64 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i8*, i8** @DKC_DIRECT, align 8
  %57 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %58 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %61 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %64 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %63, i32 0, i32 0
  %65 = call i32 (i8*, i8*, i64, ...) @sscanf(i8* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %62, i32* %64)
  store i32 %65, i32* %8, align 4
  br label %286

66:                                               ; preds = %47
  %67 = load i8*, i8** %7, align 8
  %68 = call i64 @strncmp(i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %72 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @strcpy(i64 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %75 = load i8*, i8** @DKC_MD, align 8
  %76 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %77 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %79 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @strcpy(i64 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %84 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 2
  %87 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %88 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %87, i32 0, i32 0
  %89 = call i32 (i8*, i8*, i64, ...) @sscanf(i8* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i64 %86, i32* %88)
  store i32 %89, i32* %8, align 4
  br label %285

90:                                               ; preds = %66
  %91 = load i8*, i8** %7, align 8
  %92 = call i64 @strncmp(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 7)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %96 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @strcpy(i64 %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %99 = load i8*, i8** @DKC_MD, align 8
  %100 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %101 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %104 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %107 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %106, i32 0, i32 0
  %108 = call i32 (i8*, i8*, i64, ...) @sscanf(i8* %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %105, i32* %107)
  store i32 %108, i32* %8, align 4
  br label %284

109:                                              ; preds = %90
  %110 = load i8*, i8** %7, align 8
  %111 = call i64 @strncmp(i8* %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 8)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %109
  %114 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %115 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @strcpy(i64 %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %118 = load i8*, i8** @DKC_MD, align 8
  %119 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %120 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %123 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %126 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %125, i32 0, i32 0
  %127 = call i32 (i8*, i8*, i64, ...) @sscanf(i8* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %124, i32* %126)
  store i32 %127, i32* %8, align 4
  br label %283

128:                                              ; preds = %109
  %129 = load i8*, i8** %7, align 8
  %130 = call i64 @strncmp(i8* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 7)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %128
  %133 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %134 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @strcpy(i64 %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %137 = load i8*, i8** @DKC_MD, align 8
  %138 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %139 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %141 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @strcpy(i64 %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %144 = load i8*, i8** %7, align 8
  %145 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %146 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, 2
  %149 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %150 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %149, i32 0, i32 0
  %151 = call i32 (i8*, i8*, i64, ...) @sscanf(i8* %144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i64 %148, i32* %150)
  store i32 %151, i32* %8, align 4
  br label %282

152:                                              ; preds = %128
  %153 = load i8*, i8** %7, align 8
  %154 = call i64 @strncmp(i8* %153, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 8)
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %176

156:                                              ; preds = %152
  %157 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %158 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @strcpy(i64 %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %161 = load i8*, i8** @DKC_VBD, align 8
  %162 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %163 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  %164 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %165 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @strcpy(i64 %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %168 = load i8*, i8** %7, align 8
  %169 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %170 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, 3
  %173 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %174 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %173, i32 0, i32 0
  %175 = call i32 (i8*, i8*, i64, ...) @sscanf(i8* %168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i64 %172, i32* %174)
  store i32 %175, i32* %8, align 4
  br label %281

176:                                              ; preds = %152
  %177 = load i8*, i8** %7, align 8
  %178 = call i64 @strncmp(i8* %177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 8)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %200

180:                                              ; preds = %176
  %181 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %182 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @strcpy(i64 %183, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %185 = load i8*, i8** @DKC_PCMCIA_MEM, align 8
  %186 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %187 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %186, i32 0, i32 1
  store i8* %185, i8** %187, align 8
  %188 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %189 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @strcpy(i64 %190, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %192 = load i8*, i8** %7, align 8
  %193 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %194 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %195, 3
  %197 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %198 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %197, i32 0, i32 0
  %199 = call i32 (i8*, i8*, i64, ...) @sscanf(i8* %192, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i64 %196, i32* %198)
  store i32 %199, i32* %8, align 4
  br label %280

200:                                              ; preds = %176
  %201 = load i8*, i8** %7, align 8
  %202 = call i64 @strncmp(i8* %201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32 9)
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %224

204:                                              ; preds = %200
  %205 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %206 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @strcpy(i64 %207, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %209 = load i8*, i8** @DKC_VBD, align 8
  %210 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %211 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %210, i32 0, i32 1
  store i8* %209, i8** %211, align 8
  %212 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %213 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @strcpy(i64 %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %216 = load i8*, i8** %7, align 8
  %217 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %218 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, 4
  %221 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %222 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %221, i32 0, i32 0
  %223 = call i32 (i8*, i8*, i64, ...) @sscanf(i8* %216, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i64 %220, i32* %222)
  store i32 %223, i32* %8, align 4
  br label %279

224:                                              ; preds = %200
  %225 = load i8*, i8** %7, align 8
  %226 = call i64 @strncmp(i8* %225, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i32 9)
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %266

228:                                              ; preds = %224
  %229 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %230 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @strcpy(i64 %231, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %233 = load i8*, i8** @DKC_SCSI_CCS, align 8
  %234 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %235 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %234, i32 0, i32 1
  store i8* %233, i8** %235, align 8
  %236 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %237 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @strcpy(i64 %238, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %240 = load i8*, i8** %7, align 8
  %241 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %242 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %243, 4
  %245 = call i32 (i8*, i8*, i64, ...) @sscanf(i8* %240, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i64 %244)
  %246 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %247 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = call i64 @strlen(i64 %248)
  store i64 %249, i64* %9, align 8
  %250 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %251 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* %9, align 8
  %254 = add i64 %252, %253
  %255 = call i32 @strcpy(i64 %254, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  %256 = load i8*, i8** %7, align 8
  %257 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %258 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %257, i32 0, i32 3
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* %9, align 8
  %261 = add i64 %259, %260
  %262 = add i64 %261, 1
  %263 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %264 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %263, i32 0, i32 0
  %265 = call i32 (i8*, i8*, i64, ...) @sscanf(i8* %256, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i64 %262, i32* %264)
  store i32 %265, i32* %8, align 4
  br label %278

266:                                              ; preds = %224
  %267 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %268 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = call i32 @strcpy(i64 %269, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0))
  %271 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %272 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @strcpy(i64 %273, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0))
  %275 = load i8*, i8** @DKC_UNKNOWN, align 8
  %276 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %277 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %276, i32 0, i32 1
  store i8* %275, i8** %277, align 8
  br label %278

278:                                              ; preds = %266, %228
  br label %279

279:                                              ; preds = %278, %204
  br label %280

280:                                              ; preds = %279, %180
  br label %281

281:                                              ; preds = %280, %156
  br label %282

282:                                              ; preds = %281, %132
  br label %283

283:                                              ; preds = %282, %113
  br label %284

284:                                              ; preds = %283, %94
  br label %285

285:                                              ; preds = %284, %70
  br label %286

286:                                              ; preds = %285, %51
  br label %287

287:                                              ; preds = %286, %32
  %288 = load i32, i32* %8, align 4
  switch i32 %288, label %293 [
    i32 0, label %289
    i32 1, label %290
  ]

289:                                              ; preds = %287
  store i32 129, i32* @errno, align 4
  br label %296

290:                                              ; preds = %287
  %291 = load %struct.dk_cinfo*, %struct.dk_cinfo** %5, align 8
  %292 = getelementptr inbounds %struct.dk_cinfo, %struct.dk_cinfo* %291, i32 0, i32 0
  store i32 0, i32* %292, align 8
  br label %293

293:                                              ; preds = %290, %287
  %294 = load i8*, i8** %7, align 8
  %295 = call i32 @free(i8* %294)
  store i32 0, i32* %3, align 4
  br label %311

296:                                              ; preds = %289, %27, %16
  %297 = load i64, i64* @efi_debug, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %296
  %300 = load i32, i32* @stderr, align 4
  %301 = load i32, i32* @errno, align 4
  %302 = call i32 @fprintf(i32 %300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0), i32 %301)
  br label %303

303:                                              ; preds = %299, %296
  %304 = load i32, i32* @errno, align 4
  switch i32 %304, label %309 [
    i32 128, label %305
    i32 129, label %307
  ]

305:                                              ; preds = %303
  %306 = load i32, i32* @VT_EIO, align 4
  store i32 %306, i32* %3, align 4
  br label %311

307:                                              ; preds = %303
  %308 = load i32, i32* @VT_EINVAL, align 4
  store i32 %308, i32* %3, align 4
  br label %311

309:                                              ; preds = %303
  %310 = load i32, i32* @VT_ERROR, align 4
  store i32 %310, i32* %3, align 4
  br label %311

311:                                              ; preds = %309, %307, %305, %293
  %312 = load i32, i32* %3, align 4
  ret i32 %312
}

declare dso_local i32 @memset(%struct.dk_cinfo*, i32, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @realpath(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i64, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64, ...) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
