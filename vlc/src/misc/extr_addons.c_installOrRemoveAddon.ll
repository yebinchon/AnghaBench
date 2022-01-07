; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_addons.c_installOrRemoveAddon.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_addons.c_installOrRemoveAddon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_20__*)*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"entries storage\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"addons storage\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"addons.store.install\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"InstallAddon returns %d\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@ADDON_MANAGEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i32)* @installOrRemoveAddon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @installOrRemoveAddon(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_18__* @vlc_custom_create(i32 %15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %8, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %21 = call i32* @module_need(%struct.TYPE_18__* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %66

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_18__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_20__*)** %29, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = call i32 %30(%struct.TYPE_18__* %31, %struct.TYPE_20__* %32)
  store i32 %33, i32* %7, align 4
  br label %41

34:                                               ; preds = %24
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = load i32 (%struct.TYPE_18__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_20__*)** %36, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %40 = call i32 %37(%struct.TYPE_18__* %38, %struct.TYPE_20__* %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %34, %27
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @module_unneed(%struct.TYPE_18__* %42, i32* %43)
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @msg_Dbg(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @VLC_SUCCESS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %41
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = call i32 @vlc_mutex_lock(i32* %57)
  %59 = load i32, i32* @ADDON_MANAGEABLE, align 4
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = call i32 @vlc_mutex_unlock(i32* %63)
  br label %65

65:                                               ; preds = %55, %41
  br label %66

66:                                               ; preds = %65, %3
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %68 = call i32 @vlc_object_delete(%struct.TYPE_18__* %67)
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_18__* @vlc_custom_create(i32, i32, i8*) #1

declare dso_local i32* @module_need(%struct.TYPE_18__*, i8*, i8*, i32) #1

declare dso_local i32 @module_unneed(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @msg_Dbg(i32, i8*, i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
