; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_pva.c_ParsePES.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_pva.c_ParsePES.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i64, i8* }

@.str = private unnamed_addr constant [40 x i8] c"invalid hdr [0x%2.2x:%2.2x:%2.2x:%2.2x]\00", align 1
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @ParsePES to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParsePES(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca [30 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %3, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %4, align 8
  store i64 -1, i64* %7, align 8
  store i64 -1, i64* %8, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %16, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds [30 x i32], [30 x i32]* %5, i64 0, i64 0
  %19 = call i32 @block_ChainExtract(%struct.TYPE_13__* %17, i32* %18, i32 30)
  %20 = getelementptr inbounds [30 x i32], [30 x i32]* %5, i64 0, i64 0
  %21 = load i32, i32* %20, align 16
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds [30 x i32], [30 x i32]* %5, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds [30 x i32], [30 x i32]* %5, i64 0, i64 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %44

31:                                               ; preds = %27, %23, %1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = getelementptr inbounds [30 x i32], [30 x i32]* %5, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = getelementptr inbounds [30 x i32], [30 x i32]* %5, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [30 x i32], [30 x i32]* %5, i64 0, i64 2
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds [30 x i32], [30 x i32]* %5, i64 0, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @msg_Warn(%struct.TYPE_11__* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36, i32 %38, i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = call i32 @block_ChainRelease(%struct.TYPE_13__* %42)
  br label %133

44:                                               ; preds = %27
  %45 = getelementptr inbounds [30 x i32], [30 x i32]* %5, i64 0, i64 8
  %46 = load i32, i32* %45, align 16
  %47 = add nsw i32 %46, 9
  store i32 %47, i32* %6, align 4
  %48 = getelementptr inbounds [30 x i32], [30 x i32]* %5, i64 0, i64 7
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 128
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %44
  %53 = getelementptr inbounds [30 x i32], [30 x i32]* %5, i64 0, i64 9
  %54 = call i64 @GetPESTimestamp(i32* %53)
  store i64 %54, i64* %8, align 8
  %55 = getelementptr inbounds [30 x i32], [30 x i32]* %5, i64 0, i64 7
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 64
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = getelementptr inbounds [30 x i32], [30 x i32]* %5, i64 0, i64 14
  %61 = call i64 @GetPESTimestamp(i32* %60)
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %59, %52
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = call %struct.TYPE_13__* @block_ChainGather(%struct.TYPE_13__* %64)
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %4, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = icmp eq %struct.TYPE_13__* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %133

72:                                               ; preds = %63
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = icmp ule i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = call i32 @block_ChainRelease(%struct.TYPE_13__* %79)
  br label %133

81:                                               ; preds = %72
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load i64, i64* %7, align 8
  %93 = icmp sge i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %81
  %95 = load i64, i64* %7, align 8
  %96 = call i8* @FROM_SCALE(i64 %95)
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %94, %81
  %100 = load i64, i64* %8, align 8
  %101 = icmp sge i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i64, i64* %8, align 8
  %104 = call i8* @FROM_SCALE(i64 %103)
  %105 = ptrtoint i8* %104 to i64
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %102, %99
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @VLC_TICK_INVALID, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %108
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @es_out_SetPCR(i32 %117, i64 %120)
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  br label %124

124:                                              ; preds = %114, %108
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %132 = call i32 @es_out_Send(i32 %127, i32 %130, %struct.TYPE_13__* %131)
  br label %133

133:                                              ; preds = %124, %78, %71, %31
  ret void
}

declare dso_local i32 @block_ChainExtract(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_11__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @block_ChainRelease(%struct.TYPE_13__*) #1

declare dso_local i64 @GetPESTimestamp(i32*) #1

declare dso_local %struct.TYPE_13__* @block_ChainGather(%struct.TYPE_13__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @FROM_SCALE(i64) #1

declare dso_local i32 @es_out_SetPCR(i32, i64) #1

declare dso_local i32 @es_out_Send(i32, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
