; ModuleID = '/home/carl/AnghaBench/vlc/src/stream_output/extr_stream_output.c_sout_AccessOutRead.c'
source_filename = "/home/carl/AnghaBench/vlc/src/stream_output/extr_stream_output.c_sout_AccessOutRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { {}* }

@VLC_EGENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sout_AccessOutRead(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = bitcast {}** %6 to i32 (%struct.TYPE_4__*, i32*)**
  %8 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %7, align 8
  %9 = icmp ne i32 (%struct.TYPE_4__*, i32*)* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.TYPE_4__*, i32*)**
  %14 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %13, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 %14(%struct.TYPE_4__* %15, i32* %16)
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @VLC_EGENERIC, align 4
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi i32 [ %17, %10 ], [ %19, %18 ]
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
