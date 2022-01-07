; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_crypto_key_sync_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_crypto_key_sync_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DSL_CRYPTO_KEY_CRYPTO_SUITE = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_ROOT_DDOBJ = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_GUID = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_IV = common dso_local global i32 0, align 4
@WRAPPING_IV_LEN = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_MAC = common dso_local global i32 0, align 4
@WRAPPING_MAC_LEN = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_MASTER_KEY = common dso_local global i32 0, align 4
@MASTER_KEY_MAX_LEN = common dso_local global i32 0, align 4
@DSL_CRYPTO_KEY_HMAC_KEY = common dso_local global i32 0, align 4
@SHA512_HMAC_KEYLEN = common dso_local global i32 0, align 4
@ZFS_PROP_KEYFORMAT = common dso_local global i32 0, align 4
@ZFS_PROP_PBKDF2_SALT = common dso_local global i32 0, align 4
@ZFS_PROP_PBKDF2_ITERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32*)* @dsl_crypto_key_sync_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_crypto_key_sync_impl(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7, i32* %8, i32 %9, i32 %10, i32 %11, i32* %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store i32* %0, i32** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32* %5, i32** %19, align 8
  store i32* %6, i32** %20, align 8
  store i32* %7, i32** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32* %12, i32** %26, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @DSL_CRYPTO_KEY_CRYPTO_SUITE, align 4
  %30 = load i32*, i32** %26, align 8
  %31 = call i32 @zap_update(i32* %27, i32 %28, i32 %29, i32 8, i32 1, i32* %16, i32* %30)
  %32 = call i32 @VERIFY0(i32 %31)
  %33 = load i32*, i32** %14, align 8
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @DSL_CRYPTO_KEY_ROOT_DDOBJ, align 4
  %36 = load i32*, i32** %26, align 8
  %37 = call i32 @zap_update(i32* %33, i32 %34, i32 %35, i32 8, i32 1, i32* %17, i32* %36)
  %38 = call i32 @VERIFY0(i32 %37)
  %39 = load i32*, i32** %14, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @DSL_CRYPTO_KEY_GUID, align 4
  %42 = load i32*, i32** %26, align 8
  %43 = call i32 @zap_update(i32* %39, i32 %40, i32 %41, i32 8, i32 1, i32* %18, i32* %42)
  %44 = call i32 @VERIFY0(i32 %43)
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @DSL_CRYPTO_KEY_IV, align 4
  %48 = load i32, i32* @WRAPPING_IV_LEN, align 4
  %49 = load i32*, i32** %19, align 8
  %50 = load i32*, i32** %26, align 8
  %51 = call i32 @zap_update(i32* %45, i32 %46, i32 %47, i32 1, i32 %48, i32* %49, i32* %50)
  %52 = call i32 @VERIFY0(i32 %51)
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @DSL_CRYPTO_KEY_MAC, align 4
  %56 = load i32, i32* @WRAPPING_MAC_LEN, align 4
  %57 = load i32*, i32** %20, align 8
  %58 = load i32*, i32** %26, align 8
  %59 = call i32 @zap_update(i32* %53, i32 %54, i32 %55, i32 1, i32 %56, i32* %57, i32* %58)
  %60 = call i32 @VERIFY0(i32 %59)
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @DSL_CRYPTO_KEY_MASTER_KEY, align 4
  %64 = load i32, i32* @MASTER_KEY_MAX_LEN, align 4
  %65 = load i32*, i32** %21, align 8
  %66 = load i32*, i32** %26, align 8
  %67 = call i32 @zap_update(i32* %61, i32 %62, i32 %63, i32 1, i32 %64, i32* %65, i32* %66)
  %68 = call i32 @VERIFY0(i32 %67)
  %69 = load i32*, i32** %14, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @DSL_CRYPTO_KEY_HMAC_KEY, align 4
  %72 = load i32, i32* @SHA512_HMAC_KEYLEN, align 4
  %73 = load i32*, i32** %22, align 8
  %74 = load i32*, i32** %26, align 8
  %75 = call i32 @zap_update(i32* %69, i32 %70, i32 %71, i32 1, i32 %72, i32* %73, i32* %74)
  %76 = call i32 @VERIFY0(i32 %75)
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @ZFS_PROP_KEYFORMAT, align 4
  %80 = call i32 @zfs_prop_to_name(i32 %79)
  %81 = load i32*, i32** %26, align 8
  %82 = call i32 @zap_update(i32* %77, i32 %78, i32 %80, i32 8, i32 1, i32* %23, i32* %81)
  %83 = call i32 @VERIFY0(i32 %82)
  %84 = load i32*, i32** %14, align 8
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* @ZFS_PROP_PBKDF2_SALT, align 4
  %87 = call i32 @zfs_prop_to_name(i32 %86)
  %88 = load i32*, i32** %26, align 8
  %89 = call i32 @zap_update(i32* %84, i32 %85, i32 %87, i32 8, i32 1, i32* %24, i32* %88)
  %90 = call i32 @VERIFY0(i32 %89)
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @ZFS_PROP_PBKDF2_ITERS, align 4
  %94 = call i32 @zfs_prop_to_name(i32 %93)
  %95 = load i32*, i32** %26, align 8
  %96 = call i32 @zap_update(i32* %91, i32 %92, i32 %94, i32 8, i32 1, i32* %25, i32* %95)
  %97 = call i32 @VERIFY0(i32 %96)
  ret void
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_update(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
