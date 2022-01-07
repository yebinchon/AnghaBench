; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlnode.c_HTMLDOMNode_QI.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlnode.c_HTMLDOMNode_QI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"(%p)->(%s %p)\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@IID_IDispatch = common dso_local global i32 0, align 4
@IID_IHTMLDOMNode = common dso_local global i32 0, align 4
@IID_IHTMLDOMNode2 = common dso_local global i32 0, align 4
@IID_nsXPCOMCycleCollectionParticipant = common dso_local global i32 0, align 4
@node_ccp = common dso_local global i32 0, align 4
@NS_OK = common dso_local global i32 0, align 4
@IID_nsCycleCollectionISupports = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTMLDOMNode_QI(%struct.TYPE_7__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @debugstr_mshtml_guid(i32 %9)
  %11 = load i8**, i8*** %7, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %8, i32 %10, i8** %11)
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @IsEqualGUID(i32* @IID_IUnknown, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = bitcast i32* %18 to i8*
  %20 = load i8**, i8*** %7, align 8
  store i8* %19, i8** %20, align 8
  br label %94

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @IsEqualGUID(i32* @IID_IDispatch, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = bitcast i32* %27 to i8*
  %29 = load i8**, i8*** %7, align 8
  store i8* %28, i8** %29, align 8
  br label %93

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @IsEqualGUID(i32* @IID_IHTMLDOMNode, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = bitcast i32* %36 to i8*
  %38 = load i8**, i8*** %7, align 8
  store i8* %37, i8** %38, align 8
  br label %92

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @IsEqualGUID(i32* @IID_IHTMLDOMNode2, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = bitcast i32* %45 to i8*
  %47 = load i8**, i8*** %7, align 8
  store i8* %46, i8** %47, align 8
  br label %91

48:                                               ; preds = %39
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @IsEqualGUID(i32* @IID_nsXPCOMCycleCollectionParticipant, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i8**, i8*** %7, align 8
  store i8* bitcast (i32* @node_ccp to i8*), i8** %53, align 8
  %54 = load i32, i32* @NS_OK, align 4
  store i32 %54, i32* %4, align 4
  br label %100

55:                                               ; preds = %48
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @IsEqualGUID(i32* @IID_nsCycleCollectionISupports, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = bitcast i32* %61 to i8*
  %63 = load i8**, i8*** %7, align 8
  store i8* %62, i8** %63, align 8
  %64 = load i32, i32* @NS_OK, align 4
  store i32 %64, i32* %4, align 4
  br label %100

65:                                               ; preds = %55
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %6, align 4
  %70 = load i8**, i8*** %7, align 8
  %71 = call i64 @dispex_query_interface(i32* %68, i32 %69, i8** %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %65
  %74 = load i8**, i8*** %7, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @S_OK, align 4
  br label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @E_NOINTERFACE, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  store i32 %82, i32* %4, align 4
  br label %100

83:                                               ; preds = %65
  %84 = load i8**, i8*** %7, align 8
  store i8* null, i8** %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @debugstr_mshtml_guid(i32 %86)
  %88 = load i8**, i8*** %7, align 8
  %89 = call i32 @WARN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %85, i32 %87, i8** %88)
  %90 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %90, i32* %4, align 4
  br label %100

91:                                               ; preds = %43
  br label %92

92:                                               ; preds = %91, %34
  br label %93

93:                                               ; preds = %92, %25
  br label %94

94:                                               ; preds = %93, %16
  %95 = load i8**, i8*** %7, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = bitcast i8* %96 to i32*
  %98 = call i32 @IUnknown_AddRef(i32* %97)
  %99 = load i32, i32* @S_OK, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %94, %83, %81, %59, %52
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_7__*, i32, i8**) #1

declare dso_local i32 @debugstr_mshtml_guid(i32) #1

declare dso_local i64 @IsEqualGUID(i32*, i32) #1

declare dso_local i64 @dispex_query_interface(i32*, i32, i8**) #1

declare dso_local i32 @WARN(i8*, %struct.TYPE_7__*, i32, i8**) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
