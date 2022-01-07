; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_HTMLDoc_ISupportErrorInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_HTMLDoc_ISupportErrorInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_ISupportErrorInfo = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"got %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@IID_IErrorInfo = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Expected S_OK, got %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_HTMLDoc_ISupportErrorInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_HTMLDoc_ISupportErrorInfo() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* (...) @create_document()
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = bitcast i32** %3 to i8**
  %7 = call i32* @IHTMLDocument2_QueryInterface(i32* %5, i32* @IID_ISupportErrorInfo, i8** %6)
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32*, i32** @S_OK, align 8
  %10 = icmp eq i32* %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %0
  %22 = load i32*, i32** %3, align 8
  %23 = call i32* @ISupportErrorInfo_InterfaceSupportsErrorInfo(i32* %22, i32* @IID_IErrorInfo)
  store i32* %23, i32** %2, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = load i32*, i32** @S_FALSE, align 8
  %26 = icmp eq i32* %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @ISupportErrorInfo_Release(i32* %30)
  br label %32

32:                                               ; preds = %21, %0
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @release_document(i32* %33)
  ret void
}

declare dso_local i32* @create_document(...) #1

declare dso_local i32* @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i32*) #1

declare dso_local i32* @ISupportErrorInfo_InterfaceSupportsErrorInfo(i32*, i32*) #1

declare dso_local i32 @ISupportErrorInfo_Release(i32*) #1

declare dso_local i32 @release_document(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
