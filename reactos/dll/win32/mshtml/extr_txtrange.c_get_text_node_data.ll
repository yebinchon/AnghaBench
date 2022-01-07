; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_txtrange.c_get_text_node_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_txtrange.c_get_text_node_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_nsIDOMText = common dso_local global i32 0, align 4
@NS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GetData failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32**)* @get_text_node_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_text_node_data(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32** %7 to i8**
  %11 = call i64 @nsIDOMNode_QueryInterface(i32* %9, i32* @IID_nsIDOMText, i8** %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @NS_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @nsAString_Init(i32* %17, i32* null)
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @nsIDOMText_GetData(i32* %19, i32* %20)
  store i64 %21, i64* %8, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @nsIDOMText_Release(i32* %22)
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @NS_FAILED(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i32*, i32** %5, align 8
  %32 = load i32**, i32*** %6, align 8
  %33 = call i32 @nsAString_GetData(i32* %31, i32** %32)
  ret void
}

declare dso_local i64 @nsIDOMNode_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nsAString_Init(i32*, i32*) #1

declare dso_local i64 @nsIDOMText_GetData(i32*, i32*) #1

declare dso_local i32 @nsIDOMText_Release(i32*) #1

declare dso_local i64 @NS_FAILED(i64) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @nsAString_GetData(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
