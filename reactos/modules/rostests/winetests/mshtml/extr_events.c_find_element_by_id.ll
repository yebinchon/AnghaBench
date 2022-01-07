; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_events.c_find_element_by_id.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_events.c_find_element_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IHTMLDocument3 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"QueryInterface(IID_IHTMLDocument3) failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"getElementById failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"result == NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @find_element_by_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_element_by_id(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @a2bstr(i8* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32** %6 to i8**
  %13 = call i64 @IHTMLDocument2_QueryInterface(i32* %11, i32* @IID_IHTMLDocument3, i8** %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %5, align 8
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @IHTMLDocument3_getElementById(i32* %20, i32 %21, i32** %7)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %5, align 8
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @SysFreeString(i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @IHTMLDocument3_Release(i32* %35)
  %37 = load i32*, i32** %7, align 8
  ret i32* %37
}

declare dso_local i32 @a2bstr(i8*) #1

declare dso_local i64 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IHTMLDocument3_getElementById(i32*, i32, i32**) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @IHTMLDocument3_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
