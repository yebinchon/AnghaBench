; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_zone.c_zone_init.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_zone.c_zone_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@zone_size = common dso_local global i32 0, align 4
@jemalloc_zone = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@zone_malloc = common dso_local global i32 0, align 4
@zone_calloc = common dso_local global i32 0, align 4
@zone_valloc = common dso_local global i32 0, align 4
@zone_free = common dso_local global i32 0, align 4
@zone_realloc = common dso_local global i32 0, align 4
@zone_destroy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"jemalloc_zone\00", align 1
@zone_batch_malloc = common dso_local global i32 0, align 4
@zone_batch_free = common dso_local global i32 0, align 4
@jemalloc_zone_introspect = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@zone_memalign = common dso_local global i32 0, align 4
@zone_free_definite_size = common dso_local global i32 0, align 4
@zone_pressure_relief = common dso_local global i32 0, align 4
@zone_enumerator = common dso_local global i32 0, align 4
@zone_good_size = common dso_local global i32 0, align 4
@zone_check = common dso_local global i32 0, align 4
@zone_print = common dso_local global i32 0, align 4
@zone_log = common dso_local global i32 0, align 4
@zone_force_lock = common dso_local global i32 0, align 4
@zone_force_unlock = common dso_local global i32 0, align 4
@zone_statistics = common dso_local global i32 0, align 4
@zone_locked = common dso_local global i32 0, align 4
@zone_reinit_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @zone_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zone_init() #0 {
  %1 = load i32, i32* @zone_size, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jemalloc_zone, i32 0, i32 14), align 8
  %2 = load i32, i32* @zone_malloc, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jemalloc_zone, i32 0, i32 13), align 4
  %3 = load i32, i32* @zone_calloc, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jemalloc_zone, i32 0, i32 12), align 8
  %4 = load i32, i32* @zone_valloc, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jemalloc_zone, i32 0, i32 11), align 4
  %5 = load i32, i32* @zone_free, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jemalloc_zone, i32 0, i32 10), align 8
  %6 = load i32, i32* @zone_realloc, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jemalloc_zone, i32 0, i32 9), align 4
  %7 = load i32, i32* @zone_destroy, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jemalloc_zone, i32 0, i32 8), align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jemalloc_zone, i32 0, i32 0), align 8
  %8 = load i32, i32* @zone_batch_malloc, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jemalloc_zone, i32 0, i32 7), align 4
  %9 = load i32, i32* @zone_batch_free, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jemalloc_zone, i32 0, i32 6), align 8
  store %struct.TYPE_3__* @jemalloc_zone_introspect, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jemalloc_zone, i32 0, i32 5), align 8
  store i32 9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jemalloc_zone, i32 0, i32 1), align 8
  %10 = load i32, i32* @zone_memalign, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jemalloc_zone, i32 0, i32 4), align 4
  %11 = load i32, i32* @zone_free_definite_size, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jemalloc_zone, i32 0, i32 3), align 8
  %12 = load i32, i32* @zone_pressure_relief, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @jemalloc_zone, i32 0, i32 2), align 4
  %13 = load i32, i32* @zone_enumerator, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @jemalloc_zone_introspect, i32 0, i32 14), align 8
  %14 = load i32, i32* @zone_good_size, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @jemalloc_zone_introspect, i32 0, i32 13), align 4
  %15 = load i32, i32* @zone_check, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @jemalloc_zone_introspect, i32 0, i32 12), align 8
  %16 = load i32, i32* @zone_print, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @jemalloc_zone_introspect, i32 0, i32 11), align 4
  %17 = load i32, i32* @zone_log, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @jemalloc_zone_introspect, i32 0, i32 10), align 8
  %18 = load i32, i32* @zone_force_lock, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @jemalloc_zone_introspect, i32 0, i32 9), align 4
  %19 = load i32, i32* @zone_force_unlock, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @jemalloc_zone_introspect, i32 0, i32 8), align 8
  %20 = load i32, i32* @zone_statistics, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @jemalloc_zone_introspect, i32 0, i32 7), align 4
  %21 = load i32, i32* @zone_locked, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @jemalloc_zone_introspect, i32 0, i32 6), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @jemalloc_zone_introspect, i32 0, i32 5), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @jemalloc_zone_introspect, i32 0, i32 4), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @jemalloc_zone_introspect, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @jemalloc_zone_introspect, i32 0, i32 1), align 8
  %22 = load i32, i32* @zone_reinit_lock, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @jemalloc_zone_introspect, i32 0, i32 0), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
