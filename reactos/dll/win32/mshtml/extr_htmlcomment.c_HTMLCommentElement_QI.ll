; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlcomment.c_HTMLCommentElement_QI.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlcomment.c_HTMLCommentElement_QI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@IID_IHTMLCommentElement = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"(%p)->(IID_IHTMLCommentElement %p)\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**)* @HTMLCommentElement_QI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTMLCommentElement_QI(i32* %0, i32 %1, i8** %2) #0 {
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
  %13 = call i64 @IsEqualGUID(i32* @IID_IHTMLCommentElement, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = load i8**, i8*** %7, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %16, i8** %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = bitcast i32* %20 to i8*
  %22 = load i8**, i8*** %7, align 8
  store i8* %21, i8** %22, align 8
  br label %30

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %6, align 4
  %28 = load i8**, i8*** %7, align 8
  %29 = call i32 @HTMLElement_QI(i32* %26, i32 %27, i8** %28)
  store i32 %29, i32* %4, align 4
  br label %36

30:                                               ; preds = %15
  %31 = load i8**, i8*** %7, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = call i32 @IUnknown_AddRef(i32* %33)
  %35 = load i32, i32* @S_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %30, %23
  %37 = load i32, i32* %4, align 4
  ret i32 %37
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
