; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlframebase.c_HTMLFrameBase_QI.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlframebase.c_HTMLFrameBase_QI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@IID_IHTMLFrameBase = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"(%p)->(IID_IHTMLFrameBase %p)\0A\00", align 1
@IID_IHTMLFrameBase2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"(%p)->(IID_IHTMLFrameBase2 %p)\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTMLFrameBase_QI(%struct.TYPE_6__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @IsEqualGUID(i32* @IID_IHTMLFrameBase, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %12, i8** %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = bitcast i32* %16 to i8*
  %18 = load i8**, i8*** %7, align 8
  store i8* %17, i8** %18, align 8
  br label %39

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @IsEqualGUID(i32* @IID_IHTMLFrameBase2, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %24, i8** %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = bitcast i32* %28 to i8*
  %30 = load i8**, i8*** %7, align 8
  store i8* %29, i8** %30, align 8
  br label %38

31:                                               ; preds = %19
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %6, align 4
  %36 = load i8**, i8*** %7, align 8
  %37 = call i32 @HTMLElement_QI(i32* %34, i32 %35, i8** %36)
  store i32 %37, i32* %4, align 4
  br label %45

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38, %11
  %40 = load i8**, i8*** %7, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = call i32 @IUnknown_AddRef(i32* %42)
  %44 = load i32, i32* @S_OK, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %39, %31
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

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
