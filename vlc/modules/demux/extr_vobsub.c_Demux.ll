; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_vobsub.c_Demux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_vobsub.c_Demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i64 }

@.str = private unnamed_addr constant [49 x i8] c"cannot seek in the VobSub to the correct time %d\00", align 1
@VLC_TICK_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @Demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Demux(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %3, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %171, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %174

19:                                               ; preds = %13
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i64 %24
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %6, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp uge i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %171

34:                                               ; preds = %19
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %48, %40, %34
  br label %60

60:                                               ; preds = %165, %124, %59
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %63, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %60
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %4, align 8
  %79 = icmp slt i64 %77, %78
  br label %80

80:                                               ; preds = %68, %60
  %81 = phi i1 [ false, %60 ], [ %79, %68 ]
  br i1 %81, label %82, label %170

82:                                               ; preds = %80
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, 1
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ult i64 %95, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %82
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, 1
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sub nsw i32 %110, %111
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %100, %82
  %114 = load i32, i32* %9, align 4
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 65535, i32* %9, align 4
  br label %117

117:                                              ; preds = %116, %113
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i64 @vlc_stream_Seek(i32 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %117
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @msg_Warn(%struct.TYPE_14__* %125, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %126)
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %129, align 8
  br label %60

132:                                              ; preds = %117
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call %struct.TYPE_16__* @vlc_stream_Block(i32 %135, i32 %136)
  store %struct.TYPE_16__* %137, %struct.TYPE_16__** %8, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %139 = icmp ne %struct.TYPE_16__* %138, null
  br i1 %139, label %140, label %165

140:                                              ; preds = %132
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp sgt i32 %143, 6
  br i1 %144, label %145, label %162

145:                                              ; preds = %140
  %146 = load i64, i64* @VLC_TICK_0, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %146, %155
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %161 = call i32 @DemuxVobSub(%struct.TYPE_14__* %159, %struct.TYPE_16__* %160)
  br label %162

162:                                              ; preds = %145, %140
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %164 = call i32 @block_Release(%struct.TYPE_16__* %163)
  br label %165

165:                                              ; preds = %162, %132
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %167, align 8
  br label %60

170:                                              ; preds = %80
  br label %171

171:                                              ; preds = %170, %33
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %5, align 4
  br label %13

174:                                              ; preds = %13
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  store i64 0, i64* %176, align 8
  ret i32 1
}

declare dso_local i64 @vlc_stream_Seek(i32, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local %struct.TYPE_16__* @vlc_stream_Block(i32, i32) #1

declare dso_local i32 @DemuxVobSub(%struct.TYPE_14__*, %struct.TYPE_16__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
