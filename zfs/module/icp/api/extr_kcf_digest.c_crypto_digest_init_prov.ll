; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_digest.c_crypto_digest_init_prov.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_digest.c_crypto_digest_init_prov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i64 }

@CRYPTO_LOGICAL_PROVIDER = common dso_local global i64 0, align 8
@CRYPTO_MECH_INVALID = common dso_local global i32 0, align 4
@CRYPTO_FG_DIGEST = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@CRYPTO_HOST_MEMORY = common dso_local global i32 0, align 4
@KCF_OP_INIT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@CRYPTO_QUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_digest_init_prov(%struct.TYPE_23__* %0, i32 %1, %struct.TYPE_24__* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca %struct.TYPE_24__, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %15, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %16, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %21 = call i32 @KCF_PROV_REFHELD(%struct.TYPE_23__* %20)
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %5
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CRYPTO_MECH_INVALID, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @CHECK_RESTRICT(i32* %33)
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %36 = load i32, i32* @CRYPTO_FG_DIGEST, align 4
  %37 = call i32 @kcf_get_hardware_provider(i32 %31, i32 %32, i32 %34, %struct.TYPE_23__* %35, %struct.TYPE_23__** %16, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %6, align 4
  br label %122

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %5
  %45 = load i32*, i32** %11, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.TYPE_25__* @kcf_new_ctx(i32* %45, %struct.TYPE_23__* %46, i32 %47)
  store %struct.TYPE_25__* %48, %struct.TYPE_25__** %13, align 8
  %49 = icmp eq %struct.TYPE_25__* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %58 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_23__* %57)
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i32, i32* @CRYPTO_HOST_MEMORY, align 4
  store i32 %60, i32* %6, align 4
  br label %122

61:                                               ; preds = %44
  %62 = load i32*, i32** %11, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %64 = call i64 @CHECK_FASTPATH(i32* %62, %struct.TYPE_23__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %68 = bitcast %struct.TYPE_24__* %17 to i8*
  %69 = bitcast %struct.TYPE_24__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 4, i1 false)
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %74 = call i32 @KCF_SET_PROVIDER_MECHNUM(i32 %72, %struct.TYPE_23__* %73, %struct.TYPE_24__* %17)
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @KCF_SWFP_RHNDL(i32* %77)
  %79 = call i32 @KCF_PROV_DIGEST_INIT(%struct.TYPE_23__* %75, %struct.TYPE_25__* %76, %struct.TYPE_24__* %17, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @KCF_PROV_INCRSTATS(%struct.TYPE_23__* %80, i32 %81)
  br label %93

83:                                               ; preds = %61
  %84 = load i32, i32* @KCF_OP_INIT, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %87 = call i32 @KCF_WRAP_DIGEST_OPS_PARAMS(i32* %14, i32 %84, i32 %85, %struct.TYPE_24__* %86, i32* null, i32* null, i32* null)
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* @B_FALSE, align 4
  %92 = call i32 @kcf_submit_request(%struct.TYPE_23__* %88, %struct.TYPE_25__* %89, i32* %90, i32* %14, i32 %91)
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %83, %66
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %101 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_23__* %100)
  br label %102

102:                                              ; preds = %99, %93
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @CRYPTO_QUEUED, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106, %102
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %112 = ptrtoint %struct.TYPE_25__* %111 to i64
  %113 = load i64*, i64** %10, align 8
  store i64 %112, i64* %113, align 8
  br label %120

114:                                              ; preds = %106
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i32*
  %119 = call i32 @KCF_CONTEXT_REFRELE(i32* %118)
  br label %120

120:                                              ; preds = %114, %110
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %120, %59, %41
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @KCF_PROV_REFHELD(%struct.TYPE_23__*) #1

declare dso_local i32 @kcf_get_hardware_provider(i32, i32, i32, %struct.TYPE_23__*, %struct.TYPE_23__**, i32) #1

declare dso_local i32 @CHECK_RESTRICT(i32*) #1

declare dso_local %struct.TYPE_25__* @kcf_new_ctx(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @KCF_PROV_REFRELE(%struct.TYPE_23__*) #1

declare dso_local i64 @CHECK_FASTPATH(i32*, %struct.TYPE_23__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @KCF_SET_PROVIDER_MECHNUM(i32, %struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @KCF_PROV_DIGEST_INIT(%struct.TYPE_23__*, %struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @KCF_SWFP_RHNDL(i32*) #1

declare dso_local i32 @KCF_PROV_INCRSTATS(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @KCF_WRAP_DIGEST_OPS_PARAMS(i32*, i32, i32, %struct.TYPE_24__*, i32*, i32*, i32*) #1

declare dso_local i32 @kcf_submit_request(%struct.TYPE_23__*, %struct.TYPE_25__*, i32*, i32*, i32) #1

declare dso_local i32 @KCF_CONTEXT_REFRELE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
