; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelem.c_HTMLElement_QI.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelem.c_HTMLElement_QI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@IID_IUnknown = common dso_local global i32 0, align 4
@IID_IDispatch = common dso_local global i32 0, align 4
@IID_IHTMLElement = common dso_local global i32 0, align 4
@IID_IHTMLElement2 = common dso_local global i32 0, align 4
@IID_IHTMLElement3 = common dso_local global i32 0, align 4
@IID_IHTMLElement4 = common dso_local global i32 0, align 4
@IID_IConnectionPointContainer = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTMLElement_QI(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.TYPE_5__* @impl_from_HTMLDOMNode(i32* %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @IsEqualGUID(i32* @IID_IUnknown, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 5
  %17 = bitcast i32* %16 to i8*
  %18 = load i8**, i8*** %7, align 8
  store i8* %17, i8** %18, align 8
  br label %86

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @IsEqualGUID(i32* @IID_IDispatch, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 5
  %26 = bitcast i32* %25 to i8*
  %27 = load i8**, i8*** %7, align 8
  store i8* %26, i8** %27, align 8
  br label %85

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @IsEqualGUID(i32* @IID_IHTMLElement, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 5
  %35 = bitcast i32* %34 to i8*
  %36 = load i8**, i8*** %7, align 8
  store i8* %35, i8** %36, align 8
  br label %84

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @IsEqualGUID(i32* @IID_IHTMLElement2, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = bitcast i32* %43 to i8*
  %45 = load i8**, i8*** %7, align 8
  store i8* %44, i8** %45, align 8
  br label %83

46:                                               ; preds = %37
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @IsEqualGUID(i32* @IID_IHTMLElement3, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = bitcast i32* %52 to i8*
  %54 = load i8**, i8*** %7, align 8
  store i8* %53, i8** %54, align 8
  br label %82

55:                                               ; preds = %46
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @IsEqualGUID(i32* @IID_IHTMLElement4, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = bitcast i32* %61 to i8*
  %63 = load i8**, i8*** %7, align 8
  store i8* %62, i8** %63, align 8
  br label %81

64:                                               ; preds = %55
  %65 = load i32, i32* %6, align 4
  %66 = call i64 @IsEqualGUID(i32* @IID_IConnectionPointContainer, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = bitcast i32* %71 to i8*
  %73 = load i8**, i8*** %7, align 8
  store i8* %72, i8** %73, align 8
  br label %80

74:                                               ; preds = %64
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %6, align 4
  %78 = load i8**, i8*** %7, align 8
  %79 = call i32 @HTMLDOMNode_QI(i32* %76, i32 %77, i8** %78)
  store i32 %79, i32* %4, align 4
  br label %92

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %59
  br label %82

82:                                               ; preds = %81, %50
  br label %83

83:                                               ; preds = %82, %41
  br label %84

84:                                               ; preds = %83, %32
  br label %85

85:                                               ; preds = %84, %23
  br label %86

86:                                               ; preds = %85, %14
  %87 = load i8**, i8*** %7, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = bitcast i8* %88 to i32*
  %90 = call i32 @IUnknown_AddRef(i32* %89)
  %91 = load i32, i32* @S_OK, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %86, %74
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_5__* @impl_from_HTMLDOMNode(i32*) #1

declare dso_local i64 @IsEqualGUID(i32*, i32) #1

declare dso_local i32 @HTMLDOMNode_QI(i32*, i32, i8**) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
