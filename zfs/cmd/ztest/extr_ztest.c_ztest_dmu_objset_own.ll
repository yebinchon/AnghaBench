; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_dmu_objset_own.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_dmu_objset_own.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"wkeydata\00", align 1
@ztest_wkeydata = common dso_local global i64 0, align 8
@WRAPPING_KEY_LEN = common dso_local global i32 0, align 4
@DCP_CMD_NONE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i64, i8*, i32**)* @ztest_dmu_objset_own to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ztest_dmu_objset_own(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32** %5, i32*** %13, align 8
  store i8* null, i8** %15, align 8
  %21 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @strcpy(i8* %24, i8* %25)
  %27 = call i8* @strchr(i8* %24, i8 signext 64)
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i8*, i8** %15, align 8
  store i8 0, i8* %31, align 1
  br label %32

32:                                               ; preds = %30, %6
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i32**, i32*** %13, align 8
  %39 = call i32 @dmu_objset_own(i8* %33, i32 %34, i64 %35, i64 %36, i8* %37, i32** %38)
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %77, %32
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @EACCES, align 4
  %46 = icmp eq i32 %44, %45
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i1 [ false, %40 ], [ %46, %43 ]
  br i1 %48, label %49, label %93

49:                                               ; preds = %47
  %50 = call i32* (...) @fnvlist_alloc()
  store i32* %50, i32** %19, align 8
  %51 = load i32*, i32** %19, align 8
  %52 = load i64, i64* @ztest_wkeydata, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = load i32, i32* @WRAPPING_KEY_LEN, align 4
  %55 = call i32 @fnvlist_add_uint8_array(i32* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %53, i32 %54)
  %56 = load i32, i32* @DCP_CMD_NONE, align 4
  %57 = load i32*, i32** %19, align 8
  %58 = call i32 @dsl_crypto_params_create_nvlist(i32 %56, i32* null, i32* %57, i32** %18)
  %59 = call i32 @VERIFY0(i32 %58)
  %60 = load i32*, i32** %18, align 8
  %61 = load i32, i32* @B_FALSE, align 4
  %62 = call i32 @spa_keystore_load_wkey(i8* %24, i32* %60, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32*, i32** %18, align 8
  %64 = load i32, i32* @B_FALSE, align 4
  %65 = call i32 @dsl_crypto_params_free(i32* %63, i32 %64)
  %66 = load i32*, i32** %19, align 8
  %67 = call i32 @fnvlist_free(i32* %66)
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @EINVAL, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %49
  %72 = call i8* @strrchr(i8* %24, i8 signext 47)
  store i8* %72, i8** %15, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %95

77:                                               ; preds = %71
  %78 = load i8*, i8** %15, align 8
  store i8 0, i8* %78, align 1
  %79 = load i32, i32* @EACCES, align 4
  store i32 %79, i32* %14, align 4
  br label %40

80:                                               ; preds = %49
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %93

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = load i32**, i32*** %13, align 8
  %92 = call i32 @dmu_objset_own(i8* %86, i32 %87, i64 %88, i64 %89, i8* %90, i32** %91)
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %85, %83, %47
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %95

95:                                               ; preds = %93, %75
  %96 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @dmu_objset_own(i8*, i32, i64, i64, i8*, i32**) #2

declare dso_local i32* @fnvlist_alloc(...) #2

declare dso_local i32 @fnvlist_add_uint8_array(i32*, i8*, i32*, i32) #2

declare dso_local i32 @VERIFY0(i32) #2

declare dso_local i32 @dsl_crypto_params_create_nvlist(i32, i32*, i32*, i32**) #2

declare dso_local i32 @spa_keystore_load_wkey(i8*, i32*, i32) #2

declare dso_local i32 @dsl_crypto_params_free(i32*, i32) #2

declare dso_local i32 @fnvlist_free(i32*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
