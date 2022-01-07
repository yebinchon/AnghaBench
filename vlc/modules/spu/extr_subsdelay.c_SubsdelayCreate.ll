; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_subsdelay.c_SubsdelayCreate.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_subsdelay.c_SubsdelayCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8*, i8*, i8*, i8*, i8*, i32, i8* }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@CFG_MODE = common dso_local global i32 0, align 4
@SubsdelayCallback = common dso_local global i32 0, align 4
@CFG_FACTOR = common dso_local global i32 0, align 4
@CFG_OVERLAP = common dso_local global i32 0, align 4
@CFG_MIN_ALPHA = common dso_local global i32 0, align 4
@CFG_MIN_STOPS_INTERVAL = common dso_local global i32 0, align 4
@CFG_MIN_STOP_START_INTERVAL = common dso_local global i32 0, align 4
@CFG_MIN_START_STOP_INTERVAL = common dso_local global i32 0, align 4
@SubsdelayFilter = common dso_local global i32 0, align 4
@CFG_PREFIX = common dso_local global i32 0, align 4
@ppsz_filter_options = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @SubsdelayCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SubsdelayCreate(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %4, align 8
  %8 = call i64 @malloc(i32 64)
  %9 = inttoptr i64 %8 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %13, i32* %2, align 4
  br label %105

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = load i32, i32* @CFG_MODE, align 4
  %17 = call i8* @var_CreateGetIntegerCommand(%struct.TYPE_8__* %15, i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 7
  store i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = load i32, i32* @CFG_MODE, align 4
  %22 = load i32, i32* @SubsdelayCallback, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = call i32 @var_AddCallback(%struct.TYPE_8__* %20, i32 %21, i32 %22, %struct.TYPE_9__* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = load i32, i32* @CFG_FACTOR, align 4
  %27 = call i32 @var_CreateGetFloatCommand(%struct.TYPE_8__* %25, i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = load i32, i32* @CFG_FACTOR, align 4
  %32 = load i32, i32* @SubsdelayCallback, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = call i32 @var_AddCallback(%struct.TYPE_8__* %30, i32 %31, i32 %32, %struct.TYPE_9__* %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = load i32, i32* @CFG_OVERLAP, align 4
  %37 = call i8* @var_CreateGetIntegerCommand(%struct.TYPE_8__* %35, i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = load i32, i32* @CFG_OVERLAP, align 4
  %42 = load i32, i32* @SubsdelayCallback, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = call i32 @var_AddCallback(%struct.TYPE_8__* %40, i32 %41, i32 %42, %struct.TYPE_9__* %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = load i32, i32* @CFG_MIN_ALPHA, align 4
  %47 = call i8* @var_CreateGetIntegerCommand(%struct.TYPE_8__* %45, i32 %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = load i32, i32* @CFG_MIN_ALPHA, align 4
  %52 = load i32, i32* @SubsdelayCallback, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = call i32 @var_AddCallback(%struct.TYPE_8__* %50, i32 %51, i32 %52, %struct.TYPE_9__* %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = load i32, i32* @CFG_MIN_STOPS_INTERVAL, align 4
  %57 = call i8* @var_CreateGetIntegerCommand(%struct.TYPE_8__* %55, i32 %56)
  %58 = call i8* @VLC_TICK_FROM_MS(i8* %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = load i32, i32* @CFG_MIN_STOPS_INTERVAL, align 4
  %63 = load i32, i32* @SubsdelayCallback, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = call i32 @var_AddCallback(%struct.TYPE_8__* %61, i32 %62, i32 %63, %struct.TYPE_9__* %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = load i32, i32* @CFG_MIN_STOP_START_INTERVAL, align 4
  %68 = call i8* @var_CreateGetIntegerCommand(%struct.TYPE_8__* %66, i32 %67)
  %69 = call i8* @VLC_TICK_FROM_MS(i8* %68)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = load i32, i32* @CFG_MIN_STOP_START_INTERVAL, align 4
  %74 = load i32, i32* @SubsdelayCallback, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = call i32 @var_AddCallback(%struct.TYPE_8__* %72, i32 %73, i32 %74, %struct.TYPE_9__* %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = load i32, i32* @CFG_MIN_START_STOP_INTERVAL, align 4
  %79 = call i8* @var_CreateGetIntegerCommand(%struct.TYPE_8__* %77, i32 %78)
  %80 = call i8* @VLC_TICK_FROM_MS(i8* %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = load i32, i32* @CFG_MIN_START_STOP_INTERVAL, align 4
  %85 = load i32, i32* @SubsdelayCallback, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = call i32 @var_AddCallback(%struct.TYPE_8__* %83, i32 %84, i32 %85, %struct.TYPE_9__* %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %90, align 8
  %91 = load i32, i32* @SubsdelayFilter, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = load i32, i32* @CFG_PREFIX, align 4
  %96 = load i32, i32* @ppsz_filter_options, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @config_ChainParse(%struct.TYPE_8__* %94, i32 %95, i32 %96, i32 %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = call i32 @SubsdelayHeapInit(i32* %102)
  %104 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %14, %12
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @var_CreateGetIntegerCommand(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @var_AddCallback(%struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @var_CreateGetFloatCommand(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @VLC_TICK_FROM_MS(i8*) #1

declare dso_local i32 @config_ChainParse(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @SubsdelayHeapInit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
