; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_PacketizerGetCc.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_PacketizerGetCc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32* (%struct.TYPE_6__*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decoder_owner*, %struct.TYPE_6__*)* @PacketizerGetCc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PacketizerGetCc(%struct.decoder_owner* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.decoder_owner*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.decoder_owner* %0, %struct.decoder_owner** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %8 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32* (%struct.TYPE_6__*, i32*)*, i32* (%struct.TYPE_6__*, i32*)** %15, align 8
  %17 = icmp ne i32* (%struct.TYPE_6__*, i32*)* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32* (%struct.TYPE_6__*, i32*)*, i32* (%struct.TYPE_6__*, i32*)** %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = call i32* %22(%struct.TYPE_6__* %23, i32* %6)
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %13
  br label %32

28:                                               ; preds = %13
  %29 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @DecoderPlayCc(%struct.decoder_owner* %29, i32* %30, i32* %6)
  br label %32

32:                                               ; preds = %28, %27, %12
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DecoderPlayCc(%struct.decoder_owner*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
