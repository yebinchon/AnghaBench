; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_cdda.c_Demux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_cdda.c_Demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }

@CDDA_BLOCKS_ONCE = common dso_local global i32 0, align 4
@VLC_DEMUXER_EOF = common dso_local global i32 0, align 4
@CDDA_DATA_SIZE = common dso_local global i32 0, align 4
@CDDA_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot read sector %u\00", align 1
@VLC_DEMUXER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @Demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Demux(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %4, align 8
  %10 = load i32, i32* @CDDA_BLOCKS_ONCE, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %19, i32* %2, align 4
  br label %130

20:                                               ; preds = %1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %20
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %31, %20
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @CDDA_DATA_SIZE, align 4
  %43 = mul i32 %41, %42
  %44 = call %struct.TYPE_12__* @block_Alloc(i32 %43)
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %6, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = icmp eq %struct.TYPE_12__* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %51, i32* %2, align 4
  br label %130

52:                                               ; preds = %40
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = call i32 @VLC_OBJECT(%struct.TYPE_10__* %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = zext i32 %60 to i64
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = trunc i64 %65 to i32
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @CDDA_TYPE, align 4
  %72 = call i64 @ioctl_ReadSectors(i32 %54, i32 %57, i32 %66, i32 %69, i32 %70, i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %52
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @msg_Err(%struct.TYPE_10__* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = call i32 @block_Release(%struct.TYPE_12__* %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %87, i32* %2, align 4
  br label %130

88:                                               ; preds = %52
  %89 = load i32, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sdiv i32 %97, 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 3
  %103 = call i32 @date_Get(i32* %102)
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  store i32 %103, i32* %107, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @date_Increment(i32* %109, i32 %112)
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %121 = call i32 @es_out_Send(i32 %116, i32 %119, %struct.TYPE_12__* %120)
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 3
  %127 = call i32 @date_Get(i32* %126)
  %128 = call i32 @es_out_SetPCR(i32 %124, i32 %127)
  %129 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %88, %74, %50, %18
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.TYPE_12__* @block_Alloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ioctl_ReadSectors(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_10__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_12__*) #1

declare dso_local i32 @date_Get(i32*) #1

declare dso_local i32 @date_Increment(i32*, i32) #1

declare dso_local i32 @es_out_Send(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @es_out_SetPCR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
