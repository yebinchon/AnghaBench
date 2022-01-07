; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_addons.c_addons_manager_WriteCatalog.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_addons.c_addons_manager_WriteCatalog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i32, i32)*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"entries storage\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"addons storage\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"addons.store.install\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @addons_manager_WriteCatalog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addons_manager_WriteCatalog(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %6 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_17__* @vlc_custom_create(i32 %11, i32 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %4, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = call i32* @module_need(%struct.TYPE_17__* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %55

20:                                               ; preds = %1
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = call i32 @vlc_mutex_lock(i32* %25)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_17__*, i32, i32)*, i32 (%struct.TYPE_17__*, i32, i32)** %28, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 %29(%struct.TYPE_17__* %30, i32 %37, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = call i32 @vlc_mutex_unlock(i32* %50)
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @module_unneed(%struct.TYPE_17__* %52, i32* %53)
  br label %55

55:                                               ; preds = %20, %1
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = call i32 @vlc_object_delete(%struct.TYPE_17__* %56)
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_17__* @vlc_custom_create(i32, i32, i8*) #1

declare dso_local i32* @module_need(%struct.TYPE_17__*, i8*, i8*, i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @module_unneed(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
