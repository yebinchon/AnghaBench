; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_mac.c_crypto_mac_verify.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_mac.c_crypto_mac_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i64, i32, i64, i32 }
%struct.TYPE_27__ = type { i64, i32* }

@CRYPTO_FG_MAC_ATOMIC = common dso_local global i32 0, align 4
@CRYPTO_SW_PROVIDER = common dso_local global i64 0, align 8
@CRYPTO_OLD_CTX_TEMPLATE = common dso_local global i32 0, align 4
@CRYPTO_HW_PROVIDER = common dso_local global i64 0, align 8
@CRYPTO_HASH_NO_UPDATE = common dso_local global i32 0, align 4
@CRYPTO_BUFFER_TOO_BIG = common dso_local global i32 0, align 4
@KCF_OP_MAC_VERIFY_ATOMIC = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@CRYPTO_QUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_mac_verify(%struct.TYPE_28__* %0, %struct.TYPE_29__* %1, i32* %2, i64 %3, %struct.TYPE_29__* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca %struct.TYPE_27__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_28__, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %8, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_29__* %4, %struct.TYPE_29__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  br label %22

22:                                               ; preds = %162, %6
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %20, align 8
  %27 = load i32, i32* @CRYPTO_FG_MAC_ATOMIC, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @CHECK_RESTRICT(i32* %28)
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.TYPE_25__* @kcf_get_mech_provider(i32 %25, %struct.TYPE_26__** %15, i32* %14, i32* %26, i32 %27, i32 %29, i64 %32)
  store %struct.TYPE_25__* %33, %struct.TYPE_25__** %17, align 8
  %34 = icmp eq %struct.TYPE_25__* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %22
  %36 = load i32*, i32** %20, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32*, i32** %20, align 8
  %40 = call i32 @kcf_free_triedlist(i32* %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %7, align 4
  br label %174

43:                                               ; preds = %22
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CRYPTO_SW_PROVIDER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %43
  %50 = load i64, i64* %11, align 8
  %51 = inttoptr i64 %50 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %51, %struct.TYPE_27__** %18, align 8
  %52 = icmp ne %struct.TYPE_27__* %51, null
  br i1 %52, label %53, label %76

53:                                               ; preds = %49
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load i32*, i32** %20, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** %20, align 8
  %66 = call i32 @kcf_free_triedlist(i32* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %69 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_25__* %68)
  %70 = load i32, i32* @CRYPTO_OLD_CTX_TEMPLATE, align 4
  store i32 %70, i32* %7, align 4
  br label %174

71:                                               ; preds = %53
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %19, align 8
  br label %75

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %49, %43
  %77 = load i32*, i32** %13, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %79 = call i64 @CHECK_FASTPATH(i32* %77, %struct.TYPE_25__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %76
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %83 = bitcast %struct.TYPE_28__* %21 to i8*
  %84 = bitcast %struct.TYPE_28__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 4, i1 false)
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %89 = call i32 @KCF_SET_PROVIDER_MECHNUM(i32 %87, %struct.TYPE_25__* %88, %struct.TYPE_28__* %21)
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %97 = load i32*, i32** %19, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = call i32 @KCF_SWFP_RHNDL(i32* %98)
  %100 = call i32 @KCF_PROV_MAC_VERIFY_ATOMIC(%struct.TYPE_25__* %90, i32 %93, %struct.TYPE_28__* %21, i32* %94, %struct.TYPE_29__* %95, %struct.TYPE_29__* %96, i32* %97, i32 %99)
  store i32 %100, i32* %14, align 4
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @KCF_PROV_INCRSTATS(%struct.TYPE_25__* %101, i32 %102)
  br label %144

104:                                              ; preds = %76
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @CRYPTO_HW_PROVIDER, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %127

110:                                              ; preds = %104
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @CRYPTO_HASH_NO_UPDATE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %110
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %120, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i32, i32* @CRYPTO_BUFFER_TOO_BIG, align 4
  store i32 %126, i32* %14, align 4
  br label %143

127:                                              ; preds = %117, %110, %104
  %128 = load i32, i32* @KCF_OP_MAC_VERIFY_ATOMIC, align 4
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %136 = load i32*, i32** %19, align 8
  %137 = call i32 @KCF_WRAP_MAC_OPS_PARAMS(i32* %16, i32 %128, i32 %131, %struct.TYPE_28__* %132, i32* %133, %struct.TYPE_29__* %134, %struct.TYPE_29__* %135, i32* %136)
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %139 = load i32*, i32** %13, align 8
  %140 = load i32*, i32** %13, align 8
  %141 = call i32 @KCF_ISDUALREQ(i32* %140)
  %142 = call i32 @kcf_submit_request(%struct.TYPE_25__* %138, i32* null, i32* %139, i32* %16, i32 %141)
  store i32 %142, i32* %14, align 4
  br label %143

143:                                              ; preds = %127, %125
  br label %144

144:                                              ; preds = %143, %81
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %164

148:                                              ; preds = %144
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* @CRYPTO_QUEUED, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %164

152:                                              ; preds = %148
  %153 = load i32, i32* %14, align 4
  %154 = call i64 @IS_RECOVERABLE(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %152
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %158 = load i32*, i32** %13, align 8
  %159 = call i32 @KCF_KMFLAG(i32* %158)
  %160 = call i32* @kcf_insert_triedlist(i32** %20, %struct.TYPE_25__* %157, i32 %159)
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %22

163:                                              ; preds = %156
  br label %164

164:                                              ; preds = %163, %152, %148, %144
  %165 = load i32*, i32** %20, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32*, i32** %20, align 8
  %169 = call i32 @kcf_free_triedlist(i32* %168)
  br label %170

170:                                              ; preds = %167, %164
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %172 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_25__* %171)
  %173 = load i32, i32* %14, align 4
  store i32 %173, i32* %7, align 4
  br label %174

174:                                              ; preds = %170, %67, %41
  %175 = load i32, i32* %7, align 4
  ret i32 %175
}

declare dso_local %struct.TYPE_25__* @kcf_get_mech_provider(i32, %struct.TYPE_26__**, i32*, i32*, i32, i32, i64) #1

declare dso_local i32 @CHECK_RESTRICT(i32*) #1

declare dso_local i32 @kcf_free_triedlist(i32*) #1

declare dso_local i32 @KCF_PROV_REFRELE(%struct.TYPE_25__*) #1

declare dso_local i64 @CHECK_FASTPATH(i32*, %struct.TYPE_25__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @KCF_SET_PROVIDER_MECHNUM(i32, %struct.TYPE_25__*, %struct.TYPE_28__*) #1

declare dso_local i32 @KCF_PROV_MAC_VERIFY_ATOMIC(%struct.TYPE_25__*, i32, %struct.TYPE_28__*, i32*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32*, i32) #1

declare dso_local i32 @KCF_SWFP_RHNDL(i32*) #1

declare dso_local i32 @KCF_PROV_INCRSTATS(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @KCF_WRAP_MAC_OPS_PARAMS(i32*, i32, i32, %struct.TYPE_28__*, i32*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @kcf_submit_request(%struct.TYPE_25__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @KCF_ISDUALREQ(i32*) #1

declare dso_local i64 @IS_RECOVERABLE(i32) #1

declare dso_local i32* @kcf_insert_triedlist(i32**, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @KCF_KMFLAG(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
