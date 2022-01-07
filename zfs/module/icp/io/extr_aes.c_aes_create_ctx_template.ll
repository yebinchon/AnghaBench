; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_create_ctx_template.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_aes.c_aes_create_ctx_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@AES_ECB_MECH_INFO_TYPE = common dso_local global i64 0, align 8
@AES_CBC_MECH_INFO_TYPE = common dso_local global i64 0, align 8
@AES_CTR_MECH_INFO_TYPE = common dso_local global i64 0, align 8
@AES_CCM_MECH_INFO_TYPE = common dso_local global i64 0, align 8
@AES_GCM_MECH_INFO_TYPE = common dso_local global i64 0, align 8
@AES_GMAC_MECH_INFO_TYPE = common dso_local global i64 0, align 8
@CRYPTO_MECHANISM_INVALID = common dso_local global i32 0, align 4
@CRYPTO_HOST_MEMORY = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*, i32*, i8**, i64*, i32)* @aes_create_ctx_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_create_ctx_template(i32 %0, %struct.TYPE_3__* %1, i32* %2, i8** %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AES_ECB_MECH_INFO_TYPE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %6
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AES_CBC_MECH_INFO_TYPE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AES_CTR_MECH_INFO_TYPE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AES_CCM_MECH_INFO_TYPE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AES_GCM_MECH_INFO_TYPE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AES_GMAC_MECH_INFO_TYPE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @CRYPTO_MECHANISM_INVALID, align 4
  store i32 %53, i32* %7, align 4
  br label %81

54:                                               ; preds = %46, %40, %34, %28, %22, %6
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @crypto_kmflag(i32 %55)
  %57 = call i8* @aes_alloc_keysched(i64* %15, i32 %56)
  store i8* %57, i8** %14, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @CRYPTO_HOST_MEMORY, align 4
  store i32 %60, i32* %7, align 4
  br label %81

61:                                               ; preds = %54
  %62 = load i32*, i32** %10, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 @init_keysched(i32* %62, i8* %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load i8*, i8** %14, align 8
  %69 = load i64, i64* %15, align 8
  %70 = call i32 @bzero(i8* %68, i64 %69)
  %71 = load i8*, i8** %14, align 8
  %72 = load i64, i64* %15, align 8
  %73 = call i32 @kmem_free(i8* %71, i64 %72)
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %7, align 4
  br label %81

75:                                               ; preds = %61
  %76 = load i8*, i8** %14, align 8
  %77 = load i8**, i8*** %11, align 8
  store i8* %76, i8** %77, align 8
  %78 = load i64, i64* %15, align 8
  %79 = load i64*, i64** %12, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %75, %67, %59, %52
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i8* @aes_alloc_keysched(i64*, i32) #1

declare dso_local i32 @crypto_kmflag(i32) #1

declare dso_local i32 @init_keysched(i32*, i8*) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i32 @kmem_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
