; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_digest.c_crypto_digest_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/api/extr_kcf_digest.c_crypto_digest_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }

@CRYPTO_FG_DIGEST = common dso_local global i32 0, align 4
@CRYPTO_HW_PROVIDER = common dso_local global i64 0, align 8
@CRYPTO_HASH_NO_UPDATE = common dso_local global i32 0, align 4
@CRYPTO_BUFFER_TOO_BIG = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@CRYPTO_QUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_digest_init(%struct.TYPE_10__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %10, align 8
  br label %11

11:                                               ; preds = %71, %3
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %10, align 8
  %16 = load i32, i32* @CRYPTO_FG_DIGEST, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @CHECK_RESTRICT(i32* %17)
  %19 = call %struct.TYPE_9__* @kcf_get_mech_provider(i32 %14, i32* null, i32* %8, i32* %15, i32 %16, i32 %18, i32 0)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %9, align 8
  %20 = icmp eq %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %11
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @kcf_free_triedlist(i32* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %83

29:                                               ; preds = %11
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CRYPTO_HW_PROVIDER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CRYPTO_HASH_NO_UPDATE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @CRYPTO_BUFFER_TOO_BIG, align 4
  store i32 %43, i32* %8, align 4
  br label %53

44:                                               ; preds = %35, %29
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @crypto_digest_init_prov(%struct.TYPE_9__* %45, i32 %48, %struct.TYPE_10__* %49, i32* %50, i32* %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %44, %42
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @CRYPTO_QUEUED, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @IS_RECOVERABLE(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @KCF_KMFLAG(i32* %67)
  %69 = call i32* @kcf_insert_triedlist(i32** %10, %struct.TYPE_9__* %66, i32 %68)
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %11

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %61, %57, %53
  %74 = load i32*, i32** %10, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @kcf_free_triedlist(i32* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %81 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_9__* %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %27
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_9__* @kcf_get_mech_provider(i32, i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @CHECK_RESTRICT(i32*) #1

declare dso_local i32 @kcf_free_triedlist(i32*) #1

declare dso_local i32 @crypto_digest_init_prov(%struct.TYPE_9__*, i32, %struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i64 @IS_RECOVERABLE(i32) #1

declare dso_local i32* @kcf_insert_triedlist(i32**, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @KCF_KMFLAG(i32*) #1

declare dso_local i32 @KCF_PROV_REFRELE(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
