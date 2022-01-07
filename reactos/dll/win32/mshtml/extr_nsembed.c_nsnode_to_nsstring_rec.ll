; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsembed.c_nsnode_to_nsstring_rec.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsembed.c_nsnode_to_nsstring_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GetType failed: %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@IID_nsIContent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Could not get nsIContent interface: %08x\0A\00", align 1
@IID_nsIDocument = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Unhandled type %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Item failed: %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @nsnode_to_nsstring_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsnode_to_nsstring_rec(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @nsIDOMNode_HasChildNodes(i32* %18, i64* %9)
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @nsIDOMNode_GetNodeType(i32* %20, i32* %11)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i64 @NS_FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @E_FAIL, align 4
  store i32 %28, i32* %4, align 4
  br label %133

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 131
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i32*, i32** %6, align 8
  %34 = bitcast i32** %10 to i8**
  %35 = call i32 @nsIDOMNode_QueryInterface(i32* %33, i32* @IID_nsIContent, i8** %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @NS_FAILED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @E_FAIL, align 4
  store i32 %42, i32* %4, align 4
  br label %133

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %29
  %45 = load i32, i32* %11, align 4
  switch i32 %45, label %78 [
    i32 129, label %46
    i32 128, label %52
    i32 133, label %57
    i32 131, label %62
    i32 130, label %72
    i32 132, label %77
  ]

46:                                               ; preds = %44
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @nsIContentSerializer_AppendElementStart(i32* %47, i32* %48, i32* %49, i32* %50)
  br label %81

52:                                               ; preds = %44
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @nsIContentSerializer_AppendText(i32* %53, i32* %54, i32 0, i32 -1, i32* %55)
  br label %81

57:                                               ; preds = %44
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @nsIContentSerializer_AppendComment(i32* %58, i32* %59, i32 0, i32 -1, i32* %60)
  store i32 %61, i32* %12, align 4
  br label %81

62:                                               ; preds = %44
  %63 = load i32*, i32** %6, align 8
  %64 = bitcast i32** %13 to i8**
  %65 = call i32 @nsIDOMNode_QueryInterface(i32* %63, i32* @IID_nsIDocument, i8** %64)
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @nsIContentSerializer_AppendDocumentStart(i32* %66, i32* %67, i32* %68)
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @nsIDocument_Release(i32* %70)
  br label %81

72:                                               ; preds = %44
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @nsIContentSerializer_AppendDoctype(i32* %73, i32* %74, i32* %75)
  br label %81

77:                                               ; preds = %44
  br label %81

78:                                               ; preds = %44
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %77, %72, %62, %57, %52, %46
  %82 = load i64, i64* %9, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %117

84:                                               ; preds = %81
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @nsIDOMNode_GetChildNodes(i32* %85, i32** %8)
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @nsIDOMNodeList_GetLength(i32* %87, i64* %14)
  store i64 0, i64* %15, align 8
  br label %89

89:                                               ; preds = %111, %84
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* %14, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %89
  %94 = load i32*, i32** %8, align 8
  %95 = load i64, i64* %15, align 8
  %96 = call i32 @nsIDOMNodeList_Item(i32* %94, i64 %95, i32** %16)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i64 @NS_SUCCEEDED(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load i32*, i32** %5, align 8
  %102 = load i32*, i32** %16, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @nsnode_to_nsstring_rec(i32* %101, i32* %102, i32* %103)
  %105 = load i32*, i32** %16, align 8
  %106 = call i32 @nsIDOMNode_Release(i32* %105)
  br label %110

107:                                              ; preds = %93
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %107, %100
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %15, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %15, align 8
  br label %89

114:                                              ; preds = %89
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @nsIDOMNodeList_Release(i32* %115)
  br label %117

117:                                              ; preds = %114, %81
  %118 = load i32, i32* %11, align 4
  %119 = icmp eq i32 %118, 129
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32*, i32** %5, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @nsIContentSerializer_AppendElementEnd(i32* %121, i32* %122, i32* %123)
  br label %125

125:                                              ; preds = %120, %117
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 131
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 @nsIContent_Release(i32* %129)
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* @S_OK, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %39, %25
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @nsIDOMNode_HasChildNodes(i32*, i64*) #1

declare dso_local i32 @nsIDOMNode_GetNodeType(i32*, i32*) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @nsIDOMNode_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @nsIContentSerializer_AppendElementStart(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nsIContentSerializer_AppendText(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @nsIContentSerializer_AppendComment(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @nsIContentSerializer_AppendDocumentStart(i32*, i32*, i32*) #1

declare dso_local i32 @nsIDocument_Release(i32*) #1

declare dso_local i32 @nsIContentSerializer_AppendDoctype(i32*, i32*, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @nsIDOMNode_GetChildNodes(i32*, i32**) #1

declare dso_local i32 @nsIDOMNodeList_GetLength(i32*, i64*) #1

declare dso_local i32 @nsIDOMNodeList_Item(i32*, i64, i32**) #1

declare dso_local i64 @NS_SUCCEEDED(i32) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

declare dso_local i32 @nsIDOMNodeList_Release(i32*) #1

declare dso_local i32 @nsIContentSerializer_AppendElementEnd(i32*, i32*, i32*) #1

declare dso_local i32 @nsIContent_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
