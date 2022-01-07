; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlstyleelem.c_HTMLStyleElement_QI.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlstyleelem.c_HTMLStyleElement_QI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@IID_IUnknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"(%p)->(IID_IUnknown %p)\0A\00", align 1
@IID_IDispatch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"(%p)->(IID_IDispatch %p)\0A\00", align 1
@IID_IHTMLStyleElement = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"(%p)->(IID_IHTMLStyleElement %p)\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**)* @HTMLStyleElement_QI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTMLStyleElement_QI(i32* %0, i32 %1, i8** %2) #0 {
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
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @IsEqualGUID(i32* @IID_IUnknown, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = load i8**, i8*** %7, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %15, i8** %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = bitcast i32* %19 to i8*
  %21 = load i8**, i8*** %7, align 8
  store i8* %20, i8** %21, align 8
  br label %55

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @IsEqualGUID(i32* @IID_IDispatch, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = load i8**, i8*** %7, align 8
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %27, i8** %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = bitcast i32* %31 to i8*
  %33 = load i8**, i8*** %7, align 8
  store i8* %32, i8** %33, align 8
  br label %54

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @IsEqualGUID(i32* @IID_IHTMLStyleElement, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = load i8**, i8*** %7, align 8
  %41 = call i32 @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %39, i8** %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = bitcast i32* %43 to i8*
  %45 = load i8**, i8*** %7, align 8
  store i8* %44, i8** %45, align 8
  br label %53

46:                                               ; preds = %34
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %6, align 4
  %51 = load i8**, i8*** %7, align 8
  %52 = call i32 @HTMLElement_QI(i32* %49, i32 %50, i8** %51)
  store i32 %52, i32* %4, align 4
  br label %61

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53, %26
  br label %55

55:                                               ; preds = %54, %14
  %56 = load i8**, i8*** %7, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = bitcast i8* %57 to i32*
  %59 = call i32 @IUnknown_AddRef(i32* %58)
  %60 = load i32, i32* @S_OK, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %55, %46
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_6__* @impl_from_HTMLDOMNode(i32*) #1

declare dso_local i64 @IsEqualGUID(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_6__*, i8**) #1

declare dso_local i32 @HTMLElement_QI(i32*, i32, i8**) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
