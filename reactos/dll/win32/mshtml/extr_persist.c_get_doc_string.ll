; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_persist.c_get_doc_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_persist.c_get_doc_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"NULL nsdoc\0A\00", align 1
@E_UNEXPECTED = common dso_local global i32 0, align 4
@IID_nsIDOMNode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Could not get nsIDOMNode failed: %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8**)* @get_doc_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_doc_string(%struct.TYPE_3__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = call i32 @WARN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %17, i32* %3, align 4
  br label %59

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = bitcast i32** %6 to i8**
  %23 = call i32 @nsIDOMHTMLDocument_QueryInterface(i32 %21, i32* @IID_nsIDOMNode, i8** %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @NS_FAILED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @E_FAIL, align 4
  store i32 %30, i32* %3, align 4
  br label %59

31:                                               ; preds = %18
  %32 = call i32 @nsAString_Init(i32* %8, i32* null)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @nsnode_to_nsstring(i32* %33, i32* %8)
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @nsIDOMNode_Release(i32* %35)
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = call i32 @nsAString_Finish(i32* %8)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %59

43:                                               ; preds = %31
  %44 = call i32 @nsAString_GetData(i32* %8, i32* %7)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @debugstr_w(i32 %45)
  %47 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i8* @heap_strdupWtoA(i32 %48)
  %50 = load i8**, i8*** %5, align 8
  store i8* %49, i8** %50, align 8
  %51 = call i32 @nsAString_Finish(i32* %8)
  %52 = load i8**, i8*** %5, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %43
  %56 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %56, i32* %3, align 4
  br label %59

57:                                               ; preds = %43
  %58 = load i32, i32* @S_OK, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %55, %40, %27, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @nsIDOMHTMLDocument_QueryInterface(i32, i32*, i8**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @nsAString_Init(i32*, i32*) #1

declare dso_local i32 @nsnode_to_nsstring(i32*, i32*) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @nsAString_GetData(i32*, i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i8* @heap_strdupWtoA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
