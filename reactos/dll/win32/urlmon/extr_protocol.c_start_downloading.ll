; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_protocol.c_start_downloading.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_protocol.c_start_downloading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { {}* }

@INET_E_REDIRECT_FAILED = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@BINDF_NEEDFILE = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@INTERNET_OPTION_DATAFILE_NAME = common dso_local global i32 0, align 4
@BINDSTATUS_CACHEFILENAMEAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Could not get cache file\0A\00", align 1
@FLAG_FIRST_CONTINUE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @start_downloading to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_downloading(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.TYPE_9__*)**
  %13 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %12, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = call i32 %13(%struct.TYPE_9__* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @INET_E_REDIRECT_FAILED, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @S_OK, align 4
  store i32 %24, i32* %2, align 4
  br label %67

25:                                               ; preds = %19
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = call i32 @protocol_close_connection(%struct.TYPE_9__* %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @report_result(%struct.TYPE_9__* %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %67

32:                                               ; preds = %1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BINDF_NEEDFILE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %32
  %40 = load i32, i32* @MAX_PATH, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %5, align 8
  %43 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %6, align 8
  %44 = mul nuw i64 4, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @INTERNET_OPTION_DATAFILE_NAME, align 4
  %50 = call i64 @InternetQueryOptionW(i32 %48, i32 %49, i32* %43, i32* %7)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = load i32, i32* @BINDSTATUS_CACHEFILENAMEAVAILABLE, align 4
  %55 = call i32 @report_progress(%struct.TYPE_9__* %53, i32 %54, i32* %43)
  br label %58

56:                                               ; preds = %39
  %57 = call i32 @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %59)
  br label %60

60:                                               ; preds = %58, %32
  %61 = load i32, i32* @FLAG_FIRST_CONTINUE_COMPLETE, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @S_OK, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %60, %25, %23
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @protocol_close_connection(%struct.TYPE_9__*) #1

declare dso_local i32 @report_result(%struct.TYPE_9__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @InternetQueryOptionW(i32, i32, i32*, i32*) #1

declare dso_local i32 @report_progress(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @FIXME(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
