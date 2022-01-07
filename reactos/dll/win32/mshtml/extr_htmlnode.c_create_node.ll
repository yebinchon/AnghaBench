; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlnode.c_create_node.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlnode.c_create_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Called on attribute node\0A\00", align 1
@E_UNEXPECTED = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@HTMLDOMNodeImplVtbl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"type %d ret %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_11__**)* @create_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_node(i32* %0, i32* %1, %struct.TYPE_11__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @nsIDOMNode_GetNodeType(i32* %13, i32* %8)
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %57 [
    i32 129, label %16
    i32 128, label %30
    i32 130, label %41
    i32 131, label %41
    i32 132, label %54
  ]

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32 @HTMLElement_Create(i32* %17, i32* %18, i32 %19, %struct.TYPE_10__** %10)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @FAILED(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %78

26:                                               ; preds = %16
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %29, align 8
  br label %72

30:                                               ; preds = %3
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %34 = call i32 @HTMLDOMTextNode_Create(i32* %31, i32* %32, %struct.TYPE_11__** %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @FAILED(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %78

40:                                               ; preds = %30
  br label %72

41:                                               ; preds = %3, %3
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @HTMLCommentElement_Create(i32* %42, i32* %43, %struct.TYPE_10__** %11)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @FAILED(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %78

50:                                               ; preds = %41
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %53, align 8
  br label %72

54:                                               ; preds = %3
  %55 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %56, i32* %4, align 4
  br label %78

57:                                               ; preds = %3
  %58 = call %struct.TYPE_11__* @heap_alloc_zero(i32 8)
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %12, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %60 = icmp ne %struct.TYPE_11__* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %62, i32* %4, align 4
  br label %78

63:                                               ; preds = %57
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store i32* @HTMLDOMNodeImplVtbl, i32** %65, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @HTMLDOMNode_Init(i32* %66, %struct.TYPE_11__* %67, i32* %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %71 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %71, align 8
  br label %72

72:                                               ; preds = %63, %50, %40, %26
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %73, %struct.TYPE_11__* %75)
  %77 = load i32, i32* @S_OK, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %72, %61, %54, %48, %38, %24
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @nsIDOMNode_GetNodeType(i32*, i32*) #1

declare dso_local i32 @HTMLElement_Create(i32*, i32*, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @HTMLDOMTextNode_Create(i32*, i32*, %struct.TYPE_11__**) #1

declare dso_local i32 @HTMLCommentElement_Create(i32*, i32*, %struct.TYPE_10__**) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local %struct.TYPE_11__* @heap_alloc_zero(i32) #1

declare dso_local i32 @HTMLDOMNode_Init(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @TRACE(i8*, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
