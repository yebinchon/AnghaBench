; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_ThdProbe.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_ThdProbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"thd\00", align 1
@__const.ThdProbe.ppsz_name = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@WAVE_FORMAT_PCM = common dso_local global i32 0, align 4
@WAVE_FORMAT_UNKNOWN = common dso_local global i32 0, align 4
@ThdCheckSync = common dso_local global i32 0, align 4
@BASE_PROBE_SIZE = common dso_local global i32 0, align 4
@WAV_EXTRA_PROBE_SIZE = common dso_local global i32 0, align 4
@GenericFormatCheck = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ThdProbe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ThdProbe(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [2 x i8*], align 16
  %6 = alloca [2 x i32], align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = bitcast [2 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([2 x i8*]* @__const.ThdProbe.ppsz_name to i8*), i64 16, i1 false)
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %9 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @WAVE_FORMAT_UNKNOWN, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %15 = load i32, i32* @ThdCheckSync, align 4
  %16 = load i32, i32* @BASE_PROBE_SIZE, align 4
  %17 = load i32, i32* @WAV_EXTRA_PROBE_SIZE, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %19 = load i32, i32* @GenericFormatCheck, align 4
  %20 = call i32 @GenericProbe(i32* %12, i32* %13, i8** %14, i32 %15, i32 96, i32 %16, i32 %17, i32 0, i32* %18, i32 %19)
  ret i32 %20
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GenericProbe(i32*, i32*, i8**, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
