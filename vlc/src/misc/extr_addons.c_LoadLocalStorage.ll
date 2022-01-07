; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_addons.c_LoadLocalStorage.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_addons.c_LoadLocalStorage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_14__, i32 (%struct.TYPE_18__*)*, i32*, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"entries finder\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"addons finder\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"addons.store.list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @LoadLocalStorage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadLocalStorage(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_18__* @vlc_custom_create(i32 %9, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %3, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = call i32* @module_need(%struct.TYPE_18__* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %49

18:                                               ; preds = %1
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = bitcast %struct.TYPE_14__* %20 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @ARRAY_INIT(i64 %22)
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %27, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = call i32 %28(%struct.TYPE_18__* %29)
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @module_unneed(%struct.TYPE_18__* %31, i32* %32)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @MergeSources(%struct.TYPE_17__* %34, i32 %38, i32 %42)
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = bitcast %struct.TYPE_14__* %45 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ARRAY_RESET(i64 %47)
  br label %49

49:                                               ; preds = %18, %1
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %51 = call i32 @vlc_object_delete(%struct.TYPE_18__* %50)
  ret void
}

declare dso_local %struct.TYPE_18__* @vlc_custom_create(i32, i32, i8*) #1

declare dso_local i32* @module_need(%struct.TYPE_18__*, i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_INIT(i64) #1

declare dso_local i32 @module_unneed(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @MergeSources(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @ARRAY_RESET(i64) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
