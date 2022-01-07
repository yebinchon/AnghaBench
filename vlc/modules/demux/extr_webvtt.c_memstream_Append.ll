; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_webvtt.c_memstream_Append.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_webvtt.c_memstream_Append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_memstream = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_memstream*, i8*)* @memstream_Append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memstream_Append(%struct.vlc_memstream* %0, i8* %1) #0 {
  %3 = alloca %struct.vlc_memstream*, align 8
  %4 = alloca i8*, align 8
  store %struct.vlc_memstream* %0, %struct.vlc_memstream** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.vlc_memstream*, %struct.vlc_memstream** %3, align 8
  %6 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.vlc_memstream*, %struct.vlc_memstream** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %10, i8* %11)
  %13 = load %struct.vlc_memstream*, %struct.vlc_memstream** %3, align 8
  %14 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %13, i8 signext 10)
  br label %15

15:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @vlc_memstream_puts(%struct.vlc_memstream*, i8*) #1

declare dso_local i32 @vlc_memstream_putc(%struct.vlc_memstream*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
