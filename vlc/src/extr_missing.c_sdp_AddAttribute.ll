; ModuleID = '/home/carl/AnghaBench/vlc/src/extr_missing.c_sdp_AddAttribute.c'
source_filename = "/home/carl/AnghaBench/vlc/src/extr_missing.c_sdp_AddAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_memstream = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdp_AddAttribute(%struct.vlc_memstream* %0, i8* %1, i8* %2, ...) #0 {
  %4 = alloca %struct.vlc_memstream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.vlc_memstream* %0, %struct.vlc_memstream** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %8 = bitcast %struct.vlc_memstream* %7 to i8*
  %9 = call i32 @VLC_UNUSED(i8* %8)
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @VLC_UNUSED(i8* %10)
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @VLC_UNUSED(i8* %12)
  %14 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %15 = icmp eq %struct.vlc_memstream* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  ret void
}

declare dso_local i32 @VLC_UNUSED(i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
