; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_common.c_InitDeinterlacingContext.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_common.c_InitDeinterlacingContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deinterlace_ctx = type { i32**, i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@METADATA_SIZE = common dso_local global i32 0, align 4
@HISTORY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitDeinterlacingContext(%struct.deinterlace_ctx* %0) #0 {
  %2 = alloca %struct.deinterlace_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.deinterlace_ctx* %0, %struct.deinterlace_ctx** %2, align 8
  %5 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32 0, i32* %13, align 8
  %14 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @VLC_TICK_INVALID, align 4
  %18 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i32 %17, i32* %22, align 4
  %23 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 2, i32* %27, align 4
  %28 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %53, %1
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @METADATA_SIZE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %45 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %49
  %51 = bitcast %struct.TYPE_4__* %43 to i8*
  %52 = bitcast %struct.TYPE_4__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 12, i1 false)
  br label %53

53:                                               ; preds = %37
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %33

56:                                               ; preds = %33
  %57 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %58 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %70, %56
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @HISTORY_SIZE, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %2, align 8
  %65 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %64, i32 0, i32 0
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %59

73:                                               ; preds = %59
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
