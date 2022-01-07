; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_nsChannelBSC_on_progress.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_nsChannelBSC_on_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"External MIME: %s\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@IID_IWinInetHttpInfo = common dso_local global i32 0, align 4
@HTTP_QUERY_STATUS_CODE = common dso_local global i32 0, align 4
@HTTP_QUERY_FLAG_NUMBER = common dso_local global i32 0, align 4
@HTTP_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @nsChannelBSC_on_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsChannelBSC_on_progress(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.TYPE_10__* @nsChannelBSC_from_BSCallback(i32* %13)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %95 [
    i32 129, label %16
    i32 128, label %53
    i32 130, label %57
  ]

16:                                               ; preds = %3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @is_supported_doc_mime(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @debugstr_w(i32 %26)
  %28 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = call i32 @handle_extern_mime_navigation(%struct.TYPE_10__* %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %32, align 8
  br label %33

33:                                               ; preds = %25, %21, %16
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = icmp ne %struct.TYPE_8__* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @S_OK, align 4
  store i32 %39, i32* %4, align 4
  br label %97

40:                                               ; preds = %33
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @heap_free(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @heap_strdupWtoA(i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  br label %95

53:                                               ; preds = %3
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @handle_redirect(%struct.TYPE_10__* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %97

57:                                               ; preds = %3
  store i32 4, i32* %11, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  br label %95

64:                                               ; preds = %57
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = bitcast i32** %9 to i8**
  %70 = call i32 @IBinding_QueryInterface(i32 %68, i32* @IID_IWinInetHttpInfo, i8** %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @FAILED(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %95

75:                                               ; preds = %64
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* @HTTP_QUERY_STATUS_CODE, align 4
  %78 = load i32, i32* @HTTP_QUERY_FLAG_NUMBER, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @IWinInetHttpInfo_QueryInfo(i32* %76, i32 %79, i32* %10, i32* %11, i32* null, i32* null)
  store i32 %80, i32* %12, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @IWinInetHttpInfo_Release(i32* %81)
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @FAILED(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @HTTP_STATUS_OK, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86, %75
  br label %95

91:                                               ; preds = %86
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @handle_navigation_error(%struct.TYPE_10__* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %3, %90, %74, %63, %40
  %96 = load i32, i32* @S_OK, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %53, %38
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_10__* @nsChannelBSC_from_BSCallback(i32*) #1

declare dso_local i32 @is_supported_doc_mime(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @handle_extern_mime_navigation(%struct.TYPE_10__*) #1

declare dso_local i32 @heap_free(i32) #1

declare dso_local i32 @heap_strdupWtoA(i32) #1

declare dso_local i32 @handle_redirect(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @IBinding_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @IWinInetHttpInfo_QueryInfo(i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @IWinInetHttpInfo_Release(i32*) #1

declare dso_local i32 @handle_navigation_error(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
