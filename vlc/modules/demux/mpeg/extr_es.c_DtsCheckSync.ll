; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_DtsCheckSync.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_DtsCheckSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@VLC_DTS_HEADER_SIZE = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @DtsCheckSync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DtsCheckSync(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i32 @VLC_UNUSED(i32* %7)
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @VLC_DTS_HEADER_SIZE, align 4
  %11 = call i64 @vlc_dts_header_Parse(%struct.TYPE_3__* %6, i32* %9, i32 %10)
  %12 = load i64, i64* @VLC_SUCCESS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 8192
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %18, %14, %2
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i64 @vlc_dts_header_Parse(%struct.TYPE_3__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
