; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_derive_key.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_derive_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WRAPPING_KEY_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid hex key provided.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to generate key from passphrase.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i64, i32, i32**)* @derive_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @derive_key(i32* %0, i32 %1, i32 %2, i32* %3, i64 %4, i32 %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32** %6, i32*** %15, align 8
  %18 = load i32**, i32*** %15, align 8
  store i32* null, i32** %18, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* @WRAPPING_KEY_LEN, align 4
  %21 = call i32* @zfs_alloc(i32* %19, i32 %20)
  store i32* %21, i32** %17, align 8
  %22 = load i32*, i32** %17, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %8, align 4
  br label %79

26:                                               ; preds = %7
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %69 [
    i32 128, label %28
    i32 130, label %33
    i32 129, label %48
  ]

28:                                               ; preds = %26
  %29 = load i32*, i32** %12, align 8
  %30 = load i32*, i32** %17, align 8
  %31 = load i32, i32* @WRAPPING_KEY_LEN, align 4
  %32 = call i32 @bcopy(i32* %29, i32* %30, i32 %31)
  br label %71

33:                                               ; preds = %26
  %34 = load i32*, i32** %12, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = load i32, i32* @WRAPPING_KEY_LEN, align 4
  %37 = mul nsw i32 %36, 2
  %38 = load i32*, i32** %17, align 8
  %39 = call i32 @hex_key_to_raw(i8* %35, i32 %37, i32* %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* @TEXT_DOMAIN, align 4
  %45 = call i32 @dgettext(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @zfs_error_aux(i32* %43, i32 %45)
  br label %74

47:                                               ; preds = %33
  br label %71

48:                                               ; preds = %26
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @LE_64(i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = bitcast i32* %51 to i8*
  %53 = load i32*, i32** %12, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = call i32 @strlen(i8* %54)
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @WRAPPING_KEY_LEN, align 4
  %58 = load i32*, i32** %17, align 8
  %59 = call i32 @PKCS5_PBKDF2_HMAC_SHA1(i8* %52, i32 %55, i32* %14, i32 4, i32 %56, i32 %57, i32* %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %68

62:                                               ; preds = %48
  %63 = load i32, i32* @EIO, align 4
  store i32 %63, i32* %16, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* @TEXT_DOMAIN, align 4
  %66 = call i32 @dgettext(i32 %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %67 = call i32 @zfs_error_aux(i32* %64, i32 %66)
  br label %74

68:                                               ; preds = %48
  br label %71

69:                                               ; preds = %26
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %16, align 4
  br label %74

71:                                               ; preds = %68, %47, %28
  %72 = load i32*, i32** %17, align 8
  %73 = load i32**, i32*** %15, align 8
  store i32* %72, i32** %73, align 8
  store i32 0, i32* %8, align 4
  br label %79

74:                                               ; preds = %69, %62, %42
  %75 = load i32*, i32** %17, align 8
  %76 = call i32 @free(i32* %75)
  %77 = load i32**, i32*** %15, align 8
  store i32* null, i32** %77, align 8
  %78 = load i32, i32* %16, align 4
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %74, %71, %24
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i32* @zfs_alloc(i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @hex_key_to_raw(i8*, i32, i32*) #1

declare dso_local i32 @zfs_error_aux(i32*, i32) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32 @LE_64(i32) #1

declare dso_local i32 @PKCS5_PBKDF2_HMAC_SHA1(i8*, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
