; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_AVI_PacketNext.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_AVI_PacketNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@AVIFOURCC_LIST = common dso_local global i64 0, align 8
@AVIFOURCC_rec = common dso_local global i64 0, align 8
@AVIFOURCC_movi = common dso_local global i64 0, align 8
@AVIFOURCC_RIFF = common dso_local global i64 0, align 8
@AVIFOURCC_AVIX = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i32 0, align 4
@SSIZE_MAX = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @AVI_PacketNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVI_PacketNext(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = call i64 @AVI_PacketGetHeader(%struct.TYPE_6__* %7, %struct.TYPE_7__* %4)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %11, i32* %2, align 4
  br label %76

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AVIFOURCC_LIST, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AVIFOURCC_rec, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AVIFOURCC_movi, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %17
  store i64 12, i64* %5, align 8
  br label %54

28:                                               ; preds = %22, %12
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AVIFOURCC_RIFF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AVIFOURCC_AVIX, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i64 24, i64* %5, align 8
  br label %53

39:                                               ; preds = %33, %28
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @UINT32_MAX, align 4
  %43 = sub nsw i32 %42, 9
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %46, i32* %2, align 4
  br label %76

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @__EVEN(i32 %49)
  %51 = add nsw i32 %50, 8
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %47, %38
  br label %54

54:                                               ; preds = %53, %27
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @SSIZE_MAX, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %59, i32* %2, align 4
  br label %76

60:                                               ; preds = %54
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %5, align 8
  %65 = call i64 @vlc_stream_Read(i32 %63, i32* null, i64 %64)
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %60
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %5, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68, %60
  %73 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %73, i32* %2, align 4
  br label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %72, %58, %45, %10
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @AVI_PacketGetHeader(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @__EVEN(i32) #1

declare dso_local i64 @vlc_stream_Read(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
