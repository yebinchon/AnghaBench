; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_oss.c_DeviceSelect.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_oss.c_DeviceSelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@AOUT_RESTART_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @DeviceSelect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DeviceSelect(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %6, align 8
  store i8* null, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @strdup(i8* %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %37

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @aout_DeviceReport(%struct.TYPE_6__* %31, i8* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = load i32, i32* @AOUT_RESTART_OUTPUT, align 4
  %36 = call i32 @aout_RestartRequest(%struct.TYPE_6__* %34, i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %23, %21
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @aout_DeviceReport(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @aout_RestartRequest(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
