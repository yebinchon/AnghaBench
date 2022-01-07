; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_prov_tabs.c_kcf_alloc_provider_desc.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_prov_tabs.c_kcf_alloc_provider_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i32, i32, i32, i32, i32**, i8*, i8* }
%struct.TYPE_6__ = type { i32, i64, i64, i32* }

@KM_SLEEP = common dso_local global i32 0, align 4
@CRYPTO_PROVIDER_DESCR_MAX_LEN = common dso_local global i32 0, align 4
@CRYPTO_LOGICAL_PROVIDER = common dso_local global i64 0, align 8
@CRYPTO_SPI_VERSION_2 = common dso_local global i64 0, align 8
@CRYPTO_SPI_VERSION_3 = common dso_local global i64 0, align 8
@KCF_OPS_CLASSSIZE = common dso_local global i32 0, align 4
@KCF_MAXMECHTAB = common dso_local global i32 0, align 4
@KCF_INVALID_INDX = common dso_local global i32 0, align 4
@KCF_PROVID_INVALID = common dso_local global i32 0, align 4
@KCF_PROV_ALLOCATED = common dso_local global i32 0, align 4
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@CV_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @kcf_alloc_provider_desc(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  %14 = load i32, i32* @KM_SLEEP, align 4
  %15 = call i8* @kmem_zalloc(i32 56, i32 %14)
  %16 = bitcast i8* %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %5, align 8
  %17 = load i32, i32* @CRYPTO_PROVIDER_DESCR_MAX_LEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = load i32, i32* @KM_SLEEP, align 4
  %20 = call i8* @kmem_alloc(i32 %18, i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @CRYPTO_PROVIDER_DESCR_MAX_LEN, align 4
  %27 = call i32 @memset(i8* %25, i8 signext 32, i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* @CRYPTO_PROVIDER_DESCR_MAX_LEN, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 0, i8* %33, align 1
  %34 = load i32, i32* @KM_SLEEP, align 4
  %35 = call i8* @kmem_zalloc(i32 4, i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 9
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %1
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 9
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @allocate_ops_v1(i32* %44, i8* %47, i32* %6)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CRYPTO_SPI_VERSION_2, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 9
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @allocate_ops_v2(i32* %55, i8* %58)
  br label %60

60:                                               ; preds = %54, %43
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CRYPTO_SPI_VERSION_3, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 9
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @allocate_ops_v3(i32* %67, i8* %70)
  br label %72

72:                                               ; preds = %66, %60
  br label %73

73:                                               ; preds = %72, %1
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 4, %78
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* @KM_SLEEP, align 4
  %82 = call i8* @kmem_zalloc(i32 %80, i32 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 8
  store i8* %82, i8** %84, align 8
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %110, %73
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @KCF_OPS_CLASSSIZE, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %106, %89
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @KCF_MAXMECHTAB, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load i32, i32* @KCF_INVALID_INDX, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 7
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %95, i32* %105, align 4
  br label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %90

109:                                              ; preds = %90
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %3, align 4
  br label %85

113:                                              ; preds = %85
  %114 = load i32, i32* @KCF_PROVID_INVALID, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @KCF_PROV_ALLOCATED, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 4
  %122 = load i32, i32* @MUTEX_DEFAULT, align 4
  %123 = call i32 @mutex_init(i32* %121, i32* null, i32 %122, i32* null)
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  %126 = load i32, i32* @CV_DEFAULT, align 4
  %127 = call i32 @cv_init(i32* %125, i32* null, i32 %126, i32* null)
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32, i32* @CV_DEFAULT, align 4
  %131 = call i32 @cv_init(i32* %129, i32* null, i32 %130, i32* null)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %132
}

declare dso_local i8* @kmem_zalloc(i32, i32) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @allocate_ops_v1(i32*, i8*, i32*) #1

declare dso_local i32 @allocate_ops_v2(i32*, i8*) #1

declare dso_local i32 @allocate_ops_v3(i32*, i8*) #1

declare dso_local i32 @mutex_init(i32*, i32*, i32, i32*) #1

declare dso_local i32 @cv_init(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
