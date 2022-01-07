; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_dxgi_fmt.c_DxgiResourceCount.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_dxgi_fmt.c_DxgiResourceCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@D3D11_MAX_SHADER_VIEW = common dso_local global i64 0, align 8
@DXGI_FORMAT_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DxgiResourceCount(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @D3D11_MAX_SHADER_VIEW, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DXGI_FORMAT_UNKNOWN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* %2, align 8
  br label %26

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %4, align 8
  br label %5

24:                                               ; preds = %5
  %25 = load i64, i64* @D3D11_MAX_SHADER_VIEW, align 8
  store i64 %25, i64* %2, align 8
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i64, i64* %2, align 8
  ret i64 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
