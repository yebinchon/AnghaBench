; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_session.c_get_protocol_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_session.c_get_protocol_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@PARSE_SCHEMA = common dso_local global i32 0, align 4
@session_cs = common dso_local global i32 0, align 4
@IID_IInternetProtocolInfo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_protocol_info(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca [64 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @PARSE_SCHEMA, align 4
  %12 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %13 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = call i32 @CoInternetParseUrl(i32 %10, i32 %11, i32 0, i32* %12, i32 %14, i32* %8, i32 0)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %1
  store i32* null, i32** %2, align 8
  br label %83

23:                                               ; preds = %19
  %24 = call i32 @EnterCriticalSection(i32* @session_cs)
  %25 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %26 = call %struct.TYPE_3__* @find_name_space(i32* %25)
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %6, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32** %4 to i8**
  %39 = call i32 @IClassFactory_QueryInterface(i32* %37, i32* @IID_IInternetProtocolInfo, i8** %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @FAILED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = bitcast i32** %4 to i8**
  %48 = call i32 @IClassFactory_CreateInstance(i32* %46, i32* null, i32* @IID_IInternetProtocolInfo, i8** %47)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %43, %34
  br label %50

50:                                               ; preds = %49, %29, %23
  %51 = call i32 @LeaveCriticalSection(i32* @session_cs)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @SUCCEEDED(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32*, i32** %4, align 8
  store i32* %59, i32** %2, align 8
  br label %83

60:                                               ; preds = %54, %50
  %61 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @get_protocol_cf(i32* %61, i32 %62, i32* null, i32** %5)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @FAILED(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32* null, i32** %2, align 8
  br label %83

68:                                               ; preds = %60
  %69 = load i32*, i32** %5, align 8
  %70 = bitcast i32** %4 to i8**
  %71 = call i32 @IClassFactory_QueryInterface(i32* %69, i32* @IID_IInternetProtocolInfo, i8** %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @FAILED(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32*, i32** %5, align 8
  %77 = bitcast i32** %4 to i8**
  %78 = call i32 @IClassFactory_CreateInstance(i32* %76, i32* null, i32* @IID_IInternetProtocolInfo, i8** %77)
  br label %79

79:                                               ; preds = %75, %68
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @IClassFactory_Release(i32* %80)
  %82 = load i32*, i32** %4, align 8
  store i32* %82, i32** %2, align 8
  br label %83

83:                                               ; preds = %79, %67, %58, %22
  %84 = load i32*, i32** %2, align 8
  ret i32* %84
}

declare dso_local i32 @CoInternetParseUrl(i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local %struct.TYPE_3__* @find_name_space(i32*) #1

declare dso_local i32 @IClassFactory_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IClassFactory_CreateInstance(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @get_protocol_cf(i32*, i32, i32*, i32**) #1

declare dso_local i32 @IClassFactory_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
