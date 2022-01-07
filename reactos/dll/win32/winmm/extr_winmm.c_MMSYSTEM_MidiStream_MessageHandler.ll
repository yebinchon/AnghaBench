; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_winmm.c_MMSYSTEM_MidiStream_MessageHandler.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_winmm.c_MMSYSTEM_MidiStream_MessageHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_14__*, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"STOP\0A\00", align 1
@MHDR_DONE = common dso_local global i32 0, align 4
@MHDR_INQUEUE = common dso_local global i32 0, align 4
@MM_MOM_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"Adding %s lpMidiHdr=%p [lpData=0x%p dwBufferLength=%u/%u dwFlags=0x%08x size=%lu]\0A\00", align 1
@MHDR_ISSTRM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"regular\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Dropping bad %s lpMidiHdr (streamID=%08x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Unknown message %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@dwToGo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_13__*)* @MMSYSTEM_MidiStream_MessageHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MMSYSTEM_MidiStream_MessageHandler(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__**, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %213 [
    i32 128, label %14
    i32 129, label %20
    i32 130, label %73
  ]

14:                                               ; preds = %3
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @SetEvent(i32 %17)
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %4, align 4
  br label %220

20:                                               ; preds = %3
  %21 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @midiOutReset(i32 %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %8, align 8
  br label %29

29:                                               ; preds = %62, %20
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = icmp ne %struct.TYPE_14__* %30, null
  br i1 %31, label %32, label %66

32:                                               ; preds = %29
  %33 = load i32, i32* @MHDR_DONE, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* @MHDR_INQUEUE, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MM_MOM_DONE, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %60 = ptrtoint %struct.TYPE_14__* %59 to i32
  %61 = call i32 @DriverCallback(i32 %47, i32 %50, i32 %53, i32 %54, i32 %58, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %32
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  store %struct.TYPE_14__* %65, %struct.TYPE_14__** %8, align 8
  br label %29

66:                                               ; preds = %29
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %68, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @SetEvent(i32 %71)
  br label %218

73:                                               ; preds = %3
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = call i32 (...) @GetTickCount()
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %73
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %87, %struct.TYPE_14__** %8, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i32*
  store i32* %92, i32** %10, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MHDR_ISSTRM, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i8* %100, %struct.TYPE_14__* %101, %struct.TYPE_14__* %102, i32 %105, i32 %108, i32 %111, i32 %114)
  %116 = load i32*, i32** %10, align 8
  %117 = bitcast i32* %116 to %struct.TYPE_15__*
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %178

121:                                              ; preds = %82
  %122 = load i32*, i32** %10, align 8
  %123 = bitcast i32* %122 to %struct.TYPE_15__*
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, -1
  br i1 %126, label %127, label %178

127:                                              ; preds = %121
  %128 = load i32*, i32** %10, align 8
  %129 = bitcast i32* %128 to %struct.TYPE_15__*
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %133 = ptrtoint %struct.TYPE_11__* %132 to i32
  %134 = icmp ne i32 %131, %133
  br i1 %134, label %135, label %178

135:                                              ; preds = %127
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @MHDR_ISSTRM, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %144 = load i32*, i32** %10, align 8
  %145 = bitcast i32* %144 to %struct.TYPE_15__*
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %143, i32 %147)
  %149 = load i32, i32* @MHDR_DONE, align 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load i32, i32* @MHDR_INQUEUE, align 4
  %155 = xor i32 %154, -1
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @MM_MOM_DONE, align 4
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %176 = ptrtoint %struct.TYPE_14__* %175 to i32
  %177 = call i32 @DriverCallback(i32 %163, i32 %166, i32 %169, i32 %170, i32 %174, i32 %176, i32 0)
  br label %218

178:                                              ; preds = %127, %121, %82
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  store %struct.TYPE_14__** %180, %struct.TYPE_14__*** %9, align 8
  br label %181

181:                                              ; preds = %186, %178
  %182 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = icmp ne %struct.TYPE_14__* %183, null
  br i1 %184, label %185, label %190

185:                                              ; preds = %181
  br label %186

186:                                              ; preds = %185
  %187 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 3
  store %struct.TYPE_14__** %189, %struct.TYPE_14__*** %9, align 8
  br label %181

190:                                              ; preds = %181
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %192 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  store %struct.TYPE_14__* %191, %struct.TYPE_14__** %192, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = inttoptr i64 %196 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %197, %struct.TYPE_14__** %8, align 8
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %199, align 8
  %200 = load i32, i32* @MHDR_INQUEUE, align 4
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  %205 = load i32, i32* @MHDR_DONE, align 4
  %206 = xor i32 %205, -1
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = and i32 %209, %206
  store i32 %210, i32* %208, align 8
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 2
  store i32 0, i32* %212, align 8
  br label %218

213:                                              ; preds = %3
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %216)
  br label %218

218:                                              ; preds = %213, %190, %135, %66
  %219 = load i32, i32* @TRUE, align 4
  store i32 %219, i32* %4, align 4
  br label %220

220:                                              ; preds = %218, %14
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local i32 @SetEvent(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @midiOutReset(i32) #1

declare dso_local i32 @DriverCallback(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetTickCount(...) #1

declare dso_local i32 @FIXME(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
