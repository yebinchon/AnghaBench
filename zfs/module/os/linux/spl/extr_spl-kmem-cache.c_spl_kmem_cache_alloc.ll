; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kmem-cache.c_spl_kmem_cache_alloc.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kmem-cache.c_spl_kmem_cache_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32 (i8*, i32, i32)*, i32, %struct.TYPE_6__**, i32, i32, %struct.kmem_cache* }
%struct.TYPE_6__ = type { i64, i64, i32, i8** }
%struct.kmem_cache = type { i32 }

@KM_PUBLIC_MASK = common dso_local global i32 0, align 4
@SKC_MAGIC = common dso_local global i64 0, align 8
@KMC_BIT_DESTROY = common dso_local global i32 0, align 4
@KMC_SLAB = common dso_local global i32 0, align 4
@KM_NOSLEEP = common dso_local global i32 0, align 4
@SKM_MAGIC = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @spl_kmem_cache_alloc(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kmem_cache*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @KM_PUBLIC_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = call i32 @ASSERT0(i32 %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SKC_MAGIC, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @ASSERT(i8* %20)
  %22 = load i32, i32* @KMC_BIT_DESTROY, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @ASSERT(i8* %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @KMC_SLAB, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 8
  %41 = load %struct.kmem_cache*, %struct.kmem_cache** %40, align 8
  store %struct.kmem_cache* %41, %struct.kmem_cache** %7, align 8
  br label %42

42:                                               ; preds = %56, %38
  %43 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @kmem_flags_convert(i32 %44)
  %46 = call i8* @kmem_cache_alloc(%struct.kmem_cache* %43, i32 %45)
  store i8* %46, i8** %6, align 8
  br label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @KM_NOSLEEP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %50, %47
  %57 = phi i1 [ false, %47 ], [ %55, %50 ]
  br i1 %57, label %42, label %58

58:                                               ; preds = %56
  %59 = load i8*, i8** %6, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 6
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 6
  %71 = call i32 @spin_unlock(i32* %70)
  br label %72

72:                                               ; preds = %61, %58
  br label %134

73:                                               ; preds = %2
  %74 = call i32 (...) @local_irq_disable()
  br label %75

75:                                               ; preds = %121, %73
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 5
  %78 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %77, align 8
  %79 = call i64 (...) @smp_processor_id()
  %80 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %78, i64 %79
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** %5, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SKM_MAGIC, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 @ASSERT(i8* %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @likely(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %75
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = load i8**, i8*** %98, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, -1
  store i64 %103, i64* %101, align 8
  %104 = getelementptr inbounds i8*, i8** %99, i64 %103
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %6, align 8
  %106 = load i32, i32* @jiffies, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  br label %124

109:                                              ; preds = %75
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = load i32, i32* %4, align 4
  %113 = call i8* @spl_cache_refill(%struct.TYPE_7__* %110, %struct.TYPE_6__* %111, i32 %112)
  store i8* %113, i8** %6, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %109
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @KM_NOSLEEP, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %116
  br label %75

122:                                              ; preds = %116, %109
  %123 = call i32 (...) @local_irq_enable()
  br label %134

124:                                              ; preds = %96
  %125 = call i32 (...) @local_irq_enable()
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @ASSERT(i8* %126)
  %128 = load i8*, i8** %6, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = call i8* @IS_P2ALIGNED(i8* %128, i32 %131)
  %133 = call i32 @ASSERT(i8* %132)
  br label %134

134:                                              ; preds = %124, %122, %72
  %135 = load i8*, i8** %6, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %159

137:                                              ; preds = %134
  %138 = load i8*, i8** %6, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %155

140:                                              ; preds = %137
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 3
  %143 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %142, align 8
  %144 = icmp ne i32 (i8*, i32, i32)* %143, null
  br i1 %144, label %145, label %155

145:                                              ; preds = %140
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 3
  %148 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %147, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %4, align 4
  %154 = call i32 %148(i8* %149, i32 %152, i32 %153)
  br label %158

155:                                              ; preds = %140, %137
  %156 = load i8*, i8** %6, align 8
  %157 = call i32 @prefetchw(i8* %156)
  br label %158

158:                                              ; preds = %155, %145
  br label %159

159:                                              ; preds = %158, %134
  %160 = load i8*, i8** %6, align 8
  ret i8* %160
}

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @ASSERT(i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

declare dso_local i32 @kmem_flags_convert(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i8* @spl_cache_refill(%struct.TYPE_7__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i8* @IS_P2ALIGNED(i8*, i32) #1

declare dso_local i32 @prefetchw(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
