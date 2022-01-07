; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_dispex.c_dispex_query_interface.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_dispex.c_dispex_query_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@dispex_query_interface.IID_UndocumentedScriptIface = internal constant %struct.TYPE_10__ { i32 1906061392, i32 63955, i32 4559, %struct.TYPE_9__ { i32 164, i32 147, i32 0, i32 64, i32 5, i32 35, i32 168, i32 160 } }, align 4
@dispex_query_interface.IID_IDispatchJS = internal constant %struct.TYPE_10__ { i32 1906061392, i32 63955, i32 4559, %struct.TYPE_9__ { i32 164, i32 147, i32 0, i32 64, i32 5, i32 35, i32 168, i32 166 } }, align 4
@IID_IDispatch = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"(%p)->(IID_IDispatch %p)\0A\00", align 1
@IID_IDispatchEx = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"(%p)->(IID_IDispatchEx %p)\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"(%p)->(IID_IDispatchJS %p) returning NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"(%p)->(IID_UndocumentedScriptIface %p) returning NULL\0A\00", align 1
@IID_IObjectIdentity = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"IID_IObjectIdentity not supported returning NULL\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dispex_query_interface(%struct.TYPE_11__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @IsEqualGUID(%struct.TYPE_10__* @IID_IDispatch, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %12, i8** %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = bitcast i32* %16 to i8*
  %18 = load i8**, i8*** %7, align 8
  store i8* %17, i8** %18, align 8
  br label %62

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @IsEqualGUID(%struct.TYPE_10__* @IID_IDispatchEx, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %24, i8** %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = bitcast i32* %28 to i8*
  %30 = load i8**, i8*** %7, align 8
  store i8* %29, i8** %30, align 8
  br label %61

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @IsEqualGUID(%struct.TYPE_10__* @dispex_query_interface.IID_IDispatchJS, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = load i8**, i8*** %7, align 8
  %38 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_11__* %36, i8** %37)
  %39 = load i8**, i8*** %7, align 8
  store i8* null, i8** %39, align 8
  br label %60

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @IsEqualGUID(%struct.TYPE_10__* @dispex_query_interface.IID_UndocumentedScriptIface, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = load i8**, i8*** %7, align 8
  %47 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_11__* %45, i8** %46)
  %48 = load i8**, i8*** %7, align 8
  store i8* null, i8** %48, align 8
  br label %59

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @IsEqualGUID(%struct.TYPE_10__* @IID_IObjectIdentity, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i8**, i8*** %7, align 8
  store i8* null, i8** %55, align 8
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %4, align 4
  br label %73

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %44
  br label %60

60:                                               ; preds = %59, %35
  br label %61

61:                                               ; preds = %60, %23
  br label %62

62:                                               ; preds = %61, %11
  %63 = load i8**, i8*** %7, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i8**, i8*** %7, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = call i32 @IUnknown_AddRef(i32* %69)
  br label %71

71:                                               ; preds = %66, %62
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %56
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @IsEqualGUID(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
