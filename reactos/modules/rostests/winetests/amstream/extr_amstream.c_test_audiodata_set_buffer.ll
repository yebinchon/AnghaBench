; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/amstream/extr_amstream.c_test_audiodata_set_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/amstream/extr_amstream.c_test_audiodata_set_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IAudioData = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"No IAudioData\0A\00", align 1
@S_OK = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@E_INVALIDARG = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_audiodata_set_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_audiodata_set_buffer() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [100 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = call i32* (...) @create_audio_data()
  store i32* %7, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %8 = bitcast [100 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 400, i1 false)
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = bitcast i32** %2 to i8**
  %11 = call i32* @IUnknown_QueryInterface(i32* %9, i32* @IID_IAudioData, i8** %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @FAILED(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = call i32 @skip(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %91

17:                                               ; preds = %0
  %18 = load i32*, i32** %2, align 8
  %19 = call i32* @IAudioData_SetBuffer(i32* %18, i32 100, i32* null, i32 0)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** @S_OK, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32*, i32** %6, align 8
  %25 = ptrtoint i32* %24 to i32
  %26 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %5, align 8
  store i32 -559038737, i32* %4, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = call i32* @IAudioData_GetInfo(i32* %27, i32* %4, i32** %5, i32* null)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** @S_OK, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp eq i32* %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32*, i32** %6, align 8
  %34 = ptrtoint i32* %33 to i32
  %35 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 100, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = icmp ne i32* null, %41
  %43 = zext i1 %42 to i32
  %44 = load i32*, i32** %5, align 8
  %45 = ptrtoint i32* %44 to i32
  %46 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 0
  %49 = call i32* @IAudioData_SetBuffer(i32* %47, i32 0, i32* %48, i32 0)
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** @E_INVALIDARG, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = icmp eq i32* %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i32*, i32** %6, align 8
  %55 = ptrtoint i32* %54 to i32
  %56 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 0
  %59 = call i32* @IAudioData_SetBuffer(i32* %57, i32 400, i32* %58, i32 0)
  store i32* %59, i32** %6, align 8
  %60 = load i32*, i32** @S_OK, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = icmp eq i32* %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32*, i32** %6, align 8
  %65 = ptrtoint i32* %64 to i32
  %66 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %5, align 8
  store i32 -559038737, i32* %4, align 4
  %67 = load i32*, i32** %2, align 8
  %68 = call i32* @IAudioData_GetInfo(i32* %67, i32* %4, i32** %5, i32* null)
  store i32* %68, i32** %6, align 8
  %69 = load i32*, i32** @S_OK, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = icmp eq i32* %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i32*, i32** %6, align 8
  %74 = ptrtoint i32* %73 to i32
  %75 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp eq i64 400, %77
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 0
  %83 = load i32*, i32** %5, align 8
  %84 = icmp eq i32* %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i32*, i32** %5, align 8
  %87 = ptrtoint i32* %86 to i32
  %88 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @IAudioData_Release(i32* %89)
  br label %91

91:                                               ; preds = %17, %15
  %92 = load i32*, i32** %1, align 8
  %93 = call i32 @IUnknown_Release(i32* %92)
  ret void
}

declare dso_local i32* @create_audio_data(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @FAILED(i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32* @IAudioData_SetBuffer(i32*, i32, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32* @IAudioData_GetInfo(i32*, i32*, i32**, i32*) #1

declare dso_local i32 @IAudioData_Release(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
