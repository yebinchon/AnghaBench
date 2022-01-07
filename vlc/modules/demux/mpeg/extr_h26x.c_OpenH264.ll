; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_h26x.c_OpenH264.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_h26x.c_OpenH264.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c".h264\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".264\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".bin\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".bit\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".raw\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"video/H264\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"video/h264\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"video/avc\00", align 1
@__const.OpenH264.rgi_psz_mime = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16
@.str.8 = private unnamed_addr constant [5 x i8] c"h264\00", align 1
@VLC_CODEC_H264 = common dso_local global i32 0, align 4
@ProbeH264 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @OpenH264 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenH264(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca [6 x i8*], align 16
  %5 = alloca [4 x i8*], align 16
  store i32* %0, i32** %2, align 8
  %6 = bitcast %struct.TYPE_3__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = bitcast [6 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 48, i1 false)
  %8 = bitcast i8* %7 to [6 x i8*]*
  %9 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %10, align 8
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %12, align 8
  %13 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8** %13, align 16
  %14 = bitcast [4 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([4 x i8*]* @__const.OpenH264.rgi_psz_mime to i8*), i64 32, i1 false)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @VLC_CODEC_H264, align 4
  %17 = load i32, i32* @ProbeH264, align 4
  %18 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %19 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %20 = call i32 @GenericOpen(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %16, i32 %17, %struct.TYPE_3__* %3, i8** %18, i8** %19)
  ret i32 %20
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GenericOpen(i32*, i8*, i32, i32, %struct.TYPE_3__*, i8**, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
