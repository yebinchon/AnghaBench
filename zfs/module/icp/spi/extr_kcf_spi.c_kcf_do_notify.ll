; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/spi/extr_kcf_spi.c_kcf_do_notify.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/spi/extr_kcf_spi.c_kcf_do_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@KCF_PROV_VERIFICATION_FAILED = common dso_local global i64 0, align 8
@CRYPTO_LOGICAL_PROVIDER = common dso_local global i64 0, align 8
@CRYPTO_MECH_ADDED = common dso_local global i32 0, align 4
@CRYPTO_MECH_REMOVED = common dso_local global i32 0, align 4
@CRYPTO_MAX_MECH_NAME = common dso_local global i32 0, align 4
@CRYPTO_EVENT_MECHS_CHANGED = common dso_local global i32 0, align 4
@KCF_LPROV_MEMBER = common dso_local global i32 0, align 4
@CRYPTO_EVENT_PROVIDER_REGISTERED = common dso_local global i32 0, align 4
@CRYPTO_EVENT_PROVIDER_UNREGISTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kcf_do_notify(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @KCF_PROV_VERIFICATION_FAILED, align 8
  %11 = icmp sgt i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i64 %22, i64* %23, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @CRYPTO_MECH_ADDED, align 4
  br label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @CRYPTO_MECH_REMOVED, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 7
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %54, %30
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %51 = call i32 @strlcpy(i32 %41, i32 %49, i32 %50)
  %52 = load i32, i32* @CRYPTO_EVENT_MECHS_CHANGED, align 4
  %53 = call i32 @kcf_walk_ntfylist(i32 %52, %struct.TYPE_7__* %6)
  br label %54

54:                                               ; preds = %39
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %33

57:                                               ; preds = %33
  br label %58

58:                                               ; preds = %57, %2
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @KCF_LPROV_MEMBER, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %64, %58
  %72 = load i64, i64* %4, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @CRYPTO_EVENT_PROVIDER_REGISTERED, align 4
  br label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @CRYPTO_EVENT_PROVIDER_UNREGISTERED, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = call i32 @kcf_walk_ntfylist(i32 %79, %struct.TYPE_7__* %80)
  br label %82

82:                                               ; preds = %78, %64
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @kcf_walk_ntfylist(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
