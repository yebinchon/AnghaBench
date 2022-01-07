; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output.c_vlc_h2_output_create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2output.c_vlc_h2_output_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_output = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__, %struct.vlc_tls* }
%struct.TYPE_4__ = type { i32*, i32** }
%struct.TYPE_3__ = type { i32*, i32** }
%struct.vlc_tls = type { i32 }

@VLC_THREAD_PRIORITY_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_h2_output* @vlc_h2_output_create(%struct.vlc_tls* %0, i32 %1) #0 {
  %3 = alloca %struct.vlc_h2_output*, align 8
  %4 = alloca %struct.vlc_tls*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_h2_output*, align 8
  %7 = alloca i8* (i8*)*, align 8
  store %struct.vlc_tls* %0, %struct.vlc_tls** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call %struct.vlc_h2_output* @malloc(i32 72)
  store %struct.vlc_h2_output* %8, %struct.vlc_h2_output** %6, align 8
  %9 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  %10 = icmp eq %struct.vlc_h2_output* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.vlc_h2_output* null, %struct.vlc_h2_output** %3, align 8
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.vlc_tls*, %struct.vlc_tls** %4, align 8
  %17 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  %18 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %17, i32 0, i32 8
  store %struct.vlc_tls* %16, %struct.vlc_tls** %18, align 8
  %19 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  %20 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  %23 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  %26 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32** %24, i32*** %27, align 8
  %28 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  %29 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  %32 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  %35 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32** %33, i32*** %36, align 8
  %37 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  %38 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  %40 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  %42 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  %44 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %43, i32 0, i32 2
  %45 = call i32 @vlc_mutex_init(i32* %44)
  %46 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  %47 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %46, i32 0, i32 3
  %48 = call i32 @vlc_cond_init(i32* %47)
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* (i8*)* @vlc_h2_client_output_thread, i8* (i8*)* @vlc_h2_output_thread
  store i8* (i8*)* %52, i8* (i8*)** %7, align 8
  %53 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  %54 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %53, i32 0, i32 4
  %55 = load i8* (i8*)*, i8* (i8*)** %7, align 8
  %56 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  %57 = load i32, i32* @VLC_THREAD_PRIORITY_INPUT, align 4
  %58 = call i64 @vlc_clone(i32* %54, i8* (i8*)* %55, %struct.vlc_h2_output* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %15
  %61 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  %62 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %61, i32 0, i32 3
  %63 = call i32 @vlc_cond_destroy(i32* %62)
  %64 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  %65 = getelementptr inbounds %struct.vlc_h2_output, %struct.vlc_h2_output* %64, i32 0, i32 2
  %66 = call i32 @vlc_mutex_destroy(i32* %65)
  %67 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  %68 = call i32 @free(%struct.vlc_h2_output* %67)
  store %struct.vlc_h2_output* null, %struct.vlc_h2_output** %6, align 8
  br label %69

69:                                               ; preds = %60, %15
  %70 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %6, align 8
  store %struct.vlc_h2_output* %70, %struct.vlc_h2_output** %3, align 8
  br label %71

71:                                               ; preds = %69, %14
  %72 = load %struct.vlc_h2_output*, %struct.vlc_h2_output** %3, align 8
  ret %struct.vlc_h2_output* %72
}

declare dso_local %struct.vlc_h2_output* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @vlc_cond_init(i32*) #1

declare dso_local i8* @vlc_h2_client_output_thread(i8*) #1

declare dso_local i8* @vlc_h2_output_thread(i8*) #1

declare dso_local i64 @vlc_clone(i32*, i8* (i8*)*, %struct.vlc_h2_output*, i32) #1

declare dso_local i32 @vlc_cond_destroy(i32*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

declare dso_local i32 @free(%struct.vlc_h2_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
