; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_opengl.c_vlc_gl_Release.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_opengl.c_vlc_gl_Release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*)* }
%struct.vlc_gl_priv_t = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_gl_Release(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.vlc_gl_priv_t*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = bitcast %struct.TYPE_6__* %4 to %struct.vlc_gl_priv_t*
  store %struct.vlc_gl_priv_t* %5, %struct.vlc_gl_priv_t** %3, align 8
  %6 = load %struct.vlc_gl_priv_t*, %struct.vlc_gl_priv_t** %3, align 8
  %7 = getelementptr inbounds %struct.vlc_gl_priv_t, %struct.vlc_gl_priv_t* %6, i32 0, i32 0
  %8 = call i32 @vlc_atomic_rc_dec(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %13, align 8
  %15 = icmp ne i32 (%struct.TYPE_6__*)* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %18, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = call i32 %19(%struct.TYPE_6__* %20)
  br label %22

22:                                               ; preds = %16, %11
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = call i32 @VLC_OBJECT(%struct.TYPE_6__* %23)
  %25 = call i32 @vlc_objres_clear(i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = call i32 @vlc_object_delete(%struct.TYPE_6__* %26)
  br label %28

28:                                               ; preds = %22, %10
  ret void
}

declare dso_local i32 @vlc_atomic_rc_dec(i32*) #1

declare dso_local i32 @vlc_objres_clear(i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_6__*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
