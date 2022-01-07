; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_dataset_create.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_dataset_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ZIO_CRYPT_FUNCTIONS = common dso_local global i32 0, align 4
@ZIO_CRYPT_AES_128_CCM = common dso_local global i32 0, align 4
@ZIO_CRYPT_ON = common dso_local global i32 0, align 4
@ZFS_PROP_ENCRYPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"wkeydata\00", align 1
@ztest_wkeydata = common dso_local global i64 0, align 8
@WRAPPING_KEY_LEN = common dso_local global i32 0, align 4
@ZFS_PROP_KEYFORMAT = common dso_local global i32 0, align 4
@ZFS_KEYFORMAT_RAW = common dso_local global i64 0, align 8
@ZFS_PROP_KEYLOCATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@ZFS_PROP_PBKDF2_SALT = common dso_local global i32 0, align 4
@ZFS_PROP_PBKDF2_ITERS = common dso_local global i32 0, align 4
@DCP_CMD_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"cycle\00", align 1
@DMU_OST_OTHER = common dso_local global i32 0, align 4
@ztest_objset_create_cb = common dso_local global i32 0, align 4
@ztest_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Setting dataset %s to sync always\0A\00", align 1
@ZFS_PROP_SYNC = common dso_local global i32 0, align 4
@ZFS_SYNC_ALWAYS = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ztest_dataset_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ztest_dataset_create(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %6, align 8
  %9 = call i32 @ztest_random(i32 2)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %64

12:                                               ; preds = %1
  %13 = call i32* (...) @fnvlist_alloc()
  store i32* %13, i32** %7, align 8
  %14 = call i32* (...) @fnvlist_alloc()
  store i32* %14, i32** %8, align 8
  %15 = load i32, i32* @ZIO_CRYPT_FUNCTIONS, align 4
  %16 = call i32 @ztest_random(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ZIO_CRYPT_AES_128_CCM, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @ZIO_CRYPT_ON, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %12
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @ZFS_PROP_ENCRYPTION, align 4
  %25 = call i32 @zfs_prop_to_name(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = call i32 @fnvlist_add_uint64(i32* %23, i32 %25, i64 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* @ztest_wkeydata, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load i32, i32* @WRAPPING_KEY_LEN, align 4
  %33 = call i32 @fnvlist_add_uint8_array(i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %31, i32 %32)
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @ZFS_PROP_KEYFORMAT, align 4
  %36 = call i32 @zfs_prop_to_name(i32 %35)
  %37 = load i64, i64* @ZFS_KEYFORMAT_RAW, align 8
  %38 = call i32 @fnvlist_add_uint64(i32* %34, i32 %36, i64 %37)
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %41 = call i32 @zfs_prop_to_name(i32 %40)
  %42 = call i32 @fnvlist_add_string(i32* %39, i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @ZFS_PROP_PBKDF2_SALT, align 4
  %45 = call i32 @zfs_prop_to_name(i32 %44)
  %46 = call i32 @fnvlist_add_uint64(i32* %43, i32 %45, i64 0)
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* @ZFS_PROP_PBKDF2_ITERS, align 4
  %49 = call i32 @zfs_prop_to_name(i32 %48)
  %50 = call i32 @fnvlist_add_uint64(i32* %47, i32 %49, i64 0)
  %51 = load i32, i32* @DCP_CMD_NONE, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @dsl_crypto_params_create_nvlist(i32 %51, i32* %52, i32* %53, i32** %6)
  %55 = call i32 @VERIFY0(i32 %54)
  %56 = call i32 @gcm_impl_set(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @VERIFY0(i32 %56)
  %58 = call i32 @aes_impl_set(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %59 = call i32 @VERIFY0(i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @fnvlist_free(i32* %60)
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @fnvlist_free(i32* %62)
  br label %64

64:                                               ; preds = %22, %1
  %65 = load i8*, i8** %3, align 8
  %66 = load i32, i32* @DMU_OST_OTHER, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @ztest_objset_create_cb, align 4
  %69 = call i32 @dmu_objset_create(i8* %65, i32 %66, i32 0, i32* %67, i32 %68, i32* null)
  store i32 %69, i32* %4, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @dsl_crypto_params_free(i32* %70, i32 %75)
  %77 = call i32 @ztest_random(i32 100)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %64
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 80
  br i1 %82, label %83, label %85

83:                                               ; preds = %80, %64
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %97

85:                                               ; preds = %80
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ztest_opts, i32 0, i32 0), align 4
  %87 = icmp sge i32 %86, 5
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i8*, i8** %3, align 8
  %90 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i8*, i8** %3, align 8
  %93 = load i32, i32* @ZFS_PROP_SYNC, align 4
  %94 = load i32, i32* @ZFS_SYNC_ALWAYS, align 4
  %95 = load i32, i32* @B_FALSE, align 4
  %96 = call i32 @ztest_dsl_prop_set_uint64(i8* %92, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %91, %83
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @ztest_random(i32) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @fnvlist_add_uint8_array(i32*, i8*, i32*, i32) #1

declare dso_local i32 @fnvlist_add_string(i32*, i32, i8*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_crypto_params_create_nvlist(i32, i32*, i32*, i32**) #1

declare dso_local i32 @gcm_impl_set(i8*) #1

declare dso_local i32 @aes_impl_set(i8*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32 @dmu_objset_create(i8*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @dsl_crypto_params_free(i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @ztest_dsl_prop_set_uint64(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
