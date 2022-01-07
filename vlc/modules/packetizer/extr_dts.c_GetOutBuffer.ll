; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_dts.c_GetOutBuffer.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_dts.c_GetOutBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"DTS samplerate:%d bitrate:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_14__*)* @GetOutBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @GetOutBuffer(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %4, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %18, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %13, %1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @msg_Dbg(%struct.TYPE_14__* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %29, i32 %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @date_Init(i32* %36, i64 %40, i32 1)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @date_Set(i32* %43, i32 %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %24, %13
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  store i64 %54, i64* %58, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %63, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %50
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  store i64 %73, i64* %77, align 8
  br label %78

78:                                               ; preds = %69, %50
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 5
  store i32 %82, i32* %86, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 4
  store i32 %90, i32* %94, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  store i32 %98, i32* %102, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @vlc_popcount(i32 %107)
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 3
  store i32 %108, i32* %112, align 4
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call %struct.TYPE_16__* @block_Alloc(i32 %122)
  store %struct.TYPE_16__* %123, %struct.TYPE_16__** %5, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %125 = icmp eq %struct.TYPE_16__* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %78
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %154

127:                                              ; preds = %78
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = call i64 @date_Get(i32* %135)
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 3
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  store i64 %136, i64* %140, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @date_Increment(i32* %142, i32 %145)
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %146, %149
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 2
  store i64 %150, i64* %152, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %153, %struct.TYPE_16__** %2, align 8
  br label %154

154:                                              ; preds = %127, %126
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  ret %struct.TYPE_16__* %155
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_14__*, i8*, i64, i32) #1

declare dso_local i32 @date_Init(i32*, i64, i32) #1

declare dso_local i32 @date_Set(i32*, i32) #1

declare dso_local i32 @vlc_popcount(i32) #1

declare dso_local %struct.TYPE_16__* @block_Alloc(i32) #1

declare dso_local i64 @date_Get(i32*) #1

declare dso_local i64 @date_Increment(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
