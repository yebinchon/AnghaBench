; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmliframe.c_HTMLIFrame_QI.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmliframe.c_HTMLIFrame_QI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@IID_IHTMLIFrameElement = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"(%p)->(IID_IHTMLIFrameElement %p)\0A\00", align 1
@IID_IHTMLIFrameElement2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"(%p)->(IID_IHTMLIFrameElement2 %p)\0A\00", align 1
@IID_IHTMLIFrameElement3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"(%p)->(IID_IHTMLIFrameElement3 %p)\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**)* @HTMLIFrame_QI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTMLIFrame_QI(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.TYPE_4__* @impl_from_HTMLDOMNode(i32* %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @IsEqualGUID(i32* @IID_IHTMLIFrameElement, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %16 = load i8**, i8*** %7, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %15, i8** %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = bitcast i32* %19 to i8*
  %21 = load i8**, i8*** %7, align 8
  store i8* %20, i8** %21, align 8
  br label %54

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @IsEqualGUID(i32* @IID_IHTMLIFrameElement2, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = load i8**, i8*** %7, align 8
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %27, i8** %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = bitcast i32* %31 to i8*
  %33 = load i8**, i8*** %7, align 8
  store i8* %32, i8** %33, align 8
  br label %53

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @IsEqualGUID(i32* @IID_IHTMLIFrameElement3, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = load i8**, i8*** %7, align 8
  %41 = call i32 @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_4__* %39, i8** %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = bitcast i32* %43 to i8*
  %45 = load i8**, i8*** %7, align 8
  store i8* %44, i8** %45, align 8
  br label %52

46:                                               ; preds = %34
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %6, align 4
  %50 = load i8**, i8*** %7, align 8
  %51 = call i32 @HTMLFrameBase_QI(i32* %48, i32 %49, i8** %50)
  store i32 %51, i32* %4, align 4
  br label %60

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %26
  br label %54

54:                                               ; preds = %53, %14
  %55 = load i8**, i8*** %7, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = bitcast i8* %56 to i32*
  %58 = call i32 @IUnknown_AddRef(i32* %57)
  %59 = load i32, i32* @S_OK, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %54, %46
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_4__* @impl_from_HTMLDOMNode(i32*) #1

declare dso_local i64 @IsEqualGUID(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_4__*, i8**) #1

declare dso_local i32 @HTMLFrameBase_QI(i32*, i32, i8**) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
