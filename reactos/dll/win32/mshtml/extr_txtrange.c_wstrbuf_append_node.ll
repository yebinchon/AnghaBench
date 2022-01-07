; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_txtrange.c_wstrbuf_append_node.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_txtrange.c_wstrbuf_append_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_nsIDOMText = common dso_local global i32 0, align 4
@brW = common dso_local global i32 0, align 4
@wstrbuf_append_node.endlW = internal constant [2 x i8] c"\0D\0A", align 1
@hrW = common dso_local global i32 0, align 4
@wstrbuf_append_node.endl2W = internal constant [4 x i8] c"\0D\0A\0D\0A", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @wstrbuf_append_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wstrbuf_append_node(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @get_node_type(i32* %10)
  switch i32 %11, label %50 [
    i32 128, label %12
    i32 129, label %32
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %50

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32** %7 to i8**
  %19 = call i32 @nsIDOMNode_QueryInterface(i32* %17, i32* @IID_nsIDOMText, i8** %18)
  %20 = call i32 @nsAString_Init(i32* %8, i32* null)
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @nsIDOMText_GetData(i32* %21, i32* %8)
  %23 = call i32 @nsAString_GetData(i32* %8, i32** %9)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @strlenW(i32* %26)
  %28 = call i32 @wstrbuf_append_nodetxt(i32* %24, i32* %25, i32 %27)
  %29 = call i32 @nsAString_Finish(i32* %8)
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @nsIDOMText_Release(i32* %30)
  br label %50

32:                                               ; preds = %3
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @brW, align 4
  %35 = call i32 @is_elem_tag(i32* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @wstrbuf_append_len(i32* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @wstrbuf_append_node.endlW, i64 0, i64 0), i32 2)
  br label %49

40:                                               ; preds = %32
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @hrW, align 4
  %43 = call i32 @is_elem_tag(i32* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @wstrbuf_append_len(i32* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @wstrbuf_append_node.endl2W, i64 0, i64 0), i32 4)
  br label %48

48:                                               ; preds = %45, %40
  br label %49

49:                                               ; preds = %48, %37
  br label %50

50:                                               ; preds = %49, %3, %16, %15
  ret void
}

declare dso_local i32 @get_node_type(i32*) #1

declare dso_local i32 @nsIDOMNode_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @nsAString_Init(i32*, i32*) #1

declare dso_local i32 @nsIDOMText_GetData(i32*, i32*) #1

declare dso_local i32 @nsAString_GetData(i32*, i32**) #1

declare dso_local i32 @wstrbuf_append_nodetxt(i32*, i32*, i32) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @nsIDOMText_Release(i32*) #1

declare dso_local i32 @is_elem_tag(i32*, i32) #1

declare dso_local i32 @wstrbuf_append_len(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
