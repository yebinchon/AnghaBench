; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2conn_test.c_stream_continuation.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2conn_test.c_stream_continuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c":status\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@__const.stream_continuation.h = private unnamed_addr constant [1 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)]], align 16
@VLC_H2_DEFAULT_MAX_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @stream_continuation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stream_continuation(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x [2 x i8*]], align 16
  store i32 %0, i32* %2, align 4
  %4 = bitcast [1 x [2 x i8*]]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([1 x [2 x i8*]]* @__const.stream_continuation.h to i8*), i64 16, i1 false)
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @VLC_H2_DEFAULT_MAX_FRAME, align 4
  %7 = getelementptr inbounds [1 x [2 x i8*]], [1 x [2 x i8*]]* %3, i64 0, i64 0
  %8 = bitcast [2 x i8*]* %7 to i8***
  %9 = call i32 @vlc_h2_frame_headers(i32 %5, i32 %6, i32 0, i32 1, i8*** %8)
  %10 = call i32 @conn_send(i32 %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @conn_send(i32) #2

declare dso_local i32 @vlc_h2_frame_headers(i32, i32, i32, i32, i8***) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
