; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/inhibit/extr_xdg.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/inhibit/extr_xdg.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@POSIX_SPAWN_SETSIGDEF = common dso_local global i32 0, align 4
@POSIX_SPAWN_SETSIGMASK = common dso_local global i32 0, align 4
@Timer = common dso_local global i32 0, align 4
@Inhibit = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %4, align 8
  %9 = call %struct.TYPE_7__* @malloc(i32 8)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = icmp eq %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %13, i32* %2, align 4
  br label %54

14:                                               ; preds = %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = call i32 @posix_spawnattr_init(i32* %16)
  %18 = call i32 @sigemptyset(i32* %6)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = call i32 @posix_spawnattr_setsigmask(i32* %20, i32* %6)
  %22 = load i32, i32* @SIGPIPE, align 4
  %23 = call i32 @sigaddset(i32* %6, i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = call i32 @posix_spawnattr_setsigdefault(i32* %25, i32* %6)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* @POSIX_SPAWN_SETSIGDEF, align 4
  %30 = load i32, i32* @POSIX_SPAWN_SETSIGMASK, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @posix_spawnattr_setflags(i32* %28, i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* @Timer, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = call i64 @vlc_timer_create(i32* %37, i32 %38, %struct.TYPE_6__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %14
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = call i32 @posix_spawnattr_destroy(i32* %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = call i32 @free(%struct.TYPE_7__* %46)
  %48 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %48, i32* %2, align 4
  br label %54

49:                                               ; preds = %14
  %50 = load i32, i32* @Inhibit, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %49, %42, %12
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @posix_spawnattr_init(i32*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @posix_spawnattr_setsigmask(i32*, i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @posix_spawnattr_setsigdefault(i32*, i32*) #1

declare dso_local i32 @posix_spawnattr_setflags(i32*, i32) #1

declare dso_local i64 @vlc_timer_create(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @posix_spawnattr_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
