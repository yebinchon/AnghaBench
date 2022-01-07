; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_crypt_do_indirect_mac_checksum_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_crypt_do_indirect_mac_checksum_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPA_BLKPTRSHIFT = common dso_local global i32 0, align 4
@SHA512_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SHA512 = common dso_local global i32 0, align 4
@ZIO_DATA_MAC_LEN = common dso_local global i32 0, align 4
@ECKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32, i32, i64, i32*)* @zio_crypt_do_indirect_mac_checksum_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zio_crypt_do_indirect_mac_checksum_impl(i64 %0, i8* %1, i32 %2, i32 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @SPA_BLKPTRSHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %18, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %19, align 8
  %28 = load i32, i32* @SHA512, align 4
  %29 = call i32 @SHA2Init(i32 %28, i32* %17)
  store i32 0, i32* %15, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %14, align 8
  br label %32

32:                                               ; preds = %41, %6
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = load i64, i64* %12, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @zio_crypt_bp_do_indrect_checksum_updates(i32* %17, i32 %37, i64 %38, i32* %39)
  br label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %15, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %15, align 4
  %44 = load i32*, i32** %14, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %14, align 8
  br label %32

46:                                               ; preds = %32
  %47 = call i32 @SHA2Final(i32* %27, i32* %17)
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* @ZIO_DATA_MAC_LEN, align 4
  %53 = call i32 @bcopy(i32* %27, i32* %51, i32 %52)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %63

54:                                               ; preds = %46
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* @ZIO_DATA_MAC_LEN, align 4
  %57 = call i64 @bcmp(i32* %27, i32* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @ECKSUM, align 4
  %61 = call i32 @SET_ERROR(i32 %60)
  store i32 %61, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %63

62:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %63

63:                                               ; preds = %62, %59, %50
  %64 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SHA2Init(i32, i32*) #2

declare dso_local i32 @zio_crypt_bp_do_indrect_checksum_updates(i32*, i32, i64, i32*) #2

declare dso_local i32 @SHA2Final(i32*, i32*) #2

declare dso_local i32 @bcopy(i32*, i32*, i32) #2

declare dso_local i64 @bcmp(i32*, i32*, i32) #2

declare dso_local i32 @SET_ERROR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
