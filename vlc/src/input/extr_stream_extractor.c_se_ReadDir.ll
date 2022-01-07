; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream_extractor.c_se_ReadDir.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream_extractor.c_se_ReadDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.stream_extractor_private* }
%struct.stream_extractor_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @se_ReadDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @se_ReadDir(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stream_extractor_private*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %7, align 8
  store %struct.stream_extractor_private* %8, %struct.stream_extractor_private** %5, align 8
  %9 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %5, align 8
  %10 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_5__*, i32*)*, i32 (%struct.TYPE_5__*, i32*)** %11, align 8
  %13 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %5, align 8
  %14 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %13, i32 0, i32 0
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 %12(%struct.TYPE_5__* %14, i32* %15)
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
