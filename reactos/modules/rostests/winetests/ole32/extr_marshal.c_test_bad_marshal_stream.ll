; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_test_bad_marshal_stream.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_test_bad_marshal_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@IID_IClassFactory = common dso_local global i32 0, align 4
@Test_ClassFactory = common dso_local global i32 0, align 4
@MSHCTX_INPROC = common dso_local global i32 0, align 4
@MSHLFLAGS_NORMAL = common dso_local global i32 0, align 4
@STG_E_READFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"Should have failed with STG_E_READFAULT, but returned 0x%08x instead\0A\00", align 1
@ullZero = common dso_local global i32 0, align 4
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_bad_marshal_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bad_marshal_stream() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  %3 = load i32, i32* @TRUE, align 4
  %4 = call i64 (i32*, ...) @CreateStreamOnHGlobal(i32* null, i32 %3, i32** %2)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = call i32 @ok_ole_success(i64 %5, i64 (i32*)* bitcast (i64 (i32*, ...)* @CreateStreamOnHGlobal to i64 (i32*)*))
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @MSHCTX_INPROC, align 4
  %9 = load i32, i32* @MSHLFLAGS_NORMAL, align 4
  %10 = call i64 (i32*, ...) @CoMarshalInterface(i32* %7, i32* @IID_IClassFactory, i32* @Test_ClassFactory, i32 %8, i8* null, i32 %9)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @ok_ole_success(i64 %11, i64 (i32*)* bitcast (i64 (i32*, ...)* @CoMarshalInterface to i64 (i32*)*))
  %13 = call i32 (...) @ok_more_than_one_lock()
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @CoReleaseMarshalData(i32* %14)
  store i64 %15, i64* %1, align 8
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @STG_E_READFAULT, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %1, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @ullZero, align 4
  %24 = load i32, i32* @STREAM_SEEK_SET, align 4
  %25 = call i32 @IStream_Seek(i32* %22, i32 %23, i32 %24, i32* null)
  %26 = load i32*, i32** %2, align 8
  %27 = call i64 @CoReleaseMarshalData(i32* %26)
  store i64 %27, i64* %1, align 8
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @ok_ole_success(i64 %28, i64 (i32*)* @CoReleaseMarshalData)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @IStream_Release(i32* %30)
  ret void
}

declare dso_local i64 @CreateStreamOnHGlobal(i32*, ...) #1

declare dso_local i32 @ok_ole_success(i64, i64 (i32*)*) #1

declare dso_local i64 @CoMarshalInterface(i32*, ...) #1

declare dso_local i32 @ok_more_than_one_lock(...) #1

declare dso_local i64 @CoReleaseMarshalData(i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @IStream_Seek(i32*, i32, i32, i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
