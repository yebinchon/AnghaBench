; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_hglobalstream.c_test_copyto.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_hglobalstream.c_test_copyto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@test_copyto.szHello = internal constant [6 x i8] c"Hello\00", align 1
@test_copyto.methods_copyto = internal global [2 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [17 x i8] c"TestStream_Write\00", align 1
@test_copyto.llZero = internal constant i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"CreateStreamOnHGlobal\00", align 1
@expected_method_list = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"IStream_Write\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"only %d bytes written\0A\00", align 1
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"IStream_Seek\00", align 1
@Test_Stream = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"ullWritten was %d instead\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"only %d bytes read\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"IStream_CopyTo\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Method sequence starting from %s not called\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"IStream_Clone\00", align 1
@STREAM_SEEK_CUR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [59 x i8] c"libNewPosition wasn't set correctly for the cloned stream\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"IStream_Read\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"read data \22%s\22 didn't match originally written data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_copyto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_copyto() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca [15 x i8], align 1
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @CreateStreamOnHGlobal(i32* null, i32 %10, i32** %1)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ok_ole_success(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @test_copyto.methods_copyto, i64 0, i64 0), i8*** @expected_method_list, align 8
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @IStream_Write(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_copyto.szHello, i64 0, i64 0), i32 6, i32* %5)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ok_ole_success(i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %19, 6
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = load i32, i32* @test_copyto.llZero, align 4
  %26 = load i32, i32* @STREAM_SEEK_SET, align 4
  %27 = call i32 @IStream_Seek(i32* %24, i32 %25, i32 %26, %struct.TYPE_6__* null)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @ok_ole_success(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 6, i32* %30, align 4
  %31 = load i32*, i32** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IStream_CopyTo(i32* %31, i32* @Test_Stream, i32 %33, %struct.TYPE_6__* %6, %struct.TYPE_6__* %7)
  store i32 %34, i32* %3, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 5
  %38 = zext i1 %37 to i32
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %44, 6
  %46 = zext i1 %45 to i32
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @ok_ole_success(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %52 = load i8**, i8*** @expected_method_list, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i8**, i8*** @expected_method_list, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i8* %58)
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @IStream_Clone(i32* %60, i32** %2)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @ok_ole_success(i32 %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %64 = load i32*, i32** %2, align 8
  %65 = load i32, i32* @test_copyto.llZero, align 4
  %66 = load i32, i32* @STREAM_SEEK_CUR, align 4
  %67 = call i32 @IStream_Seek(i32* %64, i32 %65, i32 %66, %struct.TYPE_6__* %8)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @ok_ole_success(i32 %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp eq i64 %72, 6
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0))
  %76 = load i32*, i32** %2, align 8
  %77 = load i32, i32* @test_copyto.llZero, align 4
  %78 = load i32, i32* @STREAM_SEEK_SET, align 4
  %79 = call i32 @IStream_Seek(i32* %76, i32 %77, i32 %78, %struct.TYPE_6__* null)
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @ok_ole_success(i32 %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i32*, i32** %2, align 8
  %83 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 0
  %84 = call i32 @IStream_Read(i32* %82, i8* %83, i32 15, i32* null)
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @ok_ole_success(i32 %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %87 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 0
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_copyto.szHello, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = getelementptr inbounds [15 x i8], [15 x i8]* %9, i64 0, i64 0
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i8* %92)
  %94 = load i32*, i32** %2, align 8
  %95 = call i32 @IStream_Release(i32* %94)
  %96 = load i32*, i32** %1, align 8
  %97 = call i32 @IStream_Release(i32* %96)
  ret void
}

declare dso_local i32 @CreateStreamOnHGlobal(i32*, i32, i32**) #1

declare dso_local i32 @ok_ole_success(i32, i8*) #1

declare dso_local i32 @IStream_Write(i32*, i8*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IStream_Seek(i32*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @IStream_CopyTo(i32*, i32*, i32, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32 @IStream_Clone(i32*, i32**) #1

declare dso_local i32 @IStream_Read(i32*, i8*, i32, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
