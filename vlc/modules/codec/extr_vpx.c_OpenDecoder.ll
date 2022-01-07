; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_vpx.c_OpenDecoder.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_vpx.c_OpenDecoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpx_codec_iface = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_10__, i32, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.vpx_codec_dec_cfg = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@Decode = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VPX_CODEC_OK = common dso_local global i64 0, align 8
@vpx_codec_vp8_dx_algo = common dso_local global %struct.vpx_codec_iface zeroinitializer, align 4
@vpx_codec_vp9_dx_algo = common dso_local global %struct.vpx_codec_iface zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @OpenDecoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenDecoder(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.vpx_codec_iface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.vpx_codec_dec_cfg, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %14 [
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @VLC_EGENERIC, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
