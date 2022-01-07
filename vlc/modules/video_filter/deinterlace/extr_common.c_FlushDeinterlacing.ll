; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_common.c_FlushDeinterlacing.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_common.c_FlushDeinterlacing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deinterlace_ctx = type { i32**, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@METADATA_SIZE = common dso_local global i32 0, align 4
@HISTORY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FlushDeinterlacing(%struct.deinterlace_ctx* %0) #0 {
  %2 = alloca %struct.deinterlace_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.deinterlace_ctx* %0, %struct.deinterlace_ctx** %2, align 8
  %5 = load i32, i32* @VLC_TICK_INVALID, align 4
  %6 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32 %5, i32* %10, align 4
  %11 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 2, i32* %15, align 4
  %16 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %41, %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @METADATA_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %37
  %39 = bitcast %struct.TYPE_2__* %31 to i8*
  %40 = bitcast %struct.TYPE_2__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 12, i1 false)
  br label %41

41:                                               ; preds = %25
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %21

44:                                               ; preds = %21
  %45 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %76, %44
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @HISTORY_SIZE, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %53 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %52, i32 0, i32 0
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %51
  %61 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %62 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @picture_Release(i32* %67)
  br label %69

69:                                               ; preds = %60, %51
  %70 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %71 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %47

79:                                               ; preds = %47
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @picture_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
