; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_pool_os.c_zpool_label_disk.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_pool_os.c_zpool_label_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.dk_gpt = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i64, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@EFI_MIN_RESV_SIZE = common dso_local global i64 0, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"cannot label '%s'\00", align 1
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@NEW_START_BLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@DISK_ROOT = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"cannot label '%s': unable to open device: %d\00", align 1
@errno = common dso_local global i64 0, align 8
@EZFS_OPENFAILED = common dso_local global i32 0, align 4
@EFI_NUMPAR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"cannot label '%s': unable to read disk capacity\00", align 1
@EZFS_NOCAP = common dso_local global i32 0, align 4
@MAXOFFSET_T = common dso_local global i64 0, align 8
@PARTITION_END_ALIGNMENT = common dso_local global i32 0, align 4
@V_USR = common dso_local global i32 0, align 4
@EFI_PART_NAME_LEN = common dso_local global i32 0, align 4
@V_RESERVED = common dso_local global i32 0, align 4
@BLKFLSBUF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"try using parted(8) and then provide a specific slice: %d\00", align 1
@EZFS_LABELFAILED = common dso_local global i32 0, align 4
@DISK_LABEL_WAIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"failed to detect device partitions on '%s': %d\00", align 1
@.str.6 = private unnamed_addr constant [113 x i8] c"freshly written EFI label on '%s' is damaged.  Ensure\0Athis device is not in use, and is functioning properly: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_label_disk(i32* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dk_gpt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [1024 x i8], align 16
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load i32, i32* @MAXPATHLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load i64, i64* @EFI_MIN_RESV_SIZE, align 8
  store i64 %23, i64* %13, align 8
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %25 = load i32, i32* @TEXT_DOMAIN, align 4
  %26 = call i8* @dgettext(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %24, i32 1024, i8* %26, i8* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %36 = call i64 @nvlist_lookup_nvlist(i32 %34, i32 %35, i32** %17)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @verify(i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load i32*, i32** %17, align 8
  %46 = call i64 @find_start_block(i32* %45)
  store i64 %46, i64* %15, align 8
  br label %51

47:                                               ; preds = %31
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %15, align 8
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i64, i64* %15, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %57

55:                                               ; preds = %3
  %56 = load i64, i64* @NEW_START_BLOCK, align 8
  store i64 %56, i64* %15, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = trunc i64 %20 to i32
  %59 = load i8*, i8** @DISK_ROOT, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %22, i32 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %59, i8* %60)
  %62 = load i32, i32* @O_RDWR, align 4
  %63 = load i32, i32* @O_DIRECT, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @O_EXCL, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @open(i8* %22, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %57
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* @TEXT_DOMAIN, align 4
  %72 = call i8* @dgettext(i32 %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i64, i64* @errno, align 8
  %74 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %70, i8* %72, i8* %22, i64 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* @EZFS_OPENFAILED, align 4
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %78 = call i32 @zfs_error(i32* %75, i32 %76, i8* %77)
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %242

79:                                               ; preds = %57
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @EFI_NUMPAR, align 4
  %82 = call i64 @efi_alloc_and_init(i32 %80, i32 %81, %struct.dk_gpt** %10)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %79
  %85 = load i64, i64* @errno, align 8
  %86 = load i64, i64* @ENOMEM, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @no_memory(i32* %89)
  br label %91

91:                                               ; preds = %88, %84
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @close(i32 %92)
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* @TEXT_DOMAIN, align 4
  %96 = call i8* @dgettext(i32 %95, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %97 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %94, i8* %96, i8* %22)
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* @EZFS_NOCAP, align 4
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %101 = call i32 @zfs_error(i32* %98, i32 %99, i8* %100)
  store i32 %101, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %242

102:                                              ; preds = %79
  %103 = load %struct.dk_gpt*, %struct.dk_gpt** %10, align 8
  %104 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %14, align 8
  %107 = load i64, i64* @EFI_MIN_RESV_SIZE, align 8
  %108 = load i64, i64* %14, align 8
  %109 = sub i64 %108, %107
  store i64 %109, i64* %14, align 8
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* @MAXOFFSET_T, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %102
  %114 = load i64, i64* @NEW_START_BLOCK, align 8
  store i64 %114, i64* %15, align 8
  br label %115

115:                                              ; preds = %113, %102
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* %14, align 8
  %118 = sub nsw i64 %117, %116
  store i64 %118, i64* %14, align 8
  %119 = load i64, i64* %14, align 8
  %120 = load i32, i32* @PARTITION_END_ALIGNMENT, align 4
  %121 = call i64 @P2ALIGN(i64 %119, i32 %120)
  store i64 %121, i64* %14, align 8
  %122 = load i64, i64* %15, align 8
  %123 = load %struct.dk_gpt*, %struct.dk_gpt** %10, align 8
  %124 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  store i64 %122, i64* %127, align 8
  %128 = load i64, i64* %14, align 8
  %129 = load %struct.dk_gpt*, %struct.dk_gpt** %10, align 8
  %130 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i64 %128, i64* %133, align 8
  %134 = load i32, i32* @V_USR, align 4
  %135 = load %struct.dk_gpt*, %struct.dk_gpt** %10, align 8
  %136 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  store i32 %134, i32* %139, align 8
  %140 = load %struct.dk_gpt*, %struct.dk_gpt** %10, align 8
  %141 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %140, i32 0, i32 1
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @EFI_PART_NAME_LEN, align 4
  %147 = call i32 @zpool_label_name(i32 %145, i32 %146)
  %148 = load i64, i64* %14, align 8
  %149 = load i64, i64* %15, align 8
  %150 = add nsw i64 %148, %149
  %151 = load %struct.dk_gpt*, %struct.dk_gpt** %10, align 8
  %152 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 2
  store i64 %150, i64* %155, align 8
  %156 = load i64, i64* %13, align 8
  %157 = load %struct.dk_gpt*, %struct.dk_gpt** %10, align 8
  %158 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %157, i32 0, i32 1
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i64 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  store i64 %156, i64* %161, align 8
  %162 = load i32, i32* @V_RESERVED, align 4
  %163 = load %struct.dk_gpt*, %struct.dk_gpt** %10, align 8
  %164 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %163, i32 0, i32 1
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  store i32 %162, i32* %167, align 8
  %168 = load i32, i32* %12, align 4
  %169 = load %struct.dk_gpt*, %struct.dk_gpt** %10, align 8
  %170 = call i32 @efi_write(i32 %168, %struct.dk_gpt* %169)
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @fsync(i32 %171)
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* @BLKFLSBUF, align 4
  %175 = call i32 @ioctl(i32 %173, i32 %174)
  %176 = load i32, i32* %11, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %115
  %179 = load i32, i32* %12, align 4
  %180 = call i32 @efi_rescan(i32 %179)
  store i32 %180, i32* %11, align 4
  br label %181

181:                                              ; preds = %178, %115
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %198

184:                                              ; preds = %181
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @close(i32 %185)
  %187 = load %struct.dk_gpt*, %struct.dk_gpt** %10, align 8
  %188 = call i32 @efi_free(%struct.dk_gpt* %187)
  %189 = load i32*, i32** %5, align 8
  %190 = load i32, i32* @TEXT_DOMAIN, align 4
  %191 = call i8* @dgettext(i32 %190, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  %192 = load i32, i32* %11, align 4
  %193 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %189, i8* %191, i32 %192)
  %194 = load i32*, i32** %5, align 8
  %195 = load i32, i32* @EZFS_LABELFAILED, align 4
  %196 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %197 = call i32 @zfs_error(i32* %194, i32 %195, i8* %196)
  store i32 %197, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %242

198:                                              ; preds = %181
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @close(i32 %199)
  %201 = load %struct.dk_gpt*, %struct.dk_gpt** %10, align 8
  %202 = call i32 @efi_free(%struct.dk_gpt* %201)
  %203 = trunc i64 %20 to i32
  %204 = load i8*, i8** @DISK_ROOT, align 8
  %205 = load i8*, i8** %7, align 8
  %206 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %22, i32 %203, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %204, i8* %205)
  %207 = load i32, i32* @MAXPATHLEN, align 4
  %208 = call i32 @zfs_append_partition(i8* %22, i32 %207)
  %209 = load i32, i32* @DISK_LABEL_WAIT, align 4
  %210 = call i32 @zpool_label_disk_wait(i8* %22, i32 %209)
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %198
  %214 = load i32*, i32** %5, align 8
  %215 = load i32, i32* @TEXT_DOMAIN, align 4
  %216 = call i8* @dgettext(i32 %215, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %217 = load i32, i32* %11, align 4
  %218 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %214, i8* %216, i8* %22, i32 %217)
  %219 = load i32*, i32** %5, align 8
  %220 = load i32, i32* @EZFS_LABELFAILED, align 4
  %221 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %222 = call i32 @zfs_error(i32* %219, i32 %220, i8* %221)
  store i32 %222, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %242

223:                                              ; preds = %198
  %224 = trunc i64 %20 to i32
  %225 = load i8*, i8** @DISK_ROOT, align 8
  %226 = load i8*, i8** %7, align 8
  %227 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %22, i32 %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %225, i8* %226)
  %228 = call i32 @zpool_label_disk_check(i8* %22)
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %11, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %223
  %232 = load i32*, i32** %5, align 8
  %233 = load i32, i32* @TEXT_DOMAIN, align 4
  %234 = call i8* @dgettext(i32 %233, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.6, i64 0, i64 0))
  %235 = load i32, i32* %11, align 4
  %236 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %232, i8* %234, i8* %22, i32 %235)
  %237 = load i32*, i32** %5, align 8
  %238 = load i32, i32* @EZFS_LABELFAILED, align 4
  %239 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %240 = call i32 @zfs_error(i32* %237, i32 %238, i8* %239)
  store i32 %240, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %242

241:                                              ; preds = %223
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %242

242:                                              ; preds = %241, %231, %213, %184, %91, %69
  %243 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %243)
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32, i32, i32**) #2

declare dso_local i64 @find_start_block(i32*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i64 @efi_alloc_and_init(i32, i32, %struct.dk_gpt**) #2

declare dso_local i32 @no_memory(i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @P2ALIGN(i64, i32) #2

declare dso_local i32 @zpool_label_name(i32, i32) #2

declare dso_local i32 @efi_write(i32, %struct.dk_gpt*) #2

declare dso_local i32 @fsync(i32) #2

declare dso_local i32 @ioctl(i32, i32) #2

declare dso_local i32 @efi_rescan(i32) #2

declare dso_local i32 @efi_free(%struct.dk_gpt*) #2

declare dso_local i32 @zfs_append_partition(i8*, i32) #2

declare dso_local i32 @zpool_label_disk_wait(i8*, i32) #2

declare dso_local i32 @zpool_label_disk_check(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
