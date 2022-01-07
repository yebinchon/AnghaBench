; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdfn.c_RunCommand.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdfn.c_RunCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32* }

@TRUE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i8* null, align 8
@RunCommand.output = internal global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Could not set commandline pipe: %s\00", align 1
@STARTF_USESHOWWINDOW = common dso_local global i32 0, align 4
@STARTF_USESTDHANDLES = common dso_local global i32 0, align 4
@STARTF_PREVENTPINNING = common dso_local global i32 0, align 4
@STARTF_TITLEISAPPID = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@NORMAL_PRIORITY_CLASS = common dso_local global i32 0, align 4
@CREATE_NO_WINDOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to launch command '%s': %s\00", align 1
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RunCommand(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca %struct.TYPE_9__, align 4
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 4096, i64* %10, align 8
  %16 = bitcast %struct.TYPE_7__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = bitcast %struct.TYPE_9__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 12, i1 false)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 16, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %21 = load i32, i32* @TRUE, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %20, align 8
  %24 = load i8*, i8** @INVALID_HANDLE_VALUE, align 8
  store i8* %24, i8** %14, align 8
  %25 = load i8*, i8** @INVALID_HANDLE_VALUE, align 8
  store i8* %25, i8** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32 32, i32* %26, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %3
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @CreatePipe(i8** %14, i8** %15, %struct.TYPE_8__* %13, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = call i64 (...) @GetLastError()
  store i64 %34, i64* %7, align 8
  %35 = call i32 (...) @WindowsErrorString()
  %36 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %133

37:                                               ; preds = %29
  %38 = load i32, i32* @STARTF_USESHOWWINDOW, align 4
  %39 = load i32, i32* @STARTF_USESTDHANDLES, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @STARTF_PREVENTPINNING, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @STARTF_TITLEISAPPID, align 4
  %44 = or i32 %42, %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @SW_HIDE, align 4
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  store i32 %46, i32* %47, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i8* %50, i8** %51, align 8
  br label %52

52:                                               ; preds = %37, %3
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* @TRUE, align 4
  %55 = load i32, i32* @NORMAL_PRIORITY_CLASS, align 4
  %56 = load i32, i32* @CREATE_NO_WINDOW, align 4
  %57 = or i32 %55, %56
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @CreateProcessU(i32* null, i8* %53, i32* null, i32* null, i32 %54, i32 %57, i32* null, i8* %58, %struct.TYPE_7__* %11, %struct.TYPE_9__* %12)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %52
  %62 = call i64 (...) @GetLastError()
  store i64 %62, i64* %7, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 (...) @WindowsErrorString()
  %65 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %63, i32 %64)
  br label %133

66:                                               ; preds = %52
  %67 = load i64, i64* %6, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %114

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %69, %111
  %71 = load i8*, i8** %14, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i64 @PeekNamedPipe(i8* %71, i32* null, i64 %72, i32* null, i64* %9, i32* null)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %70
  %76 = load i64, i64* %9, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %75
  %79 = load i64, i64* %9, align 8
  %80 = add nsw i64 %79, 1
  %81 = trunc i64 %80 to i32
  %82 = call i8* @malloc(i32 %81)
  store i8* %82, i8** @RunCommand.output, align 8
  %83 = load i8*, i8** @RunCommand.output, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %100

85:                                               ; preds = %78
  %86 = load i8*, i8** %14, align 8
  %87 = load i8*, i8** @RunCommand.output, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i64 @ReadFile(i8* %86, i8* %87, i64 %88, i64* %8, i32* null)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i8*, i8** @RunCommand.output, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8 0, i8* %97, align 1
  %98 = load i8*, i8** @RunCommand.output, align 8
  %99 = call i32 (i8*, ...) @uprintf(i8* %98)
  br label %100

100:                                              ; preds = %94, %91, %85, %78
  %101 = load i8*, i8** @RunCommand.output, align 8
  %102 = call i32 @free(i8* %101)
  br label %103

103:                                              ; preds = %100, %75
  br label %104

104:                                              ; preds = %103, %70
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @WaitForSingleObject(i32 %106, i32 0)
  %108 = load i64, i64* @WAIT_OBJECT_0, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %113

111:                                              ; preds = %104
  %112 = call i32 @Sleep(i32 100)
  br label %70

113:                                              ; preds = %110
  br label %119

114:                                              ; preds = %66
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @INFINITE, align 4
  %118 = call i64 @WaitForSingleObject(i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %114, %113
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @GetExitCodeProcess(i32 %121, i64* %7)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %119
  %125 = call i64 (...) @GetLastError()
  store i64 %125, i64* %7, align 8
  br label %126

126:                                              ; preds = %124, %119
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @CloseHandle(i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @CloseHandle(i32 %131)
  br label %133

133:                                              ; preds = %126, %61, %33
  %134 = load i8*, i8** %15, align 8
  %135 = call i32 @safe_closehandle(i8* %134)
  %136 = load i8*, i8** %14, align 8
  %137 = call i32 @safe_closehandle(i8* %136)
  %138 = load i64, i64* %7, align 8
  ret i64 %138
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CreatePipe(i8**, i8**, %struct.TYPE_8__*, i64) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @uprintf(i8*, ...) #2

declare dso_local i32 @WindowsErrorString(...) #2

declare dso_local i32 @CreateProcessU(i32*, i8*, i32*, i32*, i32, i32, i32*, i8*, %struct.TYPE_7__*, %struct.TYPE_9__*) #2

declare dso_local i64 @PeekNamedPipe(i8*, i32*, i64, i32*, i64*, i32*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i64 @ReadFile(i8*, i8*, i64, i64*, i32*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @WaitForSingleObject(i32, i32) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i32 @GetExitCodeProcess(i32, i64*) #2

declare dso_local i32 @CloseHandle(i32) #2

declare dso_local i32 @safe_closehandle(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
