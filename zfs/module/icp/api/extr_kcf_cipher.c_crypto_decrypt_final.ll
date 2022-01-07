; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_cipher.c_crypto_decrypt_final.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_cipher.c_crypto_decrypt_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@CRYPTO_INVALID_CONTEXT = common dso_local global i32 0, align 4
@CRYPTO_LOGICAL_PROVIDER = common dso_local global i64 0, align 8
@KCF_OP_FINAL = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_decrypt_final(i64 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %8, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %16 = icmp eq %struct.TYPE_13__* %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %9, align 8
  %22 = icmp eq %struct.TYPE_12__* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %10, align 8
  %27 = icmp eq %struct.TYPE_11__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %17, %3
  %29 = load i32, i32* @CRYPTO_INVALID_CONTEXT, align 4
  store i32 %29, i32* %4, align 4
  br label %67

30:                                               ; preds = %23
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = call i64 @CHECK_FASTPATH(i32* %38, %struct.TYPE_11__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %30
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @KCF_PROV_DECRYPT_FINAL(%struct.TYPE_11__* %43, %struct.TYPE_13__* %44, i32* %45, i32* null)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @KCF_PROV_INCRSTATS(%struct.TYPE_11__* %47, i32 %48)
  br label %62

50:                                               ; preds = %30
  %51 = load i32, i32* @KCF_OP_FINAL, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @KCF_WRAP_DECRYPT_OPS_PARAMS(i32* %12, i32 %51, i32 %54, i32* null, i32* null, i32* null, i32* %55, i32* null)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @B_FALSE, align 4
  %61 = call i32 @kcf_submit_request(%struct.TYPE_11__* %57, %struct.TYPE_13__* %58, i32* %59, i32* %12, i32 %60)
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %50, %42
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %65 = call i32 @KCF_CONTEXT_COND_RELEASE(i32 %63, %struct.TYPE_12__* %64)
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %28
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @CHECK_FASTPATH(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @KCF_PROV_DECRYPT_FINAL(%struct.TYPE_11__*, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @KCF_PROV_INCRSTATS(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @KCF_WRAP_DECRYPT_OPS_PARAMS(i32*, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @kcf_submit_request(%struct.TYPE_11__*, %struct.TYPE_13__*, i32*, i32*, i32) #1

declare dso_local i32 @KCF_CONTEXT_COND_RELEASE(i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
