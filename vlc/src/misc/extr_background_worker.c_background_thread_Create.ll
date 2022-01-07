; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_background_worker.c_background_thread_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_background_worker.c_background_thread_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.background_thread = type { i32, i32, %struct.background_worker*, i32*, i32 }
%struct.background_worker = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.background_thread* (%struct.background_worker*)* @background_thread_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.background_thread* @background_thread_Create(%struct.background_worker* %0) #0 {
  %2 = alloca %struct.background_thread*, align 8
  %3 = alloca %struct.background_worker*, align 8
  %4 = alloca %struct.background_thread*, align 8
  store %struct.background_worker* %0, %struct.background_worker** %3, align 8
  %5 = call %struct.background_thread* @malloc(i32 32)
  store %struct.background_thread* %5, %struct.background_thread** %4, align 8
  %6 = load %struct.background_thread*, %struct.background_thread** %4, align 8
  %7 = icmp ne %struct.background_thread* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.background_thread* null, %struct.background_thread** %2, align 8
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.background_thread*, %struct.background_thread** %4, align 8
  %11 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %10, i32 0, i32 4
  %12 = call i32 @vlc_cond_init(i32* %11)
  %13 = load %struct.background_thread*, %struct.background_thread** %4, align 8
  %14 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.background_thread*, %struct.background_thread** %4, align 8
  %16 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.background_thread*, %struct.background_thread** %4, align 8
  %18 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %17, i32 0, i32 3
  store i32* null, i32** %18, align 8
  %19 = load %struct.background_worker*, %struct.background_worker** %3, align 8
  %20 = load %struct.background_thread*, %struct.background_thread** %4, align 8
  %21 = getelementptr inbounds %struct.background_thread, %struct.background_thread* %20, i32 0, i32 2
  store %struct.background_worker* %19, %struct.background_worker** %21, align 8
  %22 = load %struct.background_thread*, %struct.background_thread** %4, align 8
  store %struct.background_thread* %22, %struct.background_thread** %2, align 8
  br label %23

23:                                               ; preds = %9, %8
  %24 = load %struct.background_thread*, %struct.background_thread** %2, align 8
  ret %struct.background_thread* %24
}

declare dso_local %struct.background_thread* @malloc(i32) #1

declare dso_local i32 @vlc_cond_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
