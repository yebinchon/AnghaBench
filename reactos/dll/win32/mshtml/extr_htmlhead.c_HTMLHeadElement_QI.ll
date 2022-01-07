; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlhead.c_HTMLHeadElement_QI.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlhead.c_HTMLHeadElement_QI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"(%p)->(%s %p)\0A\00", align 1
@IID_IHTMLHeadElement = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**)* @HTMLHeadElement_QI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTMLHeadElement_QI(i32* %0, i32 %1, i8** %2) #0 {
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
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @debugstr_mshtml_guid(i32 %12)
  %14 = load i8**, i8*** %7, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %11, i32 %13, i8** %14)
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @IsEqualGUID(i32* @IID_IHTMLHeadElement, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = bitcast i32* %21 to i8*
  %23 = load i8**, i8*** %7, align 8
  store i8* %22, i8** %23, align 8
  br label %31

24:                                               ; preds = %3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %6, align 4
  %29 = load i8**, i8*** %7, align 8
  %30 = call i32 @HTMLElement_QI(i32* %27, i32 %28, i8** %29)
  store i32 %30, i32* %4, align 4
  br label %37

31:                                               ; preds = %19
  %32 = load i8**, i8*** %7, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = call i32 @IUnknown_AddRef(i32* %34)
  %36 = load i32, i32* @S_OK, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %24
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_6__* @impl_from_HTMLDOMNode(i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_6__*, i32, i8**) #1

declare dso_local i32 @debugstr_mshtml_guid(i32) #1

declare dso_local i64 @IsEqualGUID(i32*, i32) #1

declare dso_local i32 @HTMLElement_QI(i32*, i32, i8**) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
