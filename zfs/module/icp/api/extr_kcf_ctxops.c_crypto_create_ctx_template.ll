; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_ctxops.c_crypto_create_ctx_template.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_ctxops.c_crypto_create_ctx_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@CRYPTO_MECHANISM_INVALID = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@CRYPTO_HOST_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_create_ctx_template(%struct.TYPE_12__* %0, i32* %1, %struct.TYPE_11__** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %16 = icmp eq %struct.TYPE_11__** %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %18, i32* %5, align 4
  br label %86

19:                                               ; preds = %4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = icmp eq %struct.TYPE_12__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @CRYPTO_MECHANISM_INVALID, align 4
  store i32 %23, i32* %5, align 4
  br label %86

24:                                               ; preds = %19
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @B_TRUE, align 4
  %29 = call i32 @kcf_get_sw_prov(i32 %27, i32** %12, %struct.TYPE_10__** %11, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %86

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @kmem_alloc(i32 12, i32 %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %13, align 8
  %39 = icmp eq %struct.TYPE_11__* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @KCF_PROV_REFRELE(i32* %41)
  %43 = load i32, i32* @CRYPTO_HOST_MEMORY, align 4
  store i32 %43, i32* %5, align 4
  br label %86

44:                                               ; preds = %35
  %45 = load i32*, i32** %12, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @KCF_TO_PROV_MECHNUM(i32* %45, i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @KCF_RHNDL(i32 %65)
  %67 = call i32 @KCF_PROV_CREATE_CTX_TEMPLATE(i32* %59, %struct.TYPE_12__* %14, i32* %60, i32* %62, i32* %64, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %44
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %78 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %78, align 8
  br label %82

79:                                               ; preds = %44
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %81 = call i32 @kmem_free(%struct.TYPE_11__* %80, i32 12)
  br label %82

82:                                               ; preds = %79, %71
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @KCF_PROV_REFRELE(i32* %83)
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %82, %40, %33, %22, %17
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @kcf_get_sw_prov(i32, i32**, %struct.TYPE_10__**, i32) #1

declare dso_local i64 @kmem_alloc(i32, i32) #1

declare dso_local i32 @KCF_PROV_REFRELE(i32*) #1

declare dso_local i32 @KCF_TO_PROV_MECHNUM(i32*, i32) #1

declare dso_local i32 @KCF_PROV_CREATE_CTX_TEMPLATE(i32*, %struct.TYPE_12__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @KCF_RHNDL(i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
