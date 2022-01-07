; ModuleID = '/home/carl/AnghaBench/vlc/src/test/extr_picture_pool.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/src/test/extr_picture_pool.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt = common dso_local global i32 0, align 4
@VLC_CODEC_I420 = common dso_local global i32 0, align 4
@PICTURES = common dso_local global i32 0, align 4
@pool = common dso_local global i32* null, align 8
@reserve = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @VLC_CODEC_I420, align 4
  %3 = call i32 @video_format_Setup(i32* @fmt, i32 %2, i32 320, i32 200, i32 320, i32 200, i32 1, i32 1)
  %4 = load i32, i32* @PICTURES, align 4
  %5 = call i32* @picture_pool_NewFromFormat(i32* @fmt, i32 %4)
  store i32* %5, i32** @pool, align 8
  %6 = load i32*, i32** @pool, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32*, i32** @pool, align 8
  %11 = call i32 @picture_pool_GetSize(i32* %10)
  %12 = load i32, i32* @PICTURES, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** @pool, align 8
  %17 = load i32, i32* @PICTURES, align 4
  %18 = sdiv i32 %17, 2
  %19 = call i32* @picture_pool_Reserve(i32* %16, i32 %18)
  store i32* %19, i32** @reserve, align 8
  %20 = load i32*, i32** @reserve, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** @reserve, align 8
  %25 = call i32 @picture_pool_Release(i32* %24)
  %26 = load i32*, i32** @pool, align 8
  %27 = call i32 @picture_pool_Release(i32* %26)
  %28 = call i32 @test(i32 0)
  %29 = call i32 @test(i32 1)
  ret i32 0
}

declare dso_local i32 @video_format_Setup(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @picture_pool_NewFromFormat(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @picture_pool_GetSize(i32*) #1

declare dso_local i32* @picture_pool_Reserve(i32*, i32) #1

declare dso_local i32 @picture_pool_Release(i32*) #1

declare dso_local i32 @test(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
