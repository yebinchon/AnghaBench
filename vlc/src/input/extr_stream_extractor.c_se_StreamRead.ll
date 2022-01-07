; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream_extractor.c_se_StreamRead.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream_extractor.c_se_StreamRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.stream_extractor_private* }
%struct.stream_extractor_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i8*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64)* @se_StreamRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @se_StreamRead(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stream_extractor_private*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %9, align 8
  store %struct.stream_extractor_private* %10, %struct.stream_extractor_private** %7, align 8
  %11 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %7, align 8
  %12 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_5__*, i8*, i64)*, i32 (%struct.TYPE_5__*, i8*, i64)** %13, align 8
  %15 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %7, align 8
  %16 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %15, i32 0, i32 0
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 %14(%struct.TYPE_5__* %16, i8* %17, i64 %18)
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
