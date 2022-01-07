; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_free_context.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_sched.c_kcf_free_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32* }

@CRYPTO_INIT_OPSTATE = common dso_local global i32 0, align 4
@kcf_context_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kcf_free_context(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %5, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = call i32 @KCF_CONTEXT_REFRELE(%struct.TYPE_14__* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %19
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = call i32 @mutex_enter(i32* %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = call i32 @KCF_IS_PROV_REMOVED(%struct.TYPE_13__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = call i32 @KCF_PROV_IREFHOLD(%struct.TYPE_13__* %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = call i32 @mutex_exit(i32* %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %39 = call i32 @KCF_PROV_FREE_CONTEXT(%struct.TYPE_13__* %37, %struct.TYPE_15__* %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = call i32 @KCF_PROV_IREFRELE(%struct.TYPE_13__* %40)
  br label %46

42:                                               ; preds = %24
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = call i32 @mutex_exit(i32* %44)
  br label %46

46:                                               ; preds = %42, %31
  br label %47

47:                                               ; preds = %46, %19
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_13__* %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CRYPTO_INIT_OPSTATE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %47
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = icmp ne %struct.TYPE_13__* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_13__* %66)
  br label %68

68:                                               ; preds = %63, %58, %47
  %69 = load i32, i32* @kcf_context_cache, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %71 = call i32 @kmem_cache_free(i32 %69, %struct.TYPE_14__* %70)
  ret void
}

declare dso_local i32 @KCF_CONTEXT_REFRELE(%struct.TYPE_14__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @KCF_IS_PROV_REMOVED(%struct.TYPE_13__*) #1

declare dso_local i32 @KCF_PROV_IREFHOLD(%struct.TYPE_13__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @KCF_PROV_FREE_CONTEXT(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @KCF_PROV_IREFRELE(%struct.TYPE_13__*) #1

declare dso_local i32 @KCF_PROV_REFRELE(%struct.TYPE_13__*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
