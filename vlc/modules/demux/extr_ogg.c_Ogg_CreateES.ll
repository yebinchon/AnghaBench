; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_CreateES.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_CreateES.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32, i32, i32, i32*, %struct.TYPE_16__, i32, i64 }
%struct.TYPE_16__ = type { i64, i32, i64 }

@VLC_CODEC_MPGA = common dso_local global i64 0, align 8
@VLC_CODEC_A52 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"will reuse old stream to avoid glitch\00", align 1
@ES_OUT_SET_ES_FMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"old stream not reused\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @Ogg_CreateES to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ogg_CreateES(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %3, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %142, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %145

20:                                               ; preds = %14
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %23, i64 %25
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %6, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %141

32:                                               ; preds = %20
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %141, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VLC_CODEC_MPGA, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VLC_CODEC_A52, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44, %37
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %44
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = icmp ne %struct.TYPE_13__* %56, null
  br i1 %57, label %58, label %131

58:                                               ; preds = %55
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %68, label %131

68:                                               ; preds = %58
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %72, %76
  br i1 %77, label %78, label %131

78:                                               ; preds = %68
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %131

83:                                               ; preds = %78
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %131

88:                                               ; preds = %83
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %90 = call i32 @msg_Dbg(%struct.TYPE_14__* %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 3
  store i32* %93, i32** %95, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  store i32 0, i32* %101, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 6
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 5
  %106 = call i32 @es_format_Clean(i32* %105)
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 4
  %111 = call i32 @es_format_Copy(i32* %108, %struct.TYPE_16__* %110)
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %114 = call i32 @Ogg_LogicalStreamResetEsFormat(%struct.TYPE_14__* %112, %struct.TYPE_13__* %113)
  store i32 %114, i32* %7, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 3
  store i32* null, i32** %116, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %88
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @ES_OUT_SET_ES_FMT, align 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 4
  %129 = call i32 @es_out_Control(i32 %122, i32 %123, i32* %126, %struct.TYPE_16__* %128)
  br label %130

130:                                              ; preds = %119, %88
  br label %140

131:                                              ; preds = %83, %78, %68, %58, %55
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 4
  %137 = call i32* @es_out_Add(i32 %134, %struct.TYPE_16__* %136)
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 3
  store i32* %137, i32** %139, align 8
  br label %140

140:                                              ; preds = %131, %130
  br label %141

141:                                              ; preds = %140, %32, %20
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %14

145:                                              ; preds = %14
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = icmp ne %struct.TYPE_13__* %148, null
  br i1 %149, label %150, label %168

150:                                              ; preds = %145
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %159 = call i32 @msg_Dbg(%struct.TYPE_14__* %158, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %150
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = call i32 @Ogg_LogicalStreamDelete(%struct.TYPE_14__* %161, %struct.TYPE_13__* %164)
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %167, align 8
  br label %168

168:                                              ; preds = %160, %145
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  store i32 1, i32* %170, align 4
  ret void
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @es_format_Clean(i32*) #1

declare dso_local i32 @es_format_Copy(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @Ogg_LogicalStreamResetEsFormat(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @es_out_Control(i32, i32, i32*, %struct.TYPE_16__*) #1

declare dso_local i32* @es_out_Add(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @Ogg_LogicalStreamDelete(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
