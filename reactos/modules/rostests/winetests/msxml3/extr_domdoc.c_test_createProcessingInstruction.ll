; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_createProcessingInstruction.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_createProcessingInstruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_createProcessingInstruction.bodyW = internal constant [5 x i8] c"test\00", align 1
@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_createProcessingInstruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_createProcessingInstruction() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [10 x i8], align 1
  %4 = alloca i64, align 8
  %5 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %5, i32** %2, align 8
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 2
  %7 = call i32 @memcpy(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_createProcessingInstruction.bodyW, i64 0, i64 0), i32 5)
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %9 = bitcast i8* %8 to i32*
  store i32 61680, i32* %9, align 1
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @_bstr_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 2
  %13 = call i64 @IXMLDOMDocument_createProcessingInstruction(i32* %10, i32 %11, i8* %12, i32** %1)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @IXMLDOMProcessingInstruction_Release(i32* %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @IXMLDOMDocument_Release(i32* %22)
  ret void
}

declare dso_local i32* @create_document(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @IXMLDOMDocument_createProcessingInstruction(i32*, i32, i8*, i32**) #1

declare dso_local i32 @_bstr_(i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @IXMLDOMProcessingInstruction_Release(i32*) #1

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
