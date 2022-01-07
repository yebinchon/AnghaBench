; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_subsdelay.c_SubsdelayDestroy.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_subsdelay.c_SubsdelayDestroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@CFG_MODE = common dso_local global i32 0, align 4
@SubsdelayCallback = common dso_local global i32 0, align 4
@CFG_FACTOR = common dso_local global i32 0, align 4
@CFG_OVERLAP = common dso_local global i32 0, align 4
@CFG_MIN_ALPHA = common dso_local global i32 0, align 4
@CFG_MIN_STOPS_INTERVAL = common dso_local global i32 0, align 4
@CFG_MIN_STOP_START_INTERVAL = common dso_local global i32 0, align 4
@CFG_MIN_START_STOP_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @SubsdelayDestroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SubsdelayDestroy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = call i32 @SubsdelayHeapDestroy(i32* %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = load i32, i32* @CFG_MODE, align 4
  %15 = load i32, i32* @SubsdelayCallback, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = call i32 @var_DelCallback(%struct.TYPE_7__* %13, i32 %14, i32 %15, %struct.TYPE_8__* %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = load i32, i32* @CFG_MODE, align 4
  %20 = call i32 @var_Destroy(%struct.TYPE_7__* %18, i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = load i32, i32* @CFG_FACTOR, align 4
  %23 = load i32, i32* @SubsdelayCallback, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = call i32 @var_DelCallback(%struct.TYPE_7__* %21, i32 %22, i32 %23, %struct.TYPE_8__* %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = load i32, i32* @CFG_FACTOR, align 4
  %28 = call i32 @var_Destroy(%struct.TYPE_7__* %26, i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = load i32, i32* @CFG_OVERLAP, align 4
  %31 = load i32, i32* @SubsdelayCallback, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = call i32 @var_DelCallback(%struct.TYPE_7__* %29, i32 %30, i32 %31, %struct.TYPE_8__* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = load i32, i32* @CFG_OVERLAP, align 4
  %36 = call i32 @var_Destroy(%struct.TYPE_7__* %34, i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = load i32, i32* @CFG_MIN_ALPHA, align 4
  %39 = load i32, i32* @SubsdelayCallback, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = call i32 @var_DelCallback(%struct.TYPE_7__* %37, i32 %38, i32 %39, %struct.TYPE_8__* %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = load i32, i32* @CFG_MIN_ALPHA, align 4
  %44 = call i32 @var_Destroy(%struct.TYPE_7__* %42, i32 %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = load i32, i32* @CFG_MIN_STOPS_INTERVAL, align 4
  %47 = load i32, i32* @SubsdelayCallback, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = call i32 @var_DelCallback(%struct.TYPE_7__* %45, i32 %46, i32 %47, %struct.TYPE_8__* %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = load i32, i32* @CFG_MIN_STOPS_INTERVAL, align 4
  %52 = call i32 @var_Destroy(%struct.TYPE_7__* %50, i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = load i32, i32* @CFG_MIN_STOP_START_INTERVAL, align 4
  %55 = load i32, i32* @SubsdelayCallback, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = call i32 @var_DelCallback(%struct.TYPE_7__* %53, i32 %54, i32 %55, %struct.TYPE_8__* %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = load i32, i32* @CFG_MIN_STOP_START_INTERVAL, align 4
  %60 = call i32 @var_Destroy(%struct.TYPE_7__* %58, i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = load i32, i32* @CFG_MIN_START_STOP_INTERVAL, align 4
  %63 = load i32, i32* @SubsdelayCallback, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = call i32 @var_DelCallback(%struct.TYPE_7__* %61, i32 %62, i32 %63, %struct.TYPE_8__* %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = load i32, i32* @CFG_MIN_START_STOP_INTERVAL, align 4
  %68 = call i32 @var_Destroy(%struct.TYPE_7__* %66, i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = call i32 @free(%struct.TYPE_8__* %69)
  ret void
}

declare dso_local i32 @SubsdelayHeapDestroy(i32*) #1

declare dso_local i32 @var_DelCallback(%struct.TYPE_7__*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @var_Destroy(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
