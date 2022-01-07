; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_digest.c_crypto_digest.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_digest.c_crypto_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_22__ = type { i64, i32, i64, i32 }

@CRYPTO_FG_DIGEST_ATOMIC = common dso_local global i32 0, align 4
@CRYPTO_HW_PROVIDER = common dso_local global i64 0, align 8
@CRYPTO_HASH_NO_UPDATE = common dso_local global i32 0, align 4
@CRYPTO_BUFFER_TOO_BIG = common dso_local global i32 0, align 4
@KCF_OP_ATOMIC = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@CRYPTO_QUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_digest(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1, %struct.TYPE_24__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_23__, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %13, align 8
  br label %15

15:                                               ; preds = %117, %4
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %13, align 8
  %20 = load i32, i32* @CRYPTO_FG_DIGEST_ATOMIC, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @CHECK_RESTRICT(i32* %21)
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call %struct.TYPE_22__* @kcf_get_mech_provider(i32 %18, i32* null, i32* %10, i32* %19, i32 %20, i32 %22, i64 %25)
  store %struct.TYPE_22__* %26, %struct.TYPE_22__** %11, align 8
  %27 = icmp eq %struct.TYPE_22__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %15
  %29 = load i32*, i32** %13, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @kcf_free_triedlist(i32* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %129

36:                                               ; preds = %15
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %39 = call i64 @CHECK_FASTPATH(i32* %37, %struct.TYPE_22__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %43 = bitcast %struct.TYPE_23__* %14 to i8*
  %44 = bitcast %struct.TYPE_23__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %49 = call i32 @KCF_SET_PROVIDER_MECHNUM(i32 %47, %struct.TYPE_22__* %48, %struct.TYPE_23__* %14)
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @KCF_SWFP_RHNDL(i32* %56)
  %58 = call i32 @KCF_PROV_DIGEST_ATOMIC(%struct.TYPE_22__* %50, i32 %53, %struct.TYPE_23__* %14, %struct.TYPE_24__* %54, %struct.TYPE_24__* %55, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @KCF_PROV_INCRSTATS(%struct.TYPE_22__* %59, i32 %60)
  br label %99

62:                                               ; preds = %36
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CRYPTO_HW_PROVIDER, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %62
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CRYPTO_HASH_NO_UPDATE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %78, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @CRYPTO_BUFFER_TOO_BIG, align 4
  store i32 %84, i32* %10, align 4
  br label %98

85:                                               ; preds = %75, %68, %62
  %86 = load i32, i32* @KCF_OP_ATOMIC, align 4
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %93 = call i32 @KCF_WRAP_DIGEST_OPS_PARAMS(i32* %12, i32 %86, i32 %89, %struct.TYPE_23__* %90, i32* null, %struct.TYPE_24__* %91, %struct.TYPE_24__* %92)
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* @B_FALSE, align 4
  %97 = call i32 @kcf_submit_request(%struct.TYPE_22__* %94, i32* null, i32* %95, i32* %12, i32 %96)
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %85, %83
  br label %99

99:                                               ; preds = %98, %41
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %99
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @CRYPTO_QUEUED, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load i32, i32* %10, align 4
  %109 = call i64 @IS_RECOVERABLE(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @KCF_KMFLAG(i32* %113)
  %115 = call i32* @kcf_insert_triedlist(i32** %13, %struct.TYPE_22__* %112, i32 %114)
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %15

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %107, %103, %99
  %120 = load i32*, i32** %13, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32*, i32** %13, align 8
  %124 = call i32 @kcf_free_triedlist(i32* %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %127 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_22__* %126)
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %125, %34
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local %struct.TYPE_22__* @kcf_get_mech_provider(i32, i32*, i32*, i32*, i32, i32, i64) #1

declare dso_local i32 @CHECK_RESTRICT(i32*) #1

declare dso_local i32 @kcf_free_triedlist(i32*) #1

declare dso_local i64 @CHECK_FASTPATH(i32*, %struct.TYPE_22__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @KCF_SET_PROVIDER_MECHNUM(i32, %struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @KCF_PROV_DIGEST_ATOMIC(%struct.TYPE_22__*, i32, %struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @KCF_SWFP_RHNDL(i32*) #1

declare dso_local i32 @KCF_PROV_INCRSTATS(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @KCF_WRAP_DIGEST_OPS_PARAMS(i32*, i32, i32, %struct.TYPE_23__*, i32*, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @kcf_submit_request(%struct.TYPE_22__*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @IS_RECOVERABLE(i32) #1

declare dso_local i32* @kcf_insert_triedlist(i32**, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @KCF_KMFLAG(i32*) #1

declare dso_local i32 @KCF_PROV_REFRELE(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
