; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderHasCCChanFlag.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderHasCCChanFlag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@VLC_CODEC_CEA608 = common dso_local global i64 0, align 8
@VLC_CODEC_CEA708 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.decoder_owner*, i64, i32)* @input_DecoderHasCCChanFlag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_DecoderHasCCChanFlag(%struct.decoder_owner* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.decoder_owner*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.decoder_owner* %0, %struct.decoder_owner** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @VLC_CODEC_CEA608, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  store i32 4, i32* %8, align 4
  %14 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %15 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  br label %31

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @VLC_CODEC_CEA708, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  store i32 64, i32* %8, align 4
  %24 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %25 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  br label %30

29:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %47

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %13
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %38, %34, %31
  %45 = phi i1 [ false, %34 ], [ false, %31 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %29
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
