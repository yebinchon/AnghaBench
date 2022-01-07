; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_mac.c_crypto_mac_init_prov.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_mac.c_crypto_mac_init_prov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i64 }

@CRYPTO_LOGICAL_PROVIDER = common dso_local global i64 0, align 8
@CRYPTO_MECH_INVALID = common dso_local global i32 0, align 4
@CRYPTO_FG_MAC = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@CRYPTO_HOST_MEMORY = common dso_local global i32 0, align 4
@KCF_OP_INIT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@CRYPTO_QUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_mac_init_prov(%struct.TYPE_23__* %0, i32 %1, %struct.TYPE_24__* %2, i32* %3, i32 %4, i64* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_23__*, align 8
  %20 = alloca %struct.TYPE_23__*, align 8
  %21 = alloca %struct.TYPE_24__, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %19, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %20, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %25 = call i32 @KCF_PROV_REFHELD(%struct.TYPE_23__* %24)
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %7
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CRYPTO_MECH_INVALID, align 4
  %37 = load i32*, i32** %15, align 8
  %38 = call i32 @CHECK_RESTRICT(i32* %37)
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %40 = load i32, i32* @CRYPTO_FG_MAC, align 4
  %41 = call i32 @kcf_get_hardware_provider(i32 %35, i32 %36, i32 %38, %struct.TYPE_23__* %39, %struct.TYPE_23__** %20, i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %8, align 4
  br label %130

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %7
  %49 = load i32*, i32** %15, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call %struct.TYPE_25__* @kcf_new_ctx(i32* %49, %struct.TYPE_23__* %50, i32 %51)
  store %struct.TYPE_25__* %52, %struct.TYPE_25__** %17, align 8
  %53 = icmp eq %struct.TYPE_25__* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %62 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_23__* %61)
  br label %63

63:                                               ; preds = %60, %54
  %64 = load i32, i32* @CRYPTO_HOST_MEMORY, align 4
  store i32 %64, i32* %8, align 4
  br label %130

65:                                               ; preds = %48
  %66 = load i32*, i32** %15, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %68 = call i64 @CHECK_FASTPATH(i32* %66, %struct.TYPE_23__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %65
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %72 = bitcast %struct.TYPE_24__* %21 to i8*
  %73 = bitcast %struct.TYPE_24__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 4, i1 false)
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %78 = call i32 @KCF_SET_PROVIDER_MECHNUM(i32 %76, %struct.TYPE_23__* %77, %struct.TYPE_24__* %21)
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32*, i32** %15, align 8
  %84 = call i32 @KCF_SWFP_RHNDL(i32* %83)
  %85 = call i32 @KCF_PROV_MAC_INIT(%struct.TYPE_23__* %79, %struct.TYPE_25__* %80, %struct.TYPE_24__* %21, i32* %81, i32 %82, i32 %84)
  store i32 %85, i32* %16, align 4
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @KCF_PROV_INCRSTATS(%struct.TYPE_23__* %86, i32 %87)
  br label %101

89:                                               ; preds = %65
  %90 = load i32, i32* @KCF_OP_INIT, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @KCF_WRAP_MAC_OPS_PARAMS(i32* %18, i32 %90, i32 %91, %struct.TYPE_24__* %92, i32* %93, i32* null, i32* null, i32 %94)
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = load i32, i32* @B_FALSE, align 4
  %100 = call i32 @kcf_submit_request(%struct.TYPE_23__* %96, %struct.TYPE_25__* %97, i32* %98, i32* %18, i32 %99)
  store i32 %100, i32* %16, align 4
  br label %101

101:                                              ; preds = %89, %70
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %109 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_23__* %108)
  br label %110

110:                                              ; preds = %107, %101
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* @CRYPTO_QUEUED, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114, %110
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %120 = ptrtoint %struct.TYPE_25__* %119 to i64
  %121 = load i64*, i64** %14, align 8
  store i64 %120, i64* %121, align 8
  br label %128

122:                                              ; preds = %114
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i32*
  %127 = call i32 @KCF_CONTEXT_REFRELE(i32* %126)
  br label %128

128:                                              ; preds = %122, %118
  %129 = load i32, i32* %16, align 4
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %128, %63, %45
  %131 = load i32, i32* %8, align 4
  ret i32 %131
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

declare dso_local i32 @KCF_PROV_MAC_INIT(%struct.TYPE_23__*, %struct.TYPE_25__*, %struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @KCF_SWFP_RHNDL(i32*) #1

declare dso_local i32 @KCF_PROV_INCRSTATS(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @KCF_WRAP_MAC_OPS_PARAMS(i32*, i32, i32, %struct.TYPE_24__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @kcf_submit_request(%struct.TYPE_23__*, %struct.TYPE_25__*, i32*, i32*, i32) #1

declare dso_local i32 @KCF_CONTEXT_REFRELE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
