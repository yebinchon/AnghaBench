; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kmem-cache.c_spl_kmem_cache_reap_now.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kmem-cache.c_spl_kmem_cache_reap_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i64, i64, i64, i32, %struct.TYPE_7__**, i32, i32 (i32)*, i32 }
%struct.TYPE_7__ = type { i32 }

@SKC_MAGIC = common dso_local global i64 0, align 8
@KMC_BIT_DESTROY = common dso_local global i32 0, align 4
@KMC_SLAB = common dso_local global i32 0, align 4
@KMC_BIT_REAPING = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@spl_kmem_cache_expire = common dso_local global i32 0, align 4
@KMC_EXPIRE_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spl_kmem_cache_reap_now(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SKC_MAGIC, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i32, i32* @KMC_BIT_DESTROY, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 5
  %26 = call i32 @atomic_inc(i32* %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @KMC_SLAB, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 8
  %36 = load i32 (i32)*, i32 (i32)** %35, align 8
  %37 = icmp ne i32 (i32)* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 8
  %41 = load i32 (i32)*, i32 (i32)** %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %41(i32 %44)
  br label %46

46:                                               ; preds = %38, %33
  br label %142

47:                                               ; preds = %2
  %48 = load i32, i32* @KMC_BIT_REAPING, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = call i64 @test_and_set_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %142

54:                                               ; preds = %47
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 8
  %57 = load i32 (i32)*, i32 (i32)** %56, align 8
  %58 = icmp ne i32 (i32)* %57, null
  br i1 %58, label %59, label %108

59:                                               ; preds = %54
  %60 = load i64, i64* @UINT64_MAX, align 8
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %104, %59
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 9
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %61
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = icmp slt i64 %81, %82
  br label %84

84:                                               ; preds = %78, %69, %61
  %85 = phi i1 [ false, %69 ], [ false, %61 ], [ %83, %78 ]
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %6, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %5, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 9
  %92 = call i32 @spin_unlock(i32* %91)
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %84
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 8
  %98 = load i32 (i32)*, i32 (i32)** %97, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = call i32 %98(i32 %101)
  br label %103

103:                                              ; preds = %95, %84
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %61, label %107

107:                                              ; preds = %104
  br label %108

108:                                              ; preds = %107, %54
  %109 = load i32, i32* @spl_kmem_cache_expire, align 4
  %110 = load i32, i32* @KMC_EXPIRE_MEM, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %108
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @local_irq_save(i64 %114)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 6
  %118 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %117, align 8
  %119 = call i64 (...) @smp_processor_id()
  %120 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %118, i64 %119
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %7, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @spl_cache_flush(%struct.TYPE_8__* %122, %struct.TYPE_7__* %123, i32 %126)
  %128 = load i64, i64* %8, align 8
  %129 = call i32 @local_irq_restore(i64 %128)
  br label %130

130:                                              ; preds = %113, %108
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %132 = call i32 @spl_slab_reclaim(%struct.TYPE_8__* %131)
  %133 = load i32, i32* @KMC_BIT_REAPING, align 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = call i32 @clear_bit_unlock(i32 %133, i32* %135)
  %137 = call i32 (...) @smp_mb__after_atomic()
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i32, i32* @KMC_BIT_REAPING, align 4
  %141 = call i32 @wake_up_bit(i32* %139, i32 %140)
  br label %142

142:                                              ; preds = %130, %53, %46
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 5
  %145 = call i32 @atomic_dec(i32* %144)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @spl_cache_flush(%struct.TYPE_8__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @spl_slab_reclaim(%struct.TYPE_8__*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
