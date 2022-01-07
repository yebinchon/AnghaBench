; ModuleID = '/home/carl/AnghaBench/zfs/lib/libefi/extr_rdwr_efi.c_check_label.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libefi/extr_rdwr_efi.c_check_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i32 }

@DKIOCGETEFI = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@VT_EIO = common dso_local global i32 0, align 4
@VT_ERROR = common dso_local global i32 0, align 4
@EFI_SIGNATURE = common dso_local global i32 0, align 4
@efi_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Bad EFI signature: 0x%llx != 0x%llx\0A\00", align 1
@VT_EINVAL = common dso_local global i32 0, align 4
@EFI_MIN_LABEL_SIZE = common dso_local global i32 0, align 4
@EFI_LABEL_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Invalid EFI HeaderSize %llu.  Assuming %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Bad EFI CRC: 0x%x != 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*)* @check_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_label(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DKIOCGETEFI, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = call i32 @efi_ioctl(i32 %9, i32 %10, %struct.TYPE_6__* %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @errno, align 4
  switch i32 %15, label %18 [
    i32 128, label %16
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @VT_EIO, align 4
  store i32 %17, i32* %3, align 4
  br label %100

18:                                               ; preds = %14
  %19 = load i32, i32* @VT_ERROR, align 4
  store i32 %19, i32* %3, align 4
  br label %100

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %6, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @EFI_SIGNATURE, align 4
  %28 = call i64 @LE_64(i32 %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %20
  %31 = load i64, i64* @efi_debug, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* @stderr, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @EFI_SIGNATURE, align 4
  %40 = call i64 @LE_64(i32 %39)
  %41 = trunc i64 %40 to i32
  %42 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %33, %30
  %44 = load i32, i32* @VT_EINVAL, align 4
  store i32 %44, i32* %3, align 4
  br label %100

45:                                               ; preds = %20
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 0, i32* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @LE_32(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @EFI_MIN_LABEL_SIZE, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @EFI_LABEL_SIZE, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58, %45
  %63 = load i64, i64* @efi_debug, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* @stderr, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @EFI_MIN_LABEL_SIZE, align 4
  %69 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %62
  br label %71

71:                                               ; preds = %70, %58
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = bitcast %struct.TYPE_5__* %79 to i8*
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @efi_crc32(i8* %80, i32 %81)
  %83 = call i32 @LE_32(i32 %82)
  %84 = icmp ne i32 %78, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %77, %71
  %86 = load i64, i64* @efi_debug, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i32, i32* @stderr, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = bitcast %struct.TYPE_5__* %91 to i8*
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @efi_crc32(i8* %92, i32 %93)
  %95 = call i32 @LE_32(i32 %94)
  %96 = call i32 @fprintf(i32 %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %95)
  br label %97

97:                                               ; preds = %88, %85
  %98 = load i32, i32* @VT_EINVAL, align 4
  store i32 %98, i32* %3, align 4
  br label %100

99:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %97, %43, %18, %16
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @efi_ioctl(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @LE_64(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @LE_32(i32) #1

declare dso_local i32 @efi_crc32(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
