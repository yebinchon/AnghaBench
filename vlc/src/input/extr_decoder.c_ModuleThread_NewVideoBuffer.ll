; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_NewVideoBuffer.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_NewVideoBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @ModuleThread_NewVideoBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ModuleThread_NewVideoBuffer(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.decoder_owner*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.decoder_owner* @dec_get_owner(i32* %5)
  store %struct.decoder_owner* %6, %struct.decoder_owner** %3, align 8
  %7 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %8 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %12 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @picture_pool_Wait(i32 %13)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @picture_Reset(i32* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32*, i32** %4, align 8
  ret i32* %21
}

declare dso_local %struct.decoder_owner* @dec_get_owner(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @picture_pool_Wait(i32) #1

declare dso_local i32 @picture_Reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
