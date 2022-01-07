; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/amstream/extr_amstream.c_test_audiodata_get_format.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/amstream/extr_amstream.c_test_audiodata_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@IID_IAudioData = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"No IAudioData\0A\00", align 1
@E_POINTER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@WAVE_FORMAT_PCM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_audiodata_get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_audiodata_get_format() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i64, align 8
  %5 = call i32* (...) @create_audio_data()
  store i32* %5, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %6 = bitcast %struct.TYPE_3__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 32, i1 false)
  %7 = load i32*, i32** %1, align 8
  %8 = bitcast i32** %2 to i8**
  %9 = call i64 @IUnknown_QueryInterface(i32* %7, i32* @IID_IAudioData, i8** %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @FAILED(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @skip(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %98

15:                                               ; preds = %0
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @IAudioData_GetFormat(i32* %16, %struct.TYPE_3__* null)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* @E_POINTER, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 57005, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 57005, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 -559038737, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i32 -559038737, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  store i32 57005, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 5
  store i32 57005, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 6
  store i32 57005, i32* %30, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = call i64 @IAudioData_GetFormat(i32* %31, %struct.TYPE_3__* %3)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %39, %41
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 1, %49
  %51 = zext i1 %50 to i32
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 11025, %57
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 22050, %65
  %67 = zext i1 %66 to i32
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 2, %73
  %75 = zext i1 %74 to i32
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %78)
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 16, %81
  %83 = zext i1 %82 to i32
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %86)
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 0, %89
  %91 = zext i1 %90 to i32
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %94)
  %96 = load i32*, i32** %2, align 8
  %97 = call i32 @IAudioData_Release(i32* %96)
  br label %98

98:                                               ; preds = %15, %13
  %99 = load i32*, i32** %1, align 8
  %100 = call i32 @IUnknown_Release(i32* %99)
  ret void
}

declare dso_local i32* @create_audio_data(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @IAudioData_GetFormat(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @IAudioData_Release(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
