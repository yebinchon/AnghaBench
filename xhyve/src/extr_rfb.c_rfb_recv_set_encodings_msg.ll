; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_rfb.c_rfb_recv_set_encodings_msg.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_rfb.c_rfb_recv_set_encodings_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfb_softc = type { i32, i32, i32, i32 }
%struct.rfb_enc_msg = type { i32 }

@Z_BEST_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfb_softc*, i32)* @rfb_recv_set_encodings_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfb_recv_set_encodings_msg(%struct.rfb_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rfb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfb_enc_msg, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rfb_softc* %0, %struct.rfb_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @assert(i32 1)
  %9 = load i32, i32* %4, align 4
  %10 = bitcast %struct.rfb_enc_msg* %5 to i32*
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = call i32 @stream_read(i32 %9, i32* %11, i32 3)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %38, %2
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds %struct.rfb_enc_msg, %struct.rfb_enc_msg* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @htons(i32 %16)
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @stream_read(i32 %20, i32* %7, i32 4)
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @htonl(i32 %22)
  switch i32 %23, label %37 [
    i32 130, label %24
    i32 128, label %27
    i32 129, label %34
  ]

24:                                               ; preds = %19
  %25 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %26 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %37

27:                                               ; preds = %19
  %28 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %29 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %31 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %30, i32 0, i32 3
  %32 = load i32, i32* @Z_BEST_SPEED, align 4
  %33 = call i32 @deflateInit(i32* %31, i32 %32)
  br label %37

34:                                               ; preds = %19
  %35 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %36 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %35, i32 0, i32 2
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %19, %34, %27, %24
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %13

41:                                               ; preds = %13
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @stream_read(i32, i32*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @deflateInit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
