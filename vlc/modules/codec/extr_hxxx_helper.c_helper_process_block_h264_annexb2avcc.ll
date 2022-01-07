; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_helper_process_block_h264_annexb2avcc.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_helper_process_block_h264_annexb2avcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hxxx_helper = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hxxx_helper*, i32*, i32*)* @helper_process_block_h264_annexb2avcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @helper_process_block_h264_annexb2avcc(%struct.hxxx_helper* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.hxxx_helper*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.hxxx_helper* %0, %struct.hxxx_helper** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.hxxx_helper*, %struct.hxxx_helper** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32* @helper_process_block_h264_annexb(%struct.hxxx_helper* %7, i32* %8, i32* %9)
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.hxxx_helper*, %struct.hxxx_helper** %4, align 8
  %16 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @hxxx_AnnexB_to_xVC(i32* %14, i32 %17)
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi i32* [ %18, %13 ], [ null, %19 ]
  ret i32* %21
}

declare dso_local i32* @helper_process_block_h264_annexb(%struct.hxxx_helper*, i32*, i32*) #1

declare dso_local i32* @hxxx_AnnexB_to_xVC(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
