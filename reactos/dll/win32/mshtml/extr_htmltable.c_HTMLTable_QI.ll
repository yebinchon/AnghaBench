; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmltable.c_HTMLTable_QI.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmltable.c_HTMLTable_QI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@IID_IUnknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"(%p)->(IID_IUnknown %p)\0A\00", align 1
@IID_IDispatch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"(%p)->(IID_IDispatch %p)\0A\00", align 1
@IID_IHTMLTable = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"(%p)->(IID_IHTMLTable %p)\0A\00", align 1
@IID_IHTMLTable2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"(%p)->(IID_IHTMLTable2 %p)\0A\00", align 1
@IID_IHTMLTable3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"(%p)->(IID_IHTMLTable3 %p)\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**)* @HTMLTable_QI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTMLTable_QI(i32* %0, i32 %1, i8** %2) #0 {
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
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = bitcast i32* %20 to i8*
  %22 = load i8**, i8*** %7, align 8
  store i8* %21, i8** %22, align 8
  br label %75

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
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = bitcast i32* %32 to i8*
  %34 = load i8**, i8*** %7, align 8
  store i8* %33, i8** %34, align 8
  br label %74

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @IsEqualGUID(i32* @IID_IHTMLTable, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = load i8**, i8*** %7, align 8
  %42 = call i32 @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %40, i8** %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = bitcast i32* %44 to i8*
  %46 = load i8**, i8*** %7, align 8
  store i8* %45, i8** %46, align 8
  br label %73

47:                                               ; preds = %35
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @IsEqualGUID(i32* @IID_IHTMLTable2, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = load i8**, i8*** %7, align 8
  %54 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_6__* %52, i8** %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = bitcast i32* %56 to i8*
  %58 = load i8**, i8*** %7, align 8
  store i8* %57, i8** %58, align 8
  br label %72

59:                                               ; preds = %47
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @IsEqualGUID(i32* @IID_IHTMLTable3, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = load i8**, i8*** %7, align 8
  %66 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_6__* %64, i8** %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = bitcast i32* %68 to i8*
  %70 = load i8**, i8*** %7, align 8
  store i8* %69, i8** %70, align 8
  br label %71

71:                                               ; preds = %63, %59
  br label %72

72:                                               ; preds = %71, %51
  br label %73

73:                                               ; preds = %72, %39
  br label %74

74:                                               ; preds = %73, %27
  br label %75

75:                                               ; preds = %74, %15
  %76 = load i8**, i8*** %7, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i8**, i8*** %7, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = call i32 @IUnknown_AddRef(i32* %82)
  %84 = load i32, i32* @S_OK, align 4
  store i32 %84, i32* %4, align 4
  br label %92

85:                                               ; preds = %75
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %6, align 4
  %90 = load i8**, i8*** %7, align 8
  %91 = call i32 @HTMLElement_QI(i32* %88, i32 %89, i8** %90)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %85, %79
  %93 = load i32, i32* %4, align 4
  ret i32 %93
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
