; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlinput.c_HTMLInputElement_QI.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlinput.c_HTMLInputElement_QI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@IID_IUnknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"(%p)->(IID_IUnknown %p)\0A\00", align 1
@IID_IDispatch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"(%p)->(IID_IDispatch %p)\0A\00", align 1
@IID_IHTMLInputElement = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"(%p)->(IID_IHTMLInputElement %p)\0A\00", align 1
@IID_IHTMLInputTextElement = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"(%p)->(IID_IHTMLInputTextElement %p)\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**)* @HTMLInputElement_QI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTMLInputElement_QI(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.TYPE_6__* @impl_from_HTMLDOMNode(i32* %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %8, align 8
  %11 = load i8**, i8*** %7, align 8
  store i8* null, i8** %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @IsEqualGUID(i32* @IID_IUnknown, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = load i8**, i8*** %7, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %16, i8** %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = bitcast i32* %20 to i8*
  %22 = load i8**, i8*** %7, align 8
  store i8* %21, i8** %22, align 8
  br label %62

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @IsEqualGUID(i32* @IID_IDispatch, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = load i8**, i8*** %7, align 8
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %28, i8** %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = bitcast i32* %32 to i8*
  %34 = load i8**, i8*** %7, align 8
  store i8* %33, i8** %34, align 8
  br label %61

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @IsEqualGUID(i32* @IID_IHTMLInputElement, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = load i8**, i8*** %7, align 8
  %42 = call i32 @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %40, i8** %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = bitcast i32* %44 to i8*
  %46 = load i8**, i8*** %7, align 8
  store i8* %45, i8** %46, align 8
  br label %60

47:                                               ; preds = %35
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @IsEqualGUID(i32* @IID_IHTMLInputTextElement, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = load i8**, i8*** %7, align 8
  %54 = call i32 @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_6__* %52, i8** %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = bitcast i32* %56 to i8*
  %58 = load i8**, i8*** %7, align 8
  store i8* %57, i8** %58, align 8
  br label %59

59:                                               ; preds = %51, %47
  br label %60

60:                                               ; preds = %59, %39
  br label %61

61:                                               ; preds = %60, %27
  br label %62

62:                                               ; preds = %61, %15
  %63 = load i8**, i8*** %7, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i8**, i8*** %7, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = call i32 @IUnknown_AddRef(i32* %69)
  %71 = load i32, i32* @S_OK, align 4
  store i32 %71, i32* %4, align 4
  br label %79

72:                                               ; preds = %62
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %6, align 4
  %77 = load i8**, i8*** %7, align 8
  %78 = call i32 @HTMLElement_QI(i32* %75, i32 %76, i8** %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %72, %66
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_6__* @impl_from_HTMLDOMNode(i32*) #1

declare dso_local i64 @IsEqualGUID(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_6__*, i8**) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

declare dso_local i32 @HTMLElement_QI(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
