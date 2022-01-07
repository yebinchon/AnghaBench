; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_vout_ChangeZoom.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_vout_ChangeZoom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32*, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vout_ChangeZoom(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @vlc_ureduce(i32* %5, i32* %6, i32 %24, i32 %25, i32 0)
  br label %28

27:                                               ; preds = %20, %3
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32, i32* %5, align 4
  %30 = mul i32 %29, 10
  %31 = load i32, i32* %6, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  store i32 10, i32* %6, align 4
  br label %41

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = mul i32 %36, 10
  %38 = icmp ugt i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 10, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %34
  br label %41

41:                                               ; preds = %40, %33
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = call i32 @vlc_mutex_lock(i32* %43)
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = call i32 @vout_UpdateWindowSizeLocked(%struct.TYPE_9__* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = call i32 @vlc_mutex_lock(i32* %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = call i32 @vlc_mutex_unlock(i32* %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %41
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @vout_SetDisplayZoom(i32* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %41
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = call i32 @vlc_mutex_unlock(i32* %76)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_ureduce(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vout_UpdateWindowSizeLocked(%struct.TYPE_9__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vout_SetDisplayZoom(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
