; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_svcdsub.c_Reassemble.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_svcdsub.c_Reassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i32, i32, i32* }
%struct.TYPE_16__ = type { i32, i64, i32* }

@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@SPU_HEADER_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"invalid packet header (size %zu < %u)\00", align 1
@SUBTITLE_BLOCK_EMPTY = common dso_local global i64 0, align 8
@SUBTITLE_BLOCK_COMPLETE = common dso_local global i64 0, align 8
@SUBTITLE_BLOCK_PARTIAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"expected subtitle image %u but found %u\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"expected subtitle image packet %u but found %u\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"unable to assemble blocks, discarding\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"subtitle packets size=%zu should be %zu\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"subtitle packet complete, size=%zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_14__*, %struct.TYPE_16__*)* @Reassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @Reassemble(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %6, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = call i32 @block_Release(%struct.TYPE_16__* %22)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %197

24:                                               ; preds = %2
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SPU_HEADER_LEN, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, i64* @SPU_HEADER_LEN, align 8
  %37 = call i32 (%struct.TYPE_14__*, i8*, i32, ...) @msg_Dbg(%struct.TYPE_14__* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %35, i64 %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = call i32 @block_Release(%struct.TYPE_16__* %38)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %197

40:                                               ; preds = %24
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %7, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SUBTITLE_BLOCK_EMPTY, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %8, align 8
  store i32 0, i32* %10, align 4
  br label %62

54:                                               ; preds = %40
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %8, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %54, %49
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 128
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load i64, i64* @SUBTITLE_BLOCK_COMPLETE, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %7, align 8
  %75 = load i32, i32* %73, align 4
  %76 = and i32 %75, 127
  store i32 %76, i32* %9, align 4
  br label %84

77:                                               ; preds = %62
  %78 = load i64, i64* @SUBTITLE_BLOCK_PARTIAL, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %7, align 8
  %83 = load i32, i32* %81, align 4
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %77, %69
  %85 = load i32*, i32** %7, align 8
  %86 = call i64 @GETINT16(i32* %85)
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %84
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Warn(%struct.TYPE_14__* %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %96, i64 %99)
  br label %101

101:                                              ; preds = %94, %84
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Warn(%struct.TYPE_14__* %106, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %105, %101
  %111 = load i64, i64* @SPU_HEADER_LEN, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 %111
  store i32* %115, i32** %113, align 8
  %116 = load i64, i64* @SPU_HEADER_LEN, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %119, %116
  store i64 %120, i64* %118, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %110
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %131 = call i32 @ParseHeader(%struct.TYPE_14__* %129, %struct.TYPE_16__* %130)
  br label %132

132:                                              ; preds = %128, %110
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %136 = call i32 @block_ChainAppend(i32** %134, %struct.TYPE_16__* %135)
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @SUBTITLE_BLOCK_COMPLETE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %196

142:                                              ; preds = %132
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = call %struct.TYPE_16__* @block_ChainGather(i32* %145)
  store %struct.TYPE_16__* %146, %struct.TYPE_16__** %11, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %148 = icmp ne %struct.TYPE_16__* %147, null
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = call i64 @unlikely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %142
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @block_ChainRelease(i32* %156)
  %158 = load i64, i64* @SUBTITLE_BLOCK_EMPTY, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 4
  store i32* null, i32** %162, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %164 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Warn(%struct.TYPE_14__* %163, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %197

165:                                              ; preds = %142
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = icmp ne i64 %168, %172
  br i1 %173, label %174, label %183

174:                                              ; preds = %165
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (%struct.TYPE_14__*, i8*, ...) @msg_Warn(%struct.TYPE_14__* %175, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %178, i32 %181)
  br label %183

183:                                              ; preds = %174, %165
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = call i32 (%struct.TYPE_14__*, i8*, i32, ...) @msg_Dbg(%struct.TYPE_14__* %184, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %188)
  %190 = load i64, i64* @SUBTITLE_BLOCK_EMPTY, align 8
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  store i64 %190, i64* %192, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 4
  store i32* null, i32** %194, align 8
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %195, %struct.TYPE_16__** %3, align 8
  br label %197

196:                                              ; preds = %132
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %197

197:                                              ; preds = %196, %183, %153, %30, %21
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %198
}

declare dso_local i32 @block_Release(%struct.TYPE_16__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_14__*, i8*, i32, ...) #1

declare dso_local i64 @GETINT16(i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @ParseHeader(%struct.TYPE_14__*, %struct.TYPE_16__*) #1

declare dso_local i32 @block_ChainAppend(i32**, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @block_ChainGather(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @block_ChainRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
