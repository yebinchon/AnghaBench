; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_msi.c_on_peer_status.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_msi.c_on_peer_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Friend %d is now offline\00", align 1
@msi_OnPeerTimeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_peer_status(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %9, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %42 [
    i32 0, label %15
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @LOGGER_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pthread_mutex_lock(i32 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32* @get_call(%struct.TYPE_3__* %22, i32 %23)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pthread_mutex_unlock(i32 %30)
  br label %43

32:                                               ; preds = %15
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @msi_OnPeerTimeout, align 4
  %35 = call i32 @invoke_callback(i32* %33, i32 %34)
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @kill_call(i32* %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pthread_mutex_unlock(i32 %40)
  br label %43

42:                                               ; preds = %4
  br label %43

43:                                               ; preds = %27, %42, %32
  ret void
}

declare dso_local i32 @LOGGER_DEBUG(i8*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32) #1

declare dso_local i32* @get_call(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32) #1

declare dso_local i32 @invoke_callback(i32*, i32) #1

declare dso_local i32 @kill_call(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
