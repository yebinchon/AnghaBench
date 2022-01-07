; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_chroma.c_VideoExport_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_chroma.c_VideoExport_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32* }

@.str = private unnamed_addr constant [31 x i8] c"corrupt VDPAU video surface %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_18__*, %struct.TYPE_17__*)* @VideoExport_Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @VideoExport_Filter(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %6, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = call i32 @msg_Err(%struct.TYPE_18__* %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = call i32 @picture_Release(%struct.TYPE_17__* %22)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %38

24:                                               ; preds = %2
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %26 = call %struct.TYPE_17__* @filter_NewPicture(%struct.TYPE_18__* %25)
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %7, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %28 = icmp eq %struct.TYPE_17__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %38

30:                                               ; preds = %24
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_17__* @VideoExport(%struct.TYPE_18__* %31, %struct.TYPE_17__* %32, %struct.TYPE_17__* %33, i32 %36)
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %3, align 8
  br label %38

38:                                               ; preds = %30, %29, %18
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  ret %struct.TYPE_17__* %39
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_18__*, i8*, %struct.TYPE_17__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @filter_NewPicture(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_17__* @VideoExport(%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
