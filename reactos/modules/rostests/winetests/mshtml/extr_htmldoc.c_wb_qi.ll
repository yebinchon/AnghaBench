; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_wb_qi.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_wb_qi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@wb_qi.IID_IWebBrowserPriv2IE7 = internal constant %struct.TYPE_17__ { i32 452143980, i32 41914, i32 18617, %struct.TYPE_16__ { i32 178, i32 78, i32 138, i32 169, i32 196, i32 31, i32 110, i32 205 } }, align 4
@wb_qi.IID_IWebBrowserPriv2IE8XP = internal constant %struct.TYPE_17__ { i32 1215258969, i32 40767, i32 18471, %struct.TYPE_16__ { i32 130, i32 212, i32 40, i32 60, i32 239, i32 57, i32 119, i32 51 } }, align 4
@IID_IUnknown = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@IID_IWebBrowser = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@IID_IWebBrowserApp = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@IID_IWebBrowser2 = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@WebBrowser2 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@IID_IOleObject = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@IID_IConnectionPointContainer = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@ConnectionPointContainer = common dso_local global i32 0, align 4
@IID_IWebBrowserPriv = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@WebBrowserPriv = common dso_local global i32 0, align 4
@IID_IWebBrowserPriv2IE8 = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@is_ie9plus = common dso_local global i64 0, align 8
@WebBrowserPriv2IE9 = common dso_local global i32 0, align 4
@WebBrowserPriv2IE8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"QI(IID_IWebBrowserPriv2IE7)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"QI(IID_IWebBrowserPriv2IE8XP)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"unexpected call %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8**)* @wb_qi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb_qi(%struct.TYPE_17__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i8**, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %6 = load i8**, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %8 = call i64 @IsEqualGUID(%struct.TYPE_17__* @IID_IUnknown, %struct.TYPE_17__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = call i64 @IsEqualGUID(%struct.TYPE_17__* @IID_IWebBrowser, %struct.TYPE_17__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = call i64 @IsEqualGUID(%struct.TYPE_17__* @IID_IWebBrowserApp, %struct.TYPE_17__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = call i64 @IsEqualGUID(%struct.TYPE_17__* @IID_IWebBrowser2, %struct.TYPE_17__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %14, %10, %2
  %23 = load i8**, i8*** %5, align 8
  store i8* bitcast (i32* @WebBrowser2 to i8*), i8** %23, align 8
  %24 = load i32, i32* @S_OK, align 4
  store i32 %24, i32* %3, align 4
  br label %75

25:                                               ; preds = %18
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = call i64 @IsEqualGUID(%struct.TYPE_17__* %26, %struct.TYPE_17__* @IID_IOleObject)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %30, i32* %3, align 4
  br label %75

31:                                               ; preds = %25
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = call i64 @IsEqualGUID(%struct.TYPE_17__* %32, %struct.TYPE_17__* @IID_IConnectionPointContainer)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i8**, i8*** %5, align 8
  store i8* bitcast (i32* @ConnectionPointContainer to i8*), i8** %36, align 8
  %37 = load i32, i32* @S_OK, align 4
  store i32 %37, i32* %3, align 4
  br label %75

38:                                               ; preds = %31
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = call i64 @IsEqualGUID(%struct.TYPE_17__* %39, %struct.TYPE_17__* @IID_IWebBrowserPriv)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i8**, i8*** %5, align 8
  store i8* bitcast (i32* @WebBrowserPriv to i8*), i8** %43, align 8
  %44 = load i32, i32* @S_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %75

45:                                               ; preds = %38
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = call i64 @IsEqualGUID(%struct.TYPE_17__* %46, %struct.TYPE_17__* @IID_IWebBrowserPriv2IE8)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i64, i64* @is_ie9plus, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* bitcast (i32* @WebBrowserPriv2IE9 to i8*), i8* bitcast (i32* @WebBrowserPriv2IE8 to i8*)
  %54 = load i8**, i8*** %5, align 8
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* @S_OK, align 4
  store i32 %55, i32* %3, align 4
  br label %75

56:                                               ; preds = %45
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = call i64 @IsEqualGUID(%struct.TYPE_17__* %57, %struct.TYPE_17__* @wb_qi.IID_IWebBrowserPriv2IE7)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = call i32 @trace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %62, i32* %3, align 4
  br label %75

63:                                               ; preds = %56
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %65 = call i64 @IsEqualGUID(%struct.TYPE_17__* %64, %struct.TYPE_17__* @wb_qi.IID_IWebBrowserPriv2IE8XP)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = call i32 @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %69, i32* %3, align 4
  br label %75

70:                                               ; preds = %63
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %72 = call i32 @wine_dbgstr_guid(%struct.TYPE_17__* %71)
  %73 = call i32 @ok(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %67, %60, %49, %42, %35, %29, %22
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @IsEqualGUID(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @wine_dbgstr_guid(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
