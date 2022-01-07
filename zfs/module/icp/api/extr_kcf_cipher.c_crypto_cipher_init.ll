; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_cipher.c_crypto_cipher_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_cipher.c_crypto_cipher_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64, i32* }

@CRYPTO_SW_PROVIDER = common dso_local global i64 0, align 8
@CRYPTO_OLD_CTX_TEMPLATE = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@CRYPTO_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*, i64, i32*, i32*, i32)* @crypto_cipher_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_cipher_init(%struct.TYPE_15__* %0, i32* %1, i64 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %100, %6
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %19, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @CHECK_RESTRICT(i32* %26)
  %28 = call %struct.TYPE_12__* @kcf_get_mech_provider(i32 %23, %struct.TYPE_13__** %15, i32* %14, i32* %24, i32 %25, i32 %27, i32 0)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %16, align 8
  %29 = icmp eq %struct.TYPE_12__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = load i32*, i32** %19, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32*, i32** %19, align 8
  %35 = call i32 @kcf_free_triedlist(i32* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %7, align 4
  br label %112

38:                                               ; preds = %20
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CRYPTO_SW_PROVIDER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %38
  %45 = load i64, i64* %10, align 8
  %46 = inttoptr i64 %45 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %17, align 8
  %47 = icmp ne %struct.TYPE_14__* %46, null
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = load i32*, i32** %19, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32*, i32** %19, align 8
  %61 = call i32 @kcf_free_triedlist(i32* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %64 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_12__* %63)
  %65 = load i32, i32* @CRYPTO_OLD_CTX_TEMPLATE, align 4
  store i32 %65, i32* %7, align 4
  br label %112

66:                                               ; preds = %48
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %18, align 8
  br label %70

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %44, %38
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32*, i32** %18, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @crypto_cipher_init_prov(%struct.TYPE_12__* %72, i32 %75, %struct.TYPE_15__* %76, i32* %77, i32* %78, i32* %79, i32* %80, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %71
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @CRYPTO_QUEUED, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = load i32, i32* %14, align 4
  %92 = call i64 @IS_RECOVERABLE(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @KCF_KMFLAG(i32* %96)
  %98 = call i32* @kcf_insert_triedlist(i32** %19, %struct.TYPE_12__* %95, i32 %97)
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %20

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %90, %86, %71
  %103 = load i32*, i32** %19, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32*, i32** %19, align 8
  %107 = call i32 @kcf_free_triedlist(i32* %106)
  br label %108

108:                                              ; preds = %105, %102
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %110 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_12__* %109)
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %108, %62, %36
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_12__* @kcf_get_mech_provider(i32, %struct.TYPE_13__**, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @CHECK_RESTRICT(i32*) #1

declare dso_local i32 @kcf_free_triedlist(i32*) #1

declare dso_local i32 @KCF_PROV_REFRELE(%struct.TYPE_12__*) #1

declare dso_local i32 @crypto_cipher_init_prov(%struct.TYPE_12__*, i32, %struct.TYPE_15__*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @IS_RECOVERABLE(i32) #1

declare dso_local i32* @kcf_insert_triedlist(i32**, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @KCF_KMFLAG(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
