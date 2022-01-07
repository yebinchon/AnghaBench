; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelemcol.c_create_all_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelemcol.c_create_all_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"GetChildNodes failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Item failed: %08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"get_node failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32*)* @create_all_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_all_list(i32* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %9, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @nsIDOMNode_GetChildNodes(i32 %16, i32** %7)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i64 @NS_FAILED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %72

24:                                               ; preds = %3
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @nsIDOMNodeList_GetLength(i32* %25, i64* %9)
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %72

30:                                               ; preds = %24
  store i64 0, i64* %10, align 8
  br label %31

31:                                               ; preds = %69, %30
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %31
  %36 = load i32*, i32** %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @nsIDOMNodeList_Item(i32* %36, i64 %37, i32** %8)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @NS_FAILED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %69

45:                                               ; preds = %35
  %46 = load i32*, i32** %8, align 8
  %47 = call i64 @is_elem_node(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i32 @get_node(i32* %50, i32* %51, i32 %52, %struct.TYPE_5__** %13)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i64 @FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %69

60:                                               ; preds = %49
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %63 = call i32 @elem_from_HTMLDOMNode(%struct.TYPE_5__* %62)
  %64 = call i32 @elem_vector_add(i32* %61, i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %67 = load i32*, i32** %6, align 8
  call void @create_all_list(i32* %65, %struct.TYPE_5__* %66, i32* %67)
  br label %68

68:                                               ; preds = %60, %45
  br label %69

69:                                               ; preds = %68, %57, %42
  %70 = load i64, i64* %10, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %10, align 8
  br label %31

72:                                               ; preds = %21, %29, %31
  ret void
}

declare dso_local i32 @nsIDOMNode_GetChildNodes(i32, i32**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @nsIDOMNodeList_GetLength(i32*, i64*) #1

declare dso_local i32 @nsIDOMNodeList_Item(i32*, i64, i32**) #1

declare dso_local i64 @is_elem_node(i32*) #1

declare dso_local i32 @get_node(i32*, i32*, i32, %struct.TYPE_5__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @elem_vector_add(i32*, i32) #1

declare dso_local i32 @elem_from_HTMLDOMNode(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
