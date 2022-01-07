; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_mac.c_crypto_mac_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_mac.c_crypto_mac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i64, i32* }

@CRYPTO_FG_MAC = common dso_local global i32 0, align 4
@CRYPTO_SW_PROVIDER = common dso_local global i64 0, align 8
@CRYPTO_OLD_CTX_TEMPLATE = common dso_local global i32 0, align 4
@CRYPTO_HW_PROVIDER = common dso_local global i64 0, align 8
@CRYPTO_HASH_NO_UPDATE = common dso_local global i32 0, align 4
@CRYPTO_BUFFER_TOO_BIG = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@CRYPTO_QUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_mac_init(%struct.TYPE_15__* %0, i32* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %113, %5
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %17, align 8
  %23 = load i32, i32* @CRYPTO_FG_MAC, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @CHECK_RESTRICT(i32* %24)
  %26 = call %struct.TYPE_12__* @kcf_get_mech_provider(i32 %21, %struct.TYPE_13__** %13, i32* %12, i32* %22, i32 %23, i32 %25, i32 0)
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %14, align 8
  %27 = icmp eq %struct.TYPE_12__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %18
  %29 = load i32*, i32** %17, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32*, i32** %17, align 8
  %33 = call i32 @kcf_free_triedlist(i32* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %125

36:                                               ; preds = %18
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CRYPTO_SW_PROVIDER, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %36
  %43 = load i64, i64* %9, align 8
  %44 = inttoptr i64 %43 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %15, align 8
  %45 = icmp ne %struct.TYPE_14__* %44, null
  br i1 %45, label %46, label %69

46:                                               ; preds = %42
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = load i32*, i32** %17, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32*, i32** %17, align 8
  %59 = call i32 @kcf_free_triedlist(i32* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %62 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_12__* %61)
  %63 = load i32, i32* @CRYPTO_OLD_CTX_TEMPLATE, align 4
  store i32 %63, i32* %6, align 4
  br label %125

64:                                               ; preds = %46
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %16, align 8
  br label %68

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68, %42, %36
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CRYPTO_HW_PROVIDER, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @CRYPTO_HASH_NO_UPDATE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @CRYPTO_BUFFER_TOO_BIG, align 4
  store i32 %83, i32* %12, align 4
  br label %95

84:                                               ; preds = %75, %69
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32*, i32** %16, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @crypto_mac_init_prov(%struct.TYPE_12__* %85, i32 %88, %struct.TYPE_15__* %89, i32* %90, i32* %91, i32* %92, i32* %93)
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %84, %82
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @CRYPTO_QUEUED, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load i32, i32* %12, align 4
  %105 = call i64 @IS_RECOVERABLE(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @KCF_KMFLAG(i32* %109)
  %111 = call i32* @kcf_insert_triedlist(i32** %17, %struct.TYPE_12__* %108, i32 %110)
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %18

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %103, %99, %95
  %116 = load i32*, i32** %17, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32*, i32** %17, align 8
  %120 = call i32 @kcf_free_triedlist(i32* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %123 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_12__* %122)
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %121, %60, %34
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local %struct.TYPE_12__* @kcf_get_mech_provider(i32, %struct.TYPE_13__**, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @CHECK_RESTRICT(i32*) #1

declare dso_local i32 @kcf_free_triedlist(i32*) #1

declare dso_local i32 @KCF_PROV_REFRELE(%struct.TYPE_12__*) #1

declare dso_local i32 @crypto_mac_init_prov(%struct.TYPE_12__*, i32, %struct.TYPE_15__*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @IS_RECOVERABLE(i32) #1

declare dso_local i32* @kcf_insert_triedlist(i32**, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @KCF_KMFLAG(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
