; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output.c_vlc_h2_output_thread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output.c_vlc_h2_output_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_output = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32** }
%struct.TYPE_3__ = type { i32*, i32** }
%struct.vlc_h2_frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @vlc_h2_output_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vlc_h2_output_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vlc_h2_output*, align 8
  %4 = alloca %struct.vlc_h2_frame*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.vlc_h2_output*
  store %struct.vlc_h2_output* %6, %struct.vlc_h2_output** %3, align 8
  br label %7

7:                                                ; preds = %47, %1
  %8 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %9 = call %struct.vlc_h2_frame* @vlc_h2_output_dequeue(%struct.vlc_h2_output* %8)
  store %struct.vlc_h2_frame* %9, %struct.vlc_h2_frame** %4, align 8
  %10 = icmp ne %struct.vlc_h2_frame* %9, null
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %13 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %4, align 8
  %16 = call i64 @vlc_h2_frame_send(i32 %14, %struct.vlc_h2_frame* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %11
  %19 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %20 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %19, i32 0, i32 3
  %21 = call i32 @vlc_mutex_lock(i32* %20)
  %22 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %23 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %25 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %24, i32 0, i32 3
  %26 = call i32 @vlc_mutex_unlock(i32* %25)
  %27 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %28 = call i32 @vlc_h2_output_flush_unlocked(%struct.vlc_h2_output* %27)
  %29 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %30 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %33 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %36 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32** %34, i32*** %37, align 8
  %38 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %39 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %42 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  %45 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32** %43, i32*** %46, align 8
  br label %48

47:                                               ; preds = %11
  br label %7

48:                                               ; preds = %18, %7
  ret i8* null
}

declare dso_local %struct.vlc_h2_frame* @vlc_h2_output_dequeue(%struct.vlc_h2_output*) #1

declare dso_local i64 @vlc_h2_frame_send(i32, %struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_h2_output_flush_unlocked(%struct.vlc_h2_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
