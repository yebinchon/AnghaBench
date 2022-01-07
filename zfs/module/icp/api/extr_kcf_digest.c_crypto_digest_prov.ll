; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_digest.c_crypto_digest_prov.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_digest.c_crypto_digest_prov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@CRYPTO_LOGICAL_PROVIDER = common dso_local global i64 0, align 8
@CRYPTO_MECH_INVALID = common dso_local global i32 0, align 4
@CRYPTO_FG_DIGEST_ATOMIC = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@KCF_OP_ATOMIC = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_digest_prov(%struct.TYPE_12__* %0, i32 %1, %struct.TYPE_13__* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %15, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %16, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %21 = call i32 @KCF_PROV_REFHELD(%struct.TYPE_12__* %20)
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %6
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CRYPTO_MECH_INVALID, align 4
  %33 = load i32*, i32** %13, align 8
  %34 = call i32 @CHECK_RESTRICT(i32* %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %36 = load i32, i32* @CRYPTO_FG_DIGEST_ATOMIC, align 4
  %37 = call i32 @kcf_get_hardware_provider(i32 %31, i32 %32, i32 %34, %struct.TYPE_12__* %35, %struct.TYPE_12__** %16, i32 %36)
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %7, align 4
  br label %65

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %6
  %45 = load i32, i32* @KCF_OP_ATOMIC, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @KCF_WRAP_DIGEST_OPS_PARAMS(i32* %14, i32 %45, i32 %46, %struct.TYPE_13__* %47, i32* null, i32* %48, i32* %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* @B_FALSE, align 4
  %54 = call i32 @kcf_submit_request(%struct.TYPE_12__* %51, i32* null, i32* %52, i32* %14, i32 %53)
  store i32 %54, i32* %17, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %62 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_12__* %61)
  br label %63

63:                                               ; preds = %60, %44
  %64 = load i32, i32* %17, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %63, %41
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @KCF_PROV_REFHELD(%struct.TYPE_12__*) #1

declare dso_local i32 @kcf_get_hardware_provider(i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__**, i32) #1

declare dso_local i32 @CHECK_RESTRICT(i32*) #1

declare dso_local i32 @KCF_WRAP_DIGEST_OPS_PARAMS(i32*, i32, i32, %struct.TYPE_13__*, i32*, i32*, i32*) #1

declare dso_local i32 @kcf_submit_request(%struct.TYPE_12__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @KCF_PROV_REFRELE(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
