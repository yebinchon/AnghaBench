; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_protocol.c_protocol_start.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_protocol.c_protocol_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_12__, i32*, i32* }
%struct.TYPE_10__ = type { i64 (%struct.TYPE_11__*, i32*, i32, i32, i32*)* }
%struct.TYPE_12__ = type { i32, i32 }

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"GetBindInfo failed: %08x\0A\00", align 1
@BINDF_FROMURLMON = common dso_local global i32 0, align 4
@BINDSTATUS_DIRECTBIND = common dso_local global i32 0, align 4
@INET_E_NO_SESSION = common dso_local global i64 0, align 8
@INTERNET_FLAG_KEEP_CONNECTION = common dso_local global i32 0, align 4
@BINDF_NOWRITECACHE = common dso_local global i32 0, align 4
@INTERNET_FLAG_NO_CACHE_WRITE = common dso_local global i32 0, align 4
@BINDF_NEEDFILE = common dso_local global i32 0, align 4
@INTERNET_FLAG_NEED_FILE = common dso_local global i32 0, align 4
@BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS = common dso_local global i32 0, align 4
@INTERNET_FLAG_NO_AUTO_REDIRECT = common dso_local global i32 0, align 4
@internet_session = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @protocol_start(%struct.TYPE_11__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  store i32* %14, i32** %16, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @IInternetProtocolSink_AddRef(i32* %17)
  %19 = load i32*, i32** %10, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  store i32* %19, i32** %21, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = call i32 @memset(%struct.TYPE_12__* %23, i32 0, i32 8)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i32 4, i32* %27, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = call i64 @IInternetBindInfo_GetBindInfo(i32* %28, i32* %30, %struct.TYPE_12__* %32)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %5
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i64 @report_result(%struct.TYPE_11__* %40, i64 %41)
  store i64 %42, i64* %6, align 8
  br label %120

43:                                               ; preds = %5
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BINDF_FROMURLMON, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %52 = load i32, i32* @BINDSTATUS_DIRECTBIND, align 4
  %53 = call i32 @report_progress(%struct.TYPE_11__* %51, i32 %52, i32* null)
  br label %54

54:                                               ; preds = %50, %43
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @get_internet_session(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = load i64, i64* @INET_E_NO_SESSION, align 8
  %61 = call i64 @report_result(%struct.TYPE_11__* %59, i64 %60)
  store i64 %61, i64* %6, align 8
  br label %120

62:                                               ; preds = %54
  %63 = load i32, i32* @INTERNET_FLAG_KEEP_CONNECTION, align 4
  store i32 %63, i32* %12, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @BINDF_NOWRITECACHE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32, i32* @INTERNET_FLAG_NO_CACHE_WRITE, align 4
  %72 = load i32, i32* %12, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %70, %62
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @BINDF_NEEDFILE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32, i32* @INTERNET_FLAG_NEED_FILE, align 4
  %83 = load i32, i32* %12, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %81, %74
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load i32, i32* @INTERNET_FLAG_NO_AUTO_REDIRECT, align 4
  %95 = load i32, i32* %12, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %93, %85
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64 (%struct.TYPE_11__*, i32*, i32, i32, i32*)*, i64 (%struct.TYPE_11__*, i32*, i32, i32, i32*)** %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @internet_session, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = call i64 %102(%struct.TYPE_11__* %103, i32* %104, i32 %105, i32 %106, i32* %107)
  store i64 %108, i64* %13, align 8
  %109 = load i64, i64* %13, align 8
  %110 = call i64 @FAILED(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %97
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %114 = call i32 @protocol_close_connection(%struct.TYPE_11__* %113)
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %116 = load i64, i64* %13, align 8
  %117 = call i64 @report_result(%struct.TYPE_11__* %115, i64 %116)
  store i64 %117, i64* %6, align 8
  br label %120

118:                                              ; preds = %97
  %119 = load i64, i64* @S_OK, align 8
  store i64 %119, i64* %6, align 8
  br label %120

120:                                              ; preds = %118, %112, %58, %37
  %121 = load i64, i64* %6, align 8
  ret i64 %121
}

declare dso_local i32 @IInternetProtocolSink_AddRef(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @IInternetBindInfo_GetBindInfo(i32*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i64 @report_result(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @report_progress(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @get_internet_session(i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @protocol_close_connection(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
