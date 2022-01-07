; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmldoc.c_HTMLDocumentNode_QI.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmldoc.c_HTMLDocumentNode_QI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"(%p)->(%s %p)\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@IID_IInternetHostSecurityManager = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**)* @HTMLDocumentNode_QI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTMLDocumentNode_QI(i32* %0, i32 %1, i8** %2) #0 {
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
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @debugstr_mshtml_guid(i32 %12)
  %14 = load i8**, i8*** %7, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %11, i32 %13, i8** %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* %6, align 4
  %19 = load i8**, i8*** %7, align 8
  %20 = call i64 @htmldoc_qi(i32* %17, i32 %18, i8** %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load i8**, i8*** %7, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @S_OK, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @E_NOINTERFACE, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %4, align 4
  br label %53

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @IsEqualGUID(i32* @IID_IInternetHostSecurityManager, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = bitcast i32* %38 to i8*
  %40 = load i8**, i8*** %7, align 8
  store i8* %39, i8** %40, align 8
  br label %47

41:                                               ; preds = %32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %6, align 4
  %45 = load i8**, i8*** %7, align 8
  %46 = call i32 @HTMLDOMNode_QI(i32* %43, i32 %44, i8** %45)
  store i32 %46, i32* %4, align 4
  br label %53

47:                                               ; preds = %36
  %48 = load i8**, i8*** %7, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = call i32 @IUnknown_AddRef(i32* %50)
  %52 = load i32, i32* @S_OK, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %47, %41, %30
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_4__* @impl_from_HTMLDOMNode(i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_4__*, i32, i8**) #1

declare dso_local i32 @debugstr_mshtml_guid(i32) #1

declare dso_local i64 @htmldoc_qi(i32*, i32, i8**) #1

declare dso_local i64 @IsEqualGUID(i32*, i32) #1

declare dso_local i32 @HTMLDOMNode_QI(i32*, i32, i8**) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
