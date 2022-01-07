; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mciseq/extr_mcimidi.c_MIDI_mciReadNextEvent.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mciseq/extr_mcimidi.c_MIDI_mciReadNextEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Can't seek at %08X\0A\00", align 1
@MCIERR_INVALID_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"Ouch !! Implementation limitation to 64k bytes for a MIDI event is overflowed\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Strange indeed b1=0x%02x\0A\00", align 1
@MCIERR_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*)* @MIDI_mciReadNextEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MIDI_mciReadNextEvent(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @SEEK_SET, align 4
  %20 = call i64 @mmioSeek(i32 %15, i64 %18, i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @MCIERR_INVALID_FILE, align 4
  store i32 %30, i32* %3, align 4
  br label %130

31:                                               ; preds = %2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = call i32 @MIDI_mciReadVaryLen(%struct.TYPE_7__* %32, i32* %10)
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = call i32 @MIDI_mciReadByte(%struct.TYPE_7__* %35, i32* %6)
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %66 [
    i32 240, label %38
    i32 247, label %38
    i32 255, label %46
  ]

38:                                               ; preds = %31, %31
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = call i32 @MIDI_mciReadVaryLen(%struct.TYPE_7__* %39, i32* %12)
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %11, align 4
  br label %98

46:                                               ; preds = %31
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = call i32 @MIDI_mciReadByte(%struct.TYPE_7__* %47, i32* %7)
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = call i32 @MIDI_mciReadVaryLen(%struct.TYPE_7__* %51, i32* %12)
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp uge i32 %55, 65536
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  store i32 65535, i32* %9, align 4
  br label %62

59:                                               ; preds = %46
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @LOWORD(i32 %60)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %59, %57
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %11, align 4
  br label %98

66:                                               ; preds = %31
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, 128
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = call i32 @MIDI_mciReadByte(%struct.TYPE_7__* %74, i32* %7)
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %83

78:                                               ; preds = %66
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %7, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %78, %70
  %84 = load i32, i32* %6, align 4
  %85 = ashr i32 %84, 4
  %86 = and i32 %85, 7
  switch i32 %86, label %97 [
    i32 0, label %87
    i32 1, label %87
    i32 2, label %87
    i32 3, label %87
    i32 6, label %87
    i32 4, label %93
    i32 5, label %93
    i32 7, label %94
  ]

87:                                               ; preds = %83, %83, %83, %83, %83
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = call i32 @MIDI_mciReadByte(%struct.TYPE_7__* %88, i32* %8)
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %9, align 4
  br label %97

93:                                               ; preds = %83, %83
  br label %97

94:                                               ; preds = %83
  %95 = load i32, i32* %6, align 4
  %96 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %83, %93, %87
  br label %98

98:                                               ; preds = %97, %62, %38
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %101, %103
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp sgt i64 %104, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %98
  %111 = load i32, i32* @MCIERR_INTERNAL, align 4
  store i32 %111, i32* %3, align 4
  br label %130

112:                                              ; preds = %98
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load i32, i32* %9, align 4
  %119 = shl i32 %118, 16
  %120 = load i32, i32* %7, align 4
  %121 = shl i32 %120, 8
  %122 = add nsw i32 %119, %121
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %122, %123
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 4
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %112, %110, %25
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i64 @mmioSeek(i32, i64, i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @MIDI_mciReadVaryLen(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @MIDI_mciReadByte(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @LOWORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
