; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_subsdelay.c_SubsdelayFilter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_subsdelay.c_SubsdelayFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64, i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }

@.str = private unnamed_addr constant [33 x i8] c"Can't add subpicture to the heap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_17__*, %struct.TYPE_16__*)* @SubsdelayFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @SubsdelayFilter(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %3, align 8
  br label %66

15:                                               ; preds = %2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = call i64 @SubpicIsEmpty(%struct.TYPE_16__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = call i32 @subpicture_Delete(%struct.TYPE_16__* %20)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %66

22:                                               ; preds = %15
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %8, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @SubsdelayHeapLock(i32* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = call %struct.TYPE_15__* @SubsdelayHeapPush(i32* %30, %struct.TYPE_16__* %31, %struct.TYPE_17__* %32)
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %7, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = icmp ne %struct.TYPE_15__* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %22
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @SubsdelayHeapUnlock(i32* %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = call i32 @msg_Err(%struct.TYPE_17__* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %3, align 8
  br label %66

42:                                               ; preds = %22
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %5, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %42
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @VLC_TICK_FROM_SEC(i32 20)
  %55 = add nsw i64 %53, %54
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %50, %42
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %62 = call i32 @SubsdelayEnforceDelayRules(%struct.TYPE_17__* %61)
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @SubsdelayHeapUnlock(i32* %63)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %65, %struct.TYPE_16__** %3, align 8
  br label %66

66:                                               ; preds = %60, %36, %19, %13
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %67
}

declare dso_local i64 @SubpicIsEmpty(%struct.TYPE_16__*) #1

declare dso_local i32 @subpicture_Delete(%struct.TYPE_16__*) #1

declare dso_local i32 @SubsdelayHeapLock(i32*) #1

declare dso_local %struct.TYPE_15__* @SubsdelayHeapPush(i32*, %struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @SubsdelayHeapUnlock(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_17__*, i8*) #1

declare dso_local i64 @VLC_TICK_FROM_SEC(i32) #1

declare dso_local i32 @SubsdelayEnforceDelayRules(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
