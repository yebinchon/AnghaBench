; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_FragSeekToPos.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_FragSeekToPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, double, i32)* @FragSeekToPos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FragSeekToPos(%struct.TYPE_6__* %0, double %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %3
  %24 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %24, i32* %4, align 4
  br label %73

25:                                               ; preds = %18
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @__MAX(i32 %28, i32 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %25
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = call i32 @ProbeFragmentsChecked(%struct.TYPE_6__* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @VLC_SUCCESS, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %73

48:                                               ; preds = %40
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @__MAX(i32 %51, i32 %54)
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %48, %35, %25
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %60, i32* %4, align 4
  br label %73

61:                                               ; preds = %56
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = load double, double* %6, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call double @MP4_rescale_mtime(i64 %64, i32 %67)
  %69 = fmul double %63, %68
  %70 = fptosi double %69 to i32
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @FragSeekToTime(%struct.TYPE_6__* %62, i32 %70, i32 %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %61, %59, %46, %23
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @__MAX(i32, i32) #1

declare dso_local i32 @ProbeFragmentsChecked(%struct.TYPE_6__*) #1

declare dso_local i32 @FragSeekToTime(%struct.TYPE_6__*, i32, i32) #1

declare dso_local double @MP4_rescale_mtime(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
