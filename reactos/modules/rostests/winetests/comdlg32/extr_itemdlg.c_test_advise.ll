; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comdlg32/extr_itemdlg.c_test_advise.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comdlg32/extr_itemdlg.c_test_advise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Testing FileOpenDialog (advise)\0A\00", align 1
@CLSID_FileOpenDialog = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IFileDialog = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"got 0x%08x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Got refcount %d, should have been released.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Testing FileSaveDialog (advise)\0A\00", align 1
@CLSID_FileSaveDialog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_advise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_advise() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i32 @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %6 = bitcast i32** %1 to i8**
  %7 = call i64 @CoCreateInstance(i32* @CLSID_FileOpenDialog, i32* null, i32 %5, i32* @IID_IFileDialog, i8** %6)
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @S_OK, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @test_advise_helper(i32* %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i64 @IFileDialog_Release(i32* %16)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %22)
  %24 = call i32 @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %26 = bitcast i32** %1 to i8**
  %27 = call i64 @CoCreateInstance(i32* @CLSID_FileSaveDialog, i32* null, i32 %25, i32* @IID_IFileDialog, i8** %26)
  store i64 %27, i64* %2, align 8
  %28 = load i64, i64* %2, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %2, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @test_advise_helper(i32* %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i64 @IFileDialog_Release(i32* %36)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @test_advise_helper(i32*) #1

declare dso_local i64 @IFileDialog_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
