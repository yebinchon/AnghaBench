; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_directsound.c_FillBuffer.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_directsound.c_FillBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@DS_BUF_SIZE = common dso_local global i64 0, align 8
@DSERR_BUFFERLOST = common dso_local global i64 0, align 8
@DS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"cannot lock buffer\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Buffer overrun\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_7__*, %struct.TYPE_6__*)* @FillBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FillBuffer(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  br label %22

20:                                               ; preds = %3
  %21 = load i64, i64* @DS_BUF_SIZE, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i64 [ %19, %16 ], [ %21, %20 ]
  store i64 %23, i64* %8, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = call i32 @vlc_mutex_lock(i32* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @IDirectSoundBuffer_Lock(i32 %29, i64 %32, i64 %33, i8** %9, i64* %11, i8** %10, i64* %12, i32 0)
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* @DSERR_BUFFERLOST, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %22
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IDirectSoundBuffer_Restore(i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @IDirectSoundBuffer_Lock(i32 %45, i64 %48, i64 %49, i8** %9, i64* %11, i8** %10, i64* %12, i32 0)
  store i64 %50, i64* %13, align 8
  br label %51

51:                                               ; preds = %38, %22
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* @DS_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @msg_Warn(i32* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = icmp ne %struct.TYPE_6__* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = call i32 @block_Release(%struct.TYPE_6__* %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = call i32 @vlc_mutex_unlock(i32* %65)
  %67 = load i64, i64* %13, align 8
  store i64 %67, i64* %4, align 8
  br label %166

68:                                               ; preds = %51
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %70 = icmp eq %struct.TYPE_6__* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i8*, i8** %9, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @memset(i8* %72, i32 0, i64 %73)
  %75 = load i8*, i8** %10, align 8
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @memset(i8* %75, i32 0, i64 %76)
  br label %138

78:                                               ; preds = %68
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %78
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @aout_ChannelReorder(i64 %86, i64 %89, i32 %92, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %83, %78
  %101 = load i8*, i8** %9, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %11, align 8
  %106 = call i32 @memcpy(i8* %101, i64 %104, i64 %105)
  %107 = load i8*, i8** %10, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %121

109:                                              ; preds = %100
  %110 = load i64, i64* %12, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load i8*, i8** %10, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %11, align 8
  %118 = add i64 %116, %117
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @memcpy(i8* %113, i64 %118, i64 %119)
  br label %121

121:                                              ; preds = %112, %109, %100
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* %12, align 8
  %124 = add i64 %122, %123
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ult i64 %124, %127
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %121
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 @msg_Err(i32* %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %121
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %137 = call i32 @block_Release(%struct.TYPE_6__* %136)
  br label %138

138:                                              ; preds = %135, %71
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load i8*, i8** %9, align 8
  %143 = load i64, i64* %11, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = load i64, i64* %12, align 8
  %146 = call i32 @IDirectSoundBuffer_Unlock(i32 %141, i8* %142, i64 %143, i8* %144, i64 %145)
  %147 = load i64, i64* %8, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, %147
  store i64 %151, i64* %149, align 8
  %152 = load i64, i64* @DS_BUF_SIZE, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = urem i64 %155, %152
  store i64 %156, i64* %154, align 8
  %157 = load i64, i64* %8, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, %157
  store i64 %161, i64* %159, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  %164 = call i32 @vlc_mutex_unlock(i32* %163)
  %165 = load i64, i64* @DS_OK, align 8
  store i64 %165, i64* %4, align 8
  br label %166

166:                                              ; preds = %138, %63
  %167 = load i64, i64* %4, align 8
  ret i64 %167
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @IDirectSoundBuffer_Lock(i32, i64, i64, i8**, i64*, i8**, i64*, i32) #1

declare dso_local i32 @IDirectSoundBuffer_Restore(i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @block_Release(%struct.TYPE_6__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @aout_ChannelReorder(i64, i64, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @IDirectSoundBuffer_Unlock(i32, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
