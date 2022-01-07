; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_node_to_string.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_node_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@NODE_ATTRIBUTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%ws\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"get_parentNode failed (%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @node_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_to_string(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i64, i64* @S_OK, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @lstrcpyA(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %87

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @IXMLDOMNode_AddRef(i32* %16)
  br label %18

18:                                               ; preds = %84, %15
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %85

22:                                               ; preds = %18
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @IXMLDOMNode_get_nodeType(i32* %23, i32* %6)
  %25 = call i32 @ole_check(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @get_str_for_type(i32 %26, i8* %27)
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = load i8*, i8** %4, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @NODE_ATTRIBUTE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %22
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @IXMLDOMNode_get_nodeName(i32* %38, i32* %8)
  %40 = call i32 @ole_check(i32 %39)
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  store i8 39, i8* %41, align 1
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @wsprintfA(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = load i8*, i8** %4, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %4, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %4, align 8
  store i8 39, i8* %51, align 1
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @SysFreeString(i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @_bstr_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i64 @IXMLDOMNode_selectSingleNode(i32* %55, i32 %56, i32** %7)
  store i64 %57, i64* %5, align 8
  br label %70

58:                                               ; preds = %22
  %59 = load i32*, i32** %3, align 8
  %60 = call i64 @IXMLDOMNode_get_parentNode(i32* %59, i32** %7)
  store i64 %60, i64* %5, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @get_node_position(i32* %62)
  %64 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = load i8*, i8** %4, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %4, align 8
  br label %70

70:                                               ; preds = %58, %37
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @SUCCEEDED(i64 %71)
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @IXMLDOMNode_Release(i32* %75)
  %77 = load i32*, i32** %7, align 8
  store i32* %77, i32** %3, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @S_OK, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %4, align 8
  store i8 46, i8* %82, align 1
  br label %84

84:                                               ; preds = %81, %70
  br label %18

85:                                               ; preds = %18
  %86 = load i8*, i8** %4, align 8
  store i8 0, i8* %86, align 1
  br label %87

87:                                               ; preds = %85, %12
  ret void
}

declare dso_local i32 @lstrcpyA(i8*, i8*) #1

declare dso_local i32 @IXMLDOMNode_AddRef(i32*) #1

declare dso_local i32 @ole_check(i32) #1

declare dso_local i32 @IXMLDOMNode_get_nodeType(i32*, i32*) #1

declare dso_local i32 @get_str_for_type(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @IXMLDOMNode_get_nodeName(i32*, i32*) #1

declare dso_local i32 @wsprintfA(i8*, i8*, i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i64 @IXMLDOMNode_selectSingleNode(i32*, i32, i32**) #1

declare dso_local i32 @_bstr_(i8*) #1

declare dso_local i64 @IXMLDOMNode_get_parentNode(i32*, i32**) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @get_node_position(i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i32 @IXMLDOMNode_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
