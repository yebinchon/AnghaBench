; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_cipher.c_crypto_encrypt_update.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_cipher.c_crypto_encrypt_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i64 }

@CRYPTO_INVALID_CONTEXT = common dso_local global i32 0, align 4
@CRYPTO_LOGICAL_PROVIDER = common dso_local global i64 0, align 8
@CRYPTO_USE_OPSTATE = common dso_local global i32 0, align 4
@KCF_OP_UPDATE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_encrypt_update(i64 %0, %struct.TYPE_22__* %1, %struct.TYPE_22__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %10, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %18 = icmp eq %struct.TYPE_23__* %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %11, align 8
  %24 = icmp eq %struct.TYPE_21__* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  store %struct.TYPE_20__* %28, %struct.TYPE_20__** %12, align 8
  %29 = icmp eq %struct.TYPE_20__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %19, %4
  %31 = load i32, i32* @CRYPTO_INVALID_CONTEXT, align 4
  store i32 %31, i32* %5, align 4
  br label %104

32:                                               ; preds = %25
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %42 = call i64 @CHECK_FASTPATH(i32* %40, %struct.TYPE_20__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %32
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %49 = call i32 @KCF_PROV_ENCRYPT_UPDATE(%struct.TYPE_20__* %45, %struct.TYPE_23__* %46, %struct.TYPE_22__* %47, %struct.TYPE_22__* %48, i32* null)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @KCF_PROV_INCRSTATS(%struct.TYPE_20__* %50, i32 %51)
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %5, align 4
  br label %104

54:                                               ; preds = %32
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CRYPTO_USE_OPSTATE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %54
  %62 = load i32*, i32** %9, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %90

64:                                               ; preds = %61
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %67, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %64
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = icmp ne %struct.TYPE_20__* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  %83 = call i64 @KCF_IS_PROV_USABLE(%struct.TYPE_20__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  store %struct.TYPE_20__* %88, %struct.TYPE_20__** %12, align 8
  br label %89

89:                                               ; preds = %85, %79, %74, %64
  br label %90

90:                                               ; preds = %89, %61, %54
  %91 = load i32, i32* @KCF_OP_UPDATE, align 4
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %97 = call i32 @KCF_WRAP_ENCRYPT_OPS_PARAMS(i32* %14, i32 %91, i32 %94, i32* null, i32* null, %struct.TYPE_22__* %95, %struct.TYPE_22__* %96, i32* null)
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* @B_FALSE, align 4
  %102 = call i32 @kcf_submit_request(%struct.TYPE_20__* %98, %struct.TYPE_23__* %99, i32* %100, i32* %14, i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %90, %44, %30
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @CHECK_FASTPATH(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @KCF_PROV_ENCRYPT_UPDATE(%struct.TYPE_20__*, %struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @KCF_PROV_INCRSTATS(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @KCF_IS_PROV_USABLE(%struct.TYPE_20__*) #1

declare dso_local i32 @KCF_WRAP_ENCRYPT_OPS_PARAMS(i32*, i32, i32, i32*, i32*, %struct.TYPE_22__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @kcf_submit_request(%struct.TYPE_20__*, %struct.TYPE_23__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
