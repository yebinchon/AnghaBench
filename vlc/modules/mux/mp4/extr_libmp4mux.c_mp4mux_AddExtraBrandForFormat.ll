; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_mp4mux_AddExtraBrandForFormat.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_mp4mux_AddExtraBrandForFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@BRAND_avc1 = common dso_local global i32 0, align 4
@BRAND_hevc = common dso_local global i32 0, align 4
@BRAND_av01 = common dso_local global i32 0, align 4
@BRAND_iso6 = common dso_local global i32 0, align 4
@BRAND_mp41 = common dso_local global i32 0, align 4
@BRAND_M4A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*)* @mp4mux_AddExtraBrandForFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp4mux_AddExtraBrandForFormat(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %40 [
    i32 133, label %8
    i32 132, label %12
    i32 138, label %16
    i32 131, label %23
    i32 128, label %23
    i32 129, label %23
    i32 137, label %23
    i32 136, label %23
    i32 135, label %23
    i32 134, label %23
    i32 130, label %27
  ]

8:                                                ; preds = %2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = load i32, i32* @BRAND_avc1, align 4
  %11 = call i32 @mp4mux_AddExtraBrand(%struct.TYPE_6__* %9, i32 %10)
  br label %41

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = load i32, i32* @BRAND_hevc, align 4
  %15 = call i32 @mp4mux_AddExtraBrand(%struct.TYPE_6__* %13, i32 %14)
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = load i32, i32* @BRAND_av01, align 4
  %19 = call i32 @mp4mux_AddExtraBrand(%struct.TYPE_6__* %17, i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = load i32, i32* @BRAND_iso6, align 4
  %22 = call i32 @mp4mux_AddExtraBrand(%struct.TYPE_6__* %20, i32 %21)
  br label %41

23:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = load i32, i32* @BRAND_mp41, align 4
  %26 = call i32 @mp4mux_AddExtraBrand(%struct.TYPE_6__* %24, i32 %25)
  br label %41

27:                                               ; preds = %2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = load i32, i32* @BRAND_mp41, align 4
  %30 = call i32 @mp4mux_AddExtraBrand(%struct.TYPE_6__* %28, i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i32 @vlc_array_count(i32* %32)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = load i32, i32* @BRAND_M4A, align 4
  %38 = call i32 @mp4mux_AddExtraBrand(%struct.TYPE_6__* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %27
  br label %41

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %40, %39, %23, %16, %12, %8
  ret void
}

declare dso_local i32 @mp4mux_AddExtraBrand(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @vlc_array_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
