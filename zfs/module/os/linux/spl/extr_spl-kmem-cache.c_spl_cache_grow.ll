; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kmem-cache.c_spl_cache_grow.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kmem-cache.c_spl_cache_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }

@KM_PUBLIC_MASK = common dso_local global i32 0, align 4
@SKC_MAGIC = common dso_local global i64 0, align 8
@KMC_SLAB = common dso_local global i32 0, align 4
@KMC_BIT_REAPING = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@KMC_VMEM = common dso_local global i32 0, align 4
@KMC_KVMEM = common dso_local global i32 0, align 4
@KM_NOSLEEP = common dso_local global i32 0, align 4
@KMC_BIT_GROWING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@spl_kmem_cache_taskq = common dso_local global i32 0, align 4
@spl_cache_grow_work = common dso_local global i32 0, align 4
@KMC_BIT_DEADLOCKED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i8**)* @spl_cache_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spl_cache_grow(%struct.TYPE_9__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @KM_PUBLIC_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = call i32 @ASSERT0(i32 %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SKC_MAGIC, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @KMC_SLAB, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = call i32 (...) @might_sleep()
  %32 = load i8**, i8*** %7, align 8
  store i8* null, i8** %32, align 8
  %33 = load i32, i32* @KMC_BIT_REAPING, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %3
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* @KMC_BIT_REAPING, align 4
  %42 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %43 = call i32 @spl_wait_on_bit(i32* %40, i32 %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  br label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = sub nsw i32 0, %49
  br label %51

51:                                               ; preds = %48, %46
  %52 = phi i32 [ %47, %46 ], [ %50, %48 ]
  store i32 %52, i32* %4, align 4
  br label %168

53:                                               ; preds = %3
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @KMC_VMEM, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %53
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @KMC_KVMEM, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %60
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @KM_NOSLEEP, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @__spl_cache_grow(%struct.TYPE_9__* %68, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %168

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %60, %53
  %78 = load i32, i32* @KMC_BIT_GROWING, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = call i64 @test_and_set_bit(i32 %78, i32* %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %119

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @kmem_flags_convert(i32 %84)
  %86 = call %struct.TYPE_10__* @kmalloc(i32 16, i32 %85)
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %10, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %88 = icmp eq %struct.TYPE_10__* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %83
  %90 = load i32, i32* @KMC_BIT_GROWING, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = call i32 @clear_bit_unlock(i32 %90, i32* %92)
  %94 = call i32 (...) @smp_mb__after_atomic()
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 4
  %97 = call i32 @wake_up_all(i32* %96)
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %168

100:                                              ; preds = %83
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 5
  %103 = call i32 @atomic_inc(i32* %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  store %struct.TYPE_9__* %104, %struct.TYPE_9__** %106, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = call i32 @taskq_init_ent(i32* %111)
  %113 = load i32, i32* @spl_kmem_cache_taskq, align 4
  %114 = load i32, i32* @spl_cache_grow_work, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = call i32 @taskq_dispatch_ent(i32 %113, i32 %114, %struct.TYPE_10__* %115, i32 0, i32* %117)
  br label %119

119:                                              ; preds = %100, %77
  %120 = load i32, i32* @KMC_BIT_DEADLOCKED, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = call i64 @test_bit(i32 %120, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load i8**, i8*** %7, align 8
  %129 = call i32 @spl_emergency_alloc(%struct.TYPE_9__* %126, i32 %127, i8** %128)
  store i32 %129, i32* %9, align 4
  br label %166

130:                                              ; preds = %119
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %135 = call i32 @spl_cache_grow_wait(%struct.TYPE_9__* %134)
  %136 = load i32, i32* @HZ, align 4
  %137 = sdiv i32 %136, 10
  %138 = call i32 @wait_event_timeout(i32 %133, i32 %135, i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %163, label %141

141:                                              ; preds = %130
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = call i32 @spin_lock(i32* %143)
  %145 = load i32, i32* @KMC_BIT_GROWING, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = call i64 @test_bit(i32 %145, i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %141
  %151 = load i32, i32* @KMC_BIT_DEADLOCKED, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = call i32 @set_bit(i32 %151, i32* %153)
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %150, %141
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 2
  %162 = call i32 @spin_unlock(i32* %161)
  br label %163

163:                                              ; preds = %159, %130
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %163, %125
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %166, %89, %75, %51
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spl_wait_on_bit(i32*, i32, i32) #1

declare dso_local i32 @__spl_cache_grow(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.TYPE_10__* @kmalloc(i32, i32) #1

declare dso_local i32 @kmem_flags_convert(i32) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @taskq_init_ent(i32*) #1

declare dso_local i32 @taskq_dispatch_ent(i32, i32, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @spl_emergency_alloc(%struct.TYPE_9__*, i32, i8**) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @spl_cache_grow_wait(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
