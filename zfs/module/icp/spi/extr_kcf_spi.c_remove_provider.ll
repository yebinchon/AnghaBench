; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/spi/extr_kcf_spi.c_remove_provider.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/spi/extr_kcf_spi.c_remove_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_9__* }

@CRYPTO_HW_PROVIDER = common dso_local global i64 0, align 8
@KCF_LPROV_MEMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @remove_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_provider(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %8 = call i32 @mutex_enter(i32* %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %4, align 8
  br label %12

12:                                               ; preds = %47, %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %49

15:                                               ; preds = %12
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %3, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = call i32 @remove_provider_from_array(%struct.TYPE_9__* %19, %struct.TYPE_9__* %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CRYPTO_HW_PROVIDER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %15
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = icmp eq %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* @KCF_LPROV_MEMBER, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %32, %27, %15
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = call i32 @KCF_PROV_IREFRELE(%struct.TYPE_9__* %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %5, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = call i32 @kmem_free(%struct.TYPE_8__* %45, i32 16)
  br label %47

47:                                               ; preds = %39
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %4, align 8
  br label %12

49:                                               ; preds = %12
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = call i32 @mutex_exit(i32* %53)
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @remove_provider_from_array(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @KCF_PROV_IREFRELE(%struct.TYPE_9__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
