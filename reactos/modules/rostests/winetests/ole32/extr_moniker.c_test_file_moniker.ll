; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_moniker.c_test_file_moniker.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_moniker.c_test_file_moniker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32* null, align 8
@IID_IMoniker = common dso_local global i32 0, align 4
@MSHCTX_INPROC = common dso_local global i32 0, align 4
@MSHLFLAGS_NORMAL = common dso_local global i32 0, align 4
@llZero = common dso_local global i32 0, align 4
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_file_moniker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_file_moniker(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = bitcast i32* %7 to i8*
  %9 = bitcast i32** %4 to i32*
  %10 = call i32 (i8*, i32*, ...) @CreateFileMoniker(i8* %8, i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @ok_ole_success(i32 %11, i32 (i8*, i32*, i8**)* bitcast (i32 (i8*, i32*, ...)* @CreateFileMoniker to i32 (i8*, i32*, i8**)*))
  %13 = load i32*, i32** @TRUE, align 8
  %14 = call i32 @CreateStreamOnHGlobal(i8* null, i32* %13, i8** %3)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ok_ole_success(i32 %15, i32 (i8*, i32*, i8**)* @CreateStreamOnHGlobal)
  %17 = load i8*, i8** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = bitcast i32* %18 to i8**
  %20 = load i32, i32* @MSHCTX_INPROC, align 4
  %21 = load i32, i32* @MSHLFLAGS_NORMAL, align 4
  %22 = call i32 (i8*, i32*, i8**, ...) @CoMarshalInterface(i8* %17, i32* @IID_IMoniker, i8** %19, i32 %20, i8* null, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ok_ole_success(i32 %23, i32 (i8*, i32*, i8**)* bitcast (i32 (i8*, i32*, i8**, ...)* @CoMarshalInterface to i32 (i8*, i32*, i8**)*))
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* @llZero, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  %29 = load i32, i32* @STREAM_SEEK_SET, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8**
  %32 = call i32 (i8*, i32*, i8**, ...) @IStream_Seek(i8* %25, i32* %28, i8** %31, i8* null)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ok_ole_success(i32 %33, i32 (i8*, i32*, i8**)* bitcast (i32 (i8*, i32*, i8**, ...)* @IStream_Seek to i32 (i8*, i32*, i8**)*))
  %35 = load i8*, i8** %3, align 8
  %36 = bitcast i32** %5 to i8**
  %37 = call i32 @CoUnmarshalInterface(i8* %35, i32* @IID_IMoniker, i8** %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ok_ole_success(i32 %38, i32 (i8*, i32*, i8**)* @CoUnmarshalInterface)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @IMoniker_IsEqual(i32* %40, i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ok_ole_success(i32 %43, i32 (i8*, i32*, i8**)* @IsEqual)
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @IStream_Release(i8* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %1
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @IMoniker_Release(i32* %50)
  br label %52

52:                                               ; preds = %49, %1
  %53 = load i32*, i32** %5, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @IMoniker_Release(i32* %56)
  br label %58

58:                                               ; preds = %55, %52
  ret void
}

declare dso_local i32 @CreateFileMoniker(i8*, i32*, ...) #1

declare dso_local i32 @ok_ole_success(i32, i32 (i8*, i32*, i8**)*) #1

declare dso_local i32 @CreateStreamOnHGlobal(i8*, i32*, i8**) #1

declare dso_local i32 @CoMarshalInterface(i8*, i32*, i8**, ...) #1

declare dso_local i32 @IStream_Seek(i8*, i32*, i8**, ...) #1

declare dso_local i32 @CoUnmarshalInterface(i8*, i32*, i8**) #1

declare dso_local i32 @IMoniker_IsEqual(i32*, i32*) #1

declare dso_local i32 @IsEqual(i8*, i32*, i8**) #1

declare dso_local i32 @IStream_Release(i8*) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
