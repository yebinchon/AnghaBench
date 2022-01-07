; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_digest.c_crypto_digest_single.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_digest.c_crypto_digest_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@CRYPTO_INVALID_CONTEXT = common dso_local global i32 0, align 4
@KCF_OP_SINGLE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_digest_single(i64 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %10, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %18 = icmp eq %struct.TYPE_13__* %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %11, align 8
  %24 = icmp eq %struct.TYPE_12__* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %12, align 8
  %29 = icmp eq %struct.TYPE_11__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %19, %4
  %31 = load i32, i32* @CRYPTO_INVALID_CONTEXT, align 4
  store i32 %31, i32* %5, align 4
  br label %64

32:                                               ; preds = %25
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %35 = call i64 @CHECK_FASTPATH(i32* %33, %struct.TYPE_11__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @KCF_PROV_DIGEST(%struct.TYPE_11__* %38, %struct.TYPE_13__* %39, i32* %40, i32* %41, i32* null)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @KCF_PROV_INCRSTATS(%struct.TYPE_11__* %43, i32 %44)
  br label %59

46:                                               ; preds = %32
  %47 = load i32, i32* @KCF_OP_SINGLE, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @KCF_WRAP_DIGEST_OPS_PARAMS(i32* %14, i32 %47, i32 %50, i32* null, i32* null, i32* %51, i32* %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* @B_FALSE, align 4
  %58 = call i32 @kcf_submit_request(%struct.TYPE_11__* %54, %struct.TYPE_13__* %55, i32* %56, i32* %14, i32 %57)
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %46, %37
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %62 = call i32 @KCF_CONTEXT_COND_RELEASE(i32 %60, %struct.TYPE_12__* %61)
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %30
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @CHECK_FASTPATH(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @KCF_PROV_DIGEST(%struct.TYPE_11__*, %struct.TYPE_13__*, i32*, i32*, i32*) #1

declare dso_local i32 @KCF_PROV_INCRSTATS(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @KCF_WRAP_DIGEST_OPS_PARAMS(i32*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @kcf_submit_request(%struct.TYPE_11__*, %struct.TYPE_13__*, i32*, i32*, i32) #1

declare dso_local i32 @KCF_CONTEXT_COND_RELEASE(i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
