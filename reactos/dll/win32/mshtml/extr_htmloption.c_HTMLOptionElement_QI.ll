; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmloption.c_HTMLOptionElement_QI.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmloption.c_HTMLOptionElement_QI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@IID_IUnknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"(%p)->(IID_IUnknown %p)\0A\00", align 1
@IID_IDispatch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"(%p)->(IID_IDispatch %p)\0A\00", align 1
@IID_IHTMLOptionElement = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"(%p)->(IID_IHTMLOptionElement %p)\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**)* @HTMLOptionElement_QI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTMLOptionElement_QI(i32* %0, i32 %1, i8** %2) #0 {
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
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = bitcast i32* %20 to i8*
  %22 = load i8**, i8*** %7, align 8
  store i8* %21, i8** %22, align 8
  br label %49

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
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = bitcast i32* %32 to i8*
  %34 = load i8**, i8*** %7, align 8
  store i8* %33, i8** %34, align 8
  br label %48

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @IsEqualGUID(i32* @IID_IHTMLOptionElement, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = load i8**, i8*** %7, align 8
  %42 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %40, i8** %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = bitcast i32* %44 to i8*
  %46 = load i8**, i8*** %7, align 8
  store i8* %45, i8** %46, align 8
  br label %47

47:                                               ; preds = %39, %35
  br label %48

48:                                               ; preds = %47, %27
  br label %49

49:                                               ; preds = %48, %15
  %50 = load i8**, i8*** %7, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i8**, i8*** %7, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = call i32 @IUnknown_AddRef(i32* %56)
  %58 = load i32, i32* @S_OK, align 4
  store i32 %58, i32* %4, align 4
  br label %66

59:                                               ; preds = %49
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %6, align 4
  %64 = load i8**, i8*** %7, align 8
  %65 = call i32 @HTMLElement_QI(i32* %62, i32 %63, i8** %64)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %59, %53
  %67 = load i32, i32* %4, align 4
  ret i32 %67
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
