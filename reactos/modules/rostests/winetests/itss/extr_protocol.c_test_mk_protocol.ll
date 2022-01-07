; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/itss/extr_protocol.c_test_mk_protocol.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/itss/extr_protocol.c_test_mk_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MK_PROTOCOL = common dso_local global i32 0, align 4
@test_protocol = common dso_local global i32 0, align 4
@CLSID_MkProtocol = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IClassFactory = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@REGDB_E_CLASSNOTREG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"CoGetClassObject failed: %08x\0A\00", align 1
@cache_file1 = common dso_local global i32 0, align 4
@cache_file = common dso_local global i32 0, align 4
@blank_url3 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@cache_file2 = common dso_local global i32 0, align 4
@blank_url7 = common dso_local global i32 0, align 4
@cache_file3 = common dso_local global i32 0, align 4
@blank_url8 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mk_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mk_protocol() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @MK_PROTOCOL, align 4
  store i32 %3, i32* @test_protocol, align 4
  %4 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %5 = bitcast i32** %1 to i8**
  %6 = call i64 @CoGetClassObject(i32* @CLSID_MkProtocol, i32 %4, i32* null, i32* @IID_IClassFactory, i8** %5)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %0
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @broken(i32 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %10, %0
  %18 = phi i1 [ true, %0 ], [ %16, %10 ]
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @FAILED(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %44

26:                                               ; preds = %17
  %27 = load i32, i32* @cache_file1, align 4
  store i32 %27, i32* @cache_file, align 4
  %28 = load i32*, i32** %1, align 8
  %29 = load i32, i32* @blank_url3, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @test_protocol_url(i32* %28, i32 %29, i32 %30)
  %32 = load i32, i32* @cache_file2, align 4
  store i32 %32, i32* @cache_file, align 4
  %33 = load i32*, i32** %1, align 8
  %34 = load i32, i32* @blank_url7, align 4
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @test_protocol_url(i32* %33, i32 %34, i32 %35)
  %37 = load i32, i32* @cache_file3, align 4
  store i32 %37, i32* @cache_file, align 4
  %38 = load i32*, i32** %1, align 8
  %39 = load i32, i32* @blank_url8, align 4
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @test_protocol_url(i32* %38, i32 %39, i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @IClassFactory_Release(i32* %42)
  br label %44

44:                                               ; preds = %26, %25
  ret void
}

declare dso_local i64 @CoGetClassObject(i32*, i32, i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @test_protocol_url(i32*, i32, i32) #1

declare dso_local i32 @IClassFactory_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
