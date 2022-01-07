; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/amstream/extr_amstream.c_test_audiodata_set_actual.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/amstream/extr_amstream.c_test_audiodata_set_actual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IAudioData = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"No IAudioData\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_audiodata_set_actual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_audiodata_set_actual() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [100 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32* (...) @create_audio_data()
  store i32* %6, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %7 = bitcast [100 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 400, i1 false)
  store i32 0, i32* %4, align 4
  %8 = load i32*, i32** %1, align 8
  %9 = bitcast i32** %2 to i8**
  %10 = call i32 @IUnknown_QueryInterface(i32* %8, i32* @IID_IAudioData, i8** %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @FAILED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 @skip(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %87

16:                                               ; preds = %0
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @IAudioData_SetActual(i32* %17, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @S_OK, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 0
  %27 = call i32 @IAudioData_SetBuffer(i32* %25, i32 400, i32* %26, i32 0)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @S_OK, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @IAudioData_SetActual(i32* %34, i32 401)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @E_INVALIDARG, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @IAudioData_SetActual(i32* %42, i32 400)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @S_OK, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 -559038737, i32* %4, align 4
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @IAudioData_GetInfo(i32* %50, i32* null, i32* null, i32* %4)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @S_OK, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp eq i64 400, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @IAudioData_SetActual(i32* %64, i32 0)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @S_OK, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  store i32 -559038737, i32* %4, align 4
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @IAudioData_GetInfo(i32* %72, i32* null, i32* null, i32* %4)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* @S_OK, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %4, align 4
  %81 = icmp eq i32 0, %80
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 @IAudioData_Release(i32* %85)
  br label %87

87:                                               ; preds = %16, %14
  %88 = load i32*, i32** %1, align 8
  %89 = call i32 @IUnknown_Release(i32* %88)
  ret void
}

declare dso_local i32* @create_audio_data(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @IAudioData_SetActual(i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IAudioData_SetBuffer(i32*, i32, i32*, i32) #1

declare dso_local i32 @IAudioData_GetInfo(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @IAudioData_Release(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
