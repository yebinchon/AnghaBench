; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxedit.c_MuxCleanup.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxedit.c_MuxCleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }

@kChunks = common dso_local global %struct.TYPE_12__* null, align 8
@IDX_ANMF = common dso_local global i64 0, align 8
@WEBP_MUX_OK = common dso_local global i64 0, align 8
@IDX_ANIM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*)* @MuxCleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MuxCleanup(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kChunks, align 8
  %10 = load i64, i64* @IDX_ANMF, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @WebPMuxNumChunks(%struct.TYPE_11__* %8, i32 %13, i32* %4)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @WEBP_MUX_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %2, align 8
  br label %123

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %88

23:                                               ; preds = %20
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = bitcast i32* %25 to %struct.TYPE_10__**
  %27 = call i64 @MuxImageGetNth(%struct.TYPE_10__** %26, i32 1, %struct.TYPE_10__** %7)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @WEBP_MUX_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = icmp ne %struct.TYPE_10__* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = icmp ne %struct.TYPE_13__* %39, null
  br i1 %40, label %41, label %87

41:                                               ; preds = %23
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %87

59:                                               ; preds = %51
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %59, %46
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kChunks, align 8
  %74 = load i64, i64* @IDX_ANMF, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %72, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = call i32 @ChunkDelete(%struct.TYPE_13__* %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %86, align 8
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %67, %59, %51, %23
  br label %88

88:                                               ; preds = %87, %20
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kChunks, align 8
  %91 = load i64, i64* @IDX_ANIM, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @WebPMuxNumChunks(%struct.TYPE_11__* %89, i32 %94, i32* %5)
  store i64 %95, i64* %6, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* @WEBP_MUX_OK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %88
  %100 = load i64, i64* %6, align 8
  store i64 %100, i64* %2, align 8
  br label %123

101:                                              ; preds = %88
  %102 = load i32, i32* %5, align 4
  %103 = icmp sge i32 %102, 1
  br i1 %103, label %104, label %121

104:                                              ; preds = %101
  %105 = load i32, i32* %4, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %104
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kChunks, align 8
  %110 = load i64, i64* @IDX_ANIM, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @MuxDeleteAllNamedData(%struct.TYPE_11__* %108, i64 %113)
  store i64 %114, i64* %6, align 8
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* @WEBP_MUX_OK, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = load i64, i64* %6, align 8
  store i64 %119, i64* %2, align 8
  br label %123

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120, %104, %101
  %122 = load i64, i64* @WEBP_MUX_OK, align 8
  store i64 %122, i64* %2, align 8
  br label %123

123:                                              ; preds = %121, %118, %99, %18
  %124 = load i64, i64* %2, align 8
  ret i64 %124
}

declare dso_local i64 @WebPMuxNumChunks(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i64 @MuxImageGetNth(%struct.TYPE_10__**, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ChunkDelete(%struct.TYPE_13__*) #1

declare dso_local i64 @MuxDeleteAllNamedData(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
