; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_handle_redirect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_handle_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"(%p)->(%s)\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@IID_nsIChannelEventSink = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%p %p->%p\0A\00", align 1
@REDIRECT_TEMPORARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"AsyncOnChannelRedirect failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"nschannel not updated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*)* @handle_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_redirect(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @debugstr_w(i32* %12)
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_15__*
  %16 = call i32 (i8*, %struct.TYPE_13__*, %struct.TYPE_15__*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %11, %struct.TYPE_15__* %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = icmp ne %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21, %2
  %29 = load i32, i32* @S_OK, align 4
  store i32 %29, i32* %3, align 4
  br label %108

30:                                               ; preds = %21
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = bitcast i32** %7 to i8**
  %37 = call i32 @nsIInterfaceRequestor_GetInterface(i32 %35, i32* @IID_nsIChannelEventSink, i8** %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @NS_FAILED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @S_OK, align 4
  store i32 %42, i32* %3, align 4
  br label %108

43:                                               ; preds = %30
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = call i32 @create_redirect_nschannel(i32* %44, %struct.TYPE_15__* %47, %struct.TYPE_14__** %8)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @SUCCEEDED(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %43
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = call i32 (i8*, %struct.TYPE_13__*, %struct.TYPE_15__*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %53, %struct.TYPE_15__* %56, %struct.TYPE_14__* %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = call i32 @create_redirect_callback(%struct.TYPE_14__* %59, %struct.TYPE_13__* %60, %struct.TYPE_12__** %6)
  store i32 %61, i32* %10, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = call i32 @nsIHttpChannel_Release(i32* %63)
  br label %65

65:                                               ; preds = %52, %43
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @SUCCEEDED(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %104

69:                                               ; preds = %65
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* @REDIRECT_TEMPORARY, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = call i32 @nsIChannelEventSink_AsyncOnChannelRedirect(i32* %70, i32* %74, i32* %78, i32 %79, i32* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i64 @NS_FAILED(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %69
  %87 = load i32, i32* %10, align 4
  %88 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %100

89:                                               ; preds = %69
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = icmp ne %struct.TYPE_15__* %92, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %89
  br label %100

100:                                              ; preds = %99, %86
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = call i32 @nsIAsyncVerifyRedirectCallback_Release(i32* %102)
  br label %104

104:                                              ; preds = %100, %65
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @nsIChannelEventSink_Release(i32* %105)
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %41, %28
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_13__*, %struct.TYPE_15__*, ...) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @nsIInterfaceRequestor_GetInterface(i32, i32*, i8**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @create_redirect_nschannel(i32*, %struct.TYPE_15__*, %struct.TYPE_14__**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @create_redirect_callback(%struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__**) #1

declare dso_local i32 @nsIHttpChannel_Release(i32*) #1

declare dso_local i32 @nsIChannelEventSink_AsyncOnChannelRedirect(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @nsIAsyncVerifyRedirectCallback_Release(i32*) #1

declare dso_local i32 @nsIChannelEventSink_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
