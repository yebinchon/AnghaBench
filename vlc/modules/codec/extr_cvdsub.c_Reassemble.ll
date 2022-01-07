; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cvdsub.c_Reassemble.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cvdsub.c_Reassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64, i32 }

@SPU_HEADER_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"invalid packet header (size %zu < %u)\00", align 1
@SUBTITLE_BLOCK_EMPTY = common dso_local global i64 0, align 8
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"first packet expected but no PTS present\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"SPU packets size=%zu should be %zu\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"subtitle packet complete, size=%zuu\00", align 1
@SUBTITLE_BLOCK_PARTIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_18__*, %struct.TYPE_20__*)* @Reassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @Reassemble(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %10, %struct.TYPE_19__** %6, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SPU_HEADER_LEN, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SPU_HEADER_LEN, align 8
  %22 = call i32 (%struct.TYPE_18__*, i8*, i64, ...) @msg_Dbg(%struct.TYPE_18__* %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %21)
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = call i32 @block_Release(%struct.TYPE_20__* %23)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %122

25:                                               ; preds = %2
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SUBTITLE_BLOCK_EMPTY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VLC_TICK_INVALID, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = call i32 (%struct.TYPE_18__*, i8*, ...) @msg_Warn(%struct.TYPE_18__* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %122

40:                                               ; preds = %31, %25
  %41 = load i64, i64* @SPU_HEADER_LEN, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 8
  %48 = load i64, i64* @SPU_HEADER_LEN, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SUBTITLE_BLOCK_EMPTY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %40
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = call i32 @ParseHeader(%struct.TYPE_18__* %59, %struct.TYPE_20__* %60)
  br label %62

62:                                               ; preds = %58, %40
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = call i32 @block_ChainAppend(%struct.TYPE_20__** %64, %struct.TYPE_20__* %65)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %68, align 8
  %70 = call %struct.TYPE_20__* @block_ChainGather(%struct.TYPE_20__* %69)
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 2
  store %struct.TYPE_20__* %70, %struct.TYPE_20__** %72, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %77, %80
  br i1 %81, label %82, label %117

82:                                               ; preds = %62
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %84, align 8
  store %struct.TYPE_20__* %85, %struct.TYPE_20__** %7, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %82
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (%struct.TYPE_18__*, i8*, ...) @msg_Warn(%struct.TYPE_18__* %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %97, i64 %100)
  br label %102

102:                                              ; preds = %93, %82
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (%struct.TYPE_18__*, i8*, i64, ...) @msg_Dbg(%struct.TYPE_18__* %103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %106)
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %110 = call i32 @ParseMetaInfo(%struct.TYPE_18__* %108, %struct.TYPE_20__* %109)
  %111 = load i64, i64* @SUBTITLE_BLOCK_EMPTY, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %115, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_20__* %116, %struct.TYPE_20__** %3, align 8
  br label %122

117:                                              ; preds = %62
  %118 = load i64, i64* @SUBTITLE_BLOCK_PARTIAL, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %117
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %122

122:                                              ; preds = %121, %102, %37, %16
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  ret %struct.TYPE_20__* %123
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_18__*, i8*, i64, ...) #1

declare dso_local i32 @block_Release(%struct.TYPE_20__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local i32 @ParseHeader(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local i32 @block_ChainAppend(%struct.TYPE_20__**, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @block_ChainGather(%struct.TYPE_20__*) #1

declare dso_local i32 @ParseMetaInfo(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
