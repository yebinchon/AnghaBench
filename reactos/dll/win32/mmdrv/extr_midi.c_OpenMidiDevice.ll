; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_midi.c_OpenMidiDevice.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_midi.c_OpenMidiDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32*, i8*, i32, i64, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"OpenMidiDevice()\0A\00", align 1
@Heap = common dso_local global i32 0, align 4
@MMSYSERR_NOMEM = common dso_local global i64 0, align 8
@LOCAL_MIDI_BUFFERS = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i64, i64)* @OpenMidiDevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @OpenMidiDevice(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__**, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  %16 = load i64, i64* @MMSYSERR_NOERROR, align 8
  store i64 %16, i64* %13, align 8
  %17 = call i32 @DPRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %41 [
    i32 128, label %19
    i32 129, label %30
  ]

19:                                               ; preds = %5
  %20 = load i32, i32* @Heap, align 4
  %21 = call i32 @HeapAlloc(i32 %20, i32 0, i32 4)
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %12, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %28 = call i32 @memset(%struct.TYPE_7__* %27, i32 0, i32 4)
  br label %29

29:                                               ; preds = %26, %19
  br label %41

30:                                               ; preds = %5
  %31 = load i32, i32* @Heap, align 4
  %32 = call i32 @HeapAlloc(i32 %31, i32 0, i32 8)
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %12, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %36 = icmp ne %struct.TYPE_7__* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %39 = call i32 @memset(%struct.TYPE_7__* %38, i32 0, i32 8)
  br label %40

40:                                               ; preds = %37, %30
  br label %41

41:                                               ; preds = %5, %40, %29
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* @MMSYSERR_NOMEM, align 8
  store i64 %45, i64* %6, align 8
  br label %165

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 129
  br i1 %48, label %49, label %74

49:                                               ; preds = %46
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 1
  %52 = bitcast %struct.TYPE_7__* %51 to %struct.TYPE_8__*
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 9
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %54, align 8
  store i32 0, i32* %14, align 4
  br label %55

55:                                               ; preds = %70, %49
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @LOCAL_MIDI_BUFFERS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 9
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %69, align 8
  br label %70

70:                                               ; preds = %59
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %55

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %73, %46
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i64, i64* %10, align 8
  %79 = inttoptr i64 %78 to %struct.TYPE_9__*
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 8
  %84 = load i64, i64* %10, align 8
  %85 = inttoptr i64 %84 to %struct.TYPE_9__*
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 4
  %90 = load i64, i64* %10, align 8
  %91 = inttoptr i64 %90 to %struct.TYPE_9__*
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 5
  store i64 %96, i64* %98, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 4
  %103 = load i32, i32* @GENERIC_READ, align 4
  %104 = load i32, i32* @GENERIC_WRITE, align 4
  %105 = or i32 %103, %104
  %106 = call i64 @OpenDevice(i32 %99, i64 %100, i32* %102, i32 %105)
  store i64 %106, i64* %13, align 8
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %74
  %111 = load i64, i64* %13, align 8
  store i64 %111, i64* %6, align 8
  br label %165

112:                                              ; preds = %74
  %113 = load i32, i32* @FALSE, align 4
  %114 = load i32, i32* @FALSE, align 4
  %115 = call i8* @CreateEvent(i32* null, i32 %113, i32 %114, i32* null)
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %112
  %123 = load i64, i64* @MMSYSERR_NOMEM, align 8
  store i64 %123, i64* %6, align 8
  br label %165

124:                                              ; preds = %112
  %125 = load i32, i32* %7, align 4
  %126 = icmp eq i32 %125, 129
  br i1 %126, label %127, label %159

127:                                              ; preds = %124
  %128 = load i32, i32* @FALSE, align 4
  %129 = load i32, i32* @FALSE, align 4
  %130 = call i8* @CreateEvent(i32* null, i32 %128, i32 %129, i32* null)
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  store i32* %131, i32** %133, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %127
  %139 = load i64, i64* @MMSYSERR_NOMEM, align 8
  store i64 %139, i64* %6, align 8
  br label %165

140:                                              ; preds = %127
  %141 = load i32, i32* @FALSE, align 4
  %142 = load i32, i32* @FALSE, align 4
  %143 = call i8* @CreateEvent(i32* null, i32 %141, i32 %142, i32* null)
  %144 = bitcast i8* %143 to i32*
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  store i32* %144, i32** %146, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %140
  %152 = load i64, i64* @MMSYSERR_NOMEM, align 8
  store i64 %152, i64* %6, align 8
  br label %165

153:                                              ; preds = %140
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* @INFINITE, align 4
  %158 = call i32 @WaitForSingleObject(i32* %156, i32 %157)
  br label %159

159:                                              ; preds = %153, %124
  %160 = load i64, i64* %9, align 8
  %161 = inttoptr i64 %160 to %struct.TYPE_7__**
  store %struct.TYPE_7__** %161, %struct.TYPE_7__*** %15, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %163 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  store %struct.TYPE_7__* %162, %struct.TYPE_7__** %163, align 8
  %164 = load i64, i64* @MMSYSERR_NOERROR, align 8
  store i64 %164, i64* %6, align 8
  br label %165

165:                                              ; preds = %159, %151, %138, %122, %110, %44
  %166 = load i64, i64* %6, align 8
  ret i64 %166
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @OpenDevice(i32, i64, i32*, i32) #1

declare dso_local i8* @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i32 @WaitForSingleObject(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
