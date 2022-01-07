; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_mac.c_crypto_mac_verify_prov.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_mac.c_crypto_mac_verify_prov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@CRYPTO_LOGICAL_PROVIDER = common dso_local global i64 0, align 8
@CRYPTO_MECH_INVALID = common dso_local global i32 0, align 4
@CRYPTO_FG_MAC_ATOMIC = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@KCF_OP_MAC_VERIFY_ATOMIC = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_mac_verify_prov(%struct.TYPE_12__* %0, i32 %1, %struct.TYPE_13__* %2, i32* %3, i32* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %19, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %20, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %25 = call i32 @KCF_PROV_REFHELD(%struct.TYPE_12__* %24)
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CRYPTO_MECH_INVALID, align 4
  %37 = load i32*, i32** %17, align 8
  %38 = call i32 @CHECK_RESTRICT(i32* %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %40 = load i32, i32* @CRYPTO_FG_MAC_ATOMIC, align 4
  %41 = call i32 @kcf_get_hardware_provider(i32 %35, i32 %36, i32 %38, %struct.TYPE_12__* %39, %struct.TYPE_12__** %20, i32 %40)
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* %21, align 4
  %43 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* %21, align 4
  store i32 %46, i32* %9, align 4
  br label %71

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %8
  %49 = load i32, i32* @KCF_OP_MAC_VERIFY_ATOMIC, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load i32*, i32** %16, align 8
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @KCF_WRAP_MAC_OPS_PARAMS(i32* %18, i32 %49, i32 %50, %struct.TYPE_13__* %51, i32* %52, i32* %53, i32* %54, i32 %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = load i32, i32* @B_FALSE, align 4
  %60 = call i32 @kcf_submit_request(%struct.TYPE_12__* %57, i32* null, i32* %58, i32* %18, i32 %59)
  store i32 %60, i32* %21, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %48
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %68 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_12__* %67)
  br label %69

69:                                               ; preds = %66, %48
  %70 = load i32, i32* %21, align 4
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %69, %45
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @KCF_PROV_REFHELD(%struct.TYPE_12__*) #1

declare dso_local i32 @kcf_get_hardware_provider(i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__**, i32) #1

declare dso_local i32 @CHECK_RESTRICT(i32*) #1

declare dso_local i32 @KCF_WRAP_MAC_OPS_PARAMS(i32*, i32, i32, %struct.TYPE_13__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @kcf_submit_request(%struct.TYPE_12__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @KCF_PROV_REFRELE(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
