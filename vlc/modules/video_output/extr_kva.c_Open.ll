; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_kva.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_kva.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.open_init = type { i32*, i32*, %struct.TYPE_6__* }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PMThread = common dso_local global i32 0, align 4
@SEM_INDEFINITE_WAIT = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*, i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.open_init, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = getelementptr inbounds %struct.open_init, %struct.open_init* %11, i32 0, i32 0
  %13 = load i32*, i32** %8, align 8
  store i32* %13, i32** %12, align 8
  %14 = getelementptr inbounds %struct.open_init, %struct.open_init* %11, i32 0, i32 1
  %15 = load i32*, i32** %7, align 8
  store i32* %15, i32** %14, align 8
  %16 = getelementptr inbounds %struct.open_init, %struct.open_init* %11, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %16, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @VLC_UNUSED(i32* %18)
  %20 = call %struct.TYPE_7__* @calloc(i32 1, i32 16)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %10, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %26, i32* %5, align 4
  br label %57

27:                                               ; preds = %4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* @FALSE, align 4
  %31 = call i32 @DosCreateEventSem(i32* null, i32* %29, i32 0, i32 %30)
  %32 = load i32, i32* @PMThread, align 4
  %33 = call i32 @_beginthread(i32 %32, i32* null, i32 1048576, %struct.open_init* %11)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SEM_INDEFINITE_WAIT, align 4
  %40 = call i32 @DosWaitEventSem(i32 %38, i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VLC_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %27
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @DosCloseEventSem(i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = call i32 @free(%struct.TYPE_7__* %51)
  %53 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %53, i32* %5, align 4
  br label %57

54:                                               ; preds = %27
  %55 = load i64, i64* @VLC_SUCCESS, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %46, %25
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i32 @DosCreateEventSem(i32*, i32*, i32, i32) #1

declare dso_local i32 @_beginthread(i32, i32*, i32, %struct.open_init*) #1

declare dso_local i32 @DosWaitEventSem(i32, i32) #1

declare dso_local i32 @DosCloseEventSem(i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
