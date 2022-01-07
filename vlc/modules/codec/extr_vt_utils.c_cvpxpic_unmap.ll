; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_vt_utils.c_cvpxpic_unmap.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_vt_utils.c_cvpxpic_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@VLC_CODEC_CVPX_UYVY = common dso_local global i32 0, align 4
@VLC_CODEC_CVPX_NV12 = common dso_local global i32 0, align 4
@VLC_CODEC_CVPX_P010 = common dso_local global i32 0, align 4
@VLC_CODEC_CVPX_I420 = common dso_local global i32 0, align 4
@VLC_CODEC_CVPX_BGRA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid mapped_pic fmt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @cvpxpic_unmap(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %8 = bitcast %struct.TYPE_12__* %4 to i8*
  %9 = bitcast %struct.TYPE_12__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 8 %9, i64 4, i1 false)
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %27 [
    i32 128, label %12
    i32 130, label %15
    i32 129, label %18
    i32 131, label %21
    i32 132, label %24
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @VLC_CODEC_CVPX_UYVY, align 4
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load i32, i32* @VLC_CODEC_CVPX_NV12, align 4
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  br label %31

18:                                               ; preds = %1
  %19 = load i32, i32* @VLC_CODEC_CVPX_P010, align 4
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  br label %31

21:                                               ; preds = %1
  %22 = load i32, i32* @VLC_CODEC_CVPX_I420, align 4
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  br label %31

24:                                               ; preds = %1
  %25 = load i32, i32* @VLC_CODEC_CVPX_BGRA, align 4
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  br label %31

27:                                               ; preds = %1
  %28 = call i32 @assert(i32 0)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = call i32 @picture_Release(%struct.TYPE_13__* %29)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %55

31:                                               ; preds = %24, %21, %18, %15, %12
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = call %struct.TYPE_13__* @picture_NewFromFormat(%struct.TYPE_12__* %4)
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %5, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = icmp eq %struct.TYPE_13__* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = call i32 @picture_Release(%struct.TYPE_13__* %42)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %55

44:                                               ; preds = %31
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = call i32 @cvpxpic_get_ref(%struct.TYPE_13__* %46)
  %48 = call i32 @cvpxpic_attach(%struct.TYPE_13__* %45, i32 %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = call i32 @picture_CopyProperties(%struct.TYPE_13__* %49, %struct.TYPE_13__* %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = call i32 @picture_Release(%struct.TYPE_13__* %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %2, align 8
  br label %55

55:                                               ; preds = %44, %41, %27
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  ret %struct.TYPE_13__* %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @picture_Release(%struct.TYPE_13__*) #2

declare dso_local %struct.TYPE_13__* @picture_NewFromFormat(%struct.TYPE_12__*) #2

declare dso_local i32 @cvpxpic_attach(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @cvpxpic_get_ref(%struct.TYPE_13__*) #2

declare dso_local i32 @picture_CopyProperties(%struct.TYPE_13__*, %struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
