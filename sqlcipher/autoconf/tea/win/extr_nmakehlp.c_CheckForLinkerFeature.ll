; ModuleID = '/home/carl/AnghaBench/sqlcipher/autoconf/tea/win/extr_nmakehlp.c_CheckForLinkerFeature.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/autoconf/tea/win/extr_nmakehlp.c_CheckForLinkerFeature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }

@STARTF_USESTDHANDLES = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@Out = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@DUPLICATE_SAME_ACCESS = common dso_local global i32 0, align 4
@DUPLICATE_CLOSE_SOURCE = common dso_local global i32 0, align 4
@Err = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str = private unnamed_addr constant [18 x i8] c"link.exe -nologo \00", align 1
@DETACHED_PROCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Tried to launch: \22%s\22, but got error [%u]: \00", align 1
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_MAX_WIDTH_MASK = common dso_local global i32 0, align 4
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@ReadFromPipe = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"LNK1117\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"LNK4044\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @CheckForLinkerFeature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckForLinkerFeature(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca i32, align 4
  %8 = alloca [300 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca [100 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %16 = call i32 (...) @GetCurrentProcess()
  store i32 %16, i32* %10, align 4
  %17 = call i32 @ZeroMemory(%struct.TYPE_11__* %5, i32 48)
  %18 = call i32 @ZeroMemory(%struct.TYPE_11__* %4, i32 48)
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  store i32 48, i32* %19, align 8
  %20 = load i32, i32* @STARTF_USESTDHANDLES, align 4
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 9
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 8
  store i32 %22, i32* %23, align 8
  %24 = call i32 @ZeroMemory(%struct.TYPE_11__* %6, i32 48)
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  store i32 48, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 7
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* @TRUE, align 4
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 6
  store i32 %27, i32* %28, align 8
  %29 = call i32 @CreatePipe(i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Out, i32 0, i32 1), i32* %11, %struct.TYPE_11__* %6, i32 0)
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 5
  %34 = load i32, i32* @TRUE, align 4
  %35 = load i32, i32* @DUPLICATE_SAME_ACCESS, align 4
  %36 = load i32, i32* @DUPLICATE_CLOSE_SOURCE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @DuplicateHandle(i32 %30, i32 %31, i32 %32, i32* %33, i32 0, i32 %34, i32 %37)
  %39 = call i32 @CreatePipe(i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Err, i32 0, i32 1), i32* %11, %struct.TYPE_11__* %6, i32 0)
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  %44 = load i32, i32* @TRUE, align 4
  %45 = load i32, i32* @DUPLICATE_SAME_ACCESS, align 4
  %46 = load i32, i32* @DUPLICATE_CLOSE_SOURCE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @DuplicateHandle(i32 %40, i32 %41, i32 %42, i32* %43, i32 0, i32 %44, i32 %47)
  %49 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %50 = call i32 @lstrcpy(i8* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %51 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @lstrcat(i8* %51, i8* %52)
  %54 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %55 = load i32, i32* @TRUE, align 4
  %56 = load i32, i32* @DETACHED_PROCESS, align 4
  %57 = call i32 @CreateProcess(i32* null, i8* %54, i32* null, i32* null, i32 %55, i32 %56, i32* null, i32* null, %struct.TYPE_11__* %4, %struct.TYPE_11__* %5)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %85, label %60

60:                                               ; preds = %1
  %61 = call i32 (...) @GetLastError()
  store i32 %61, i32* %14, align 4
  %62 = getelementptr inbounds [300 x i8], [300 x i8]* %8, i64 0, i64 0
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @snprintf(i8* %62, i32 299, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %63, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %67 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @FORMAT_MESSAGE_MAX_WIDTH_MASK, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [300 x i8], [300 x i8]* %8, i64 0, i64 %73
  %75 = ptrtoint i8* %74 to i32
  %76 = load i32, i32* %15, align 4
  %77 = sub nsw i32 300, %76
  %78 = call i32 @FormatMessage(i32 %70, i64 0, i32 %71, i32 0, i32 %75, i32 %77, i32 0)
  %79 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %80 = call i32 @GetStdHandle(i32 %79)
  %81 = getelementptr inbounds [300 x i8], [300 x i8]* %8, i64 0, i64 0
  %82 = getelementptr inbounds [300 x i8], [300 x i8]* %8, i64 0, i64 0
  %83 = call i32 @lstrlen(i8* %82)
  %84 = call i32 @WriteFile(i32 %80, i8* %81, i32 %83, i32* %14, i32* null)
  store i32 2, i32* %2, align 4
  br label %139

85:                                               ; preds = %1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @CloseHandle(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @CloseHandle(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @WaitForInputIdle(i32 %93, i32 5000)
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @CloseHandle(i32 %96)
  %98 = load i32, i32* @ReadFromPipe, align 4
  %99 = call i32 @CreateThread(i32* null, i32 0, i32 %98, %struct.TYPE_12__* @Out, i32 0, i32* %7)
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @ReadFromPipe, align 4
  %102 = call i32 @CreateThread(i32* null, i32 0, i32 %101, %struct.TYPE_12__* @Err, i32 0, i32* %7)
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @INFINITE, align 4
  %107 = call i32 @WaitForSingleObject(i32 %105, i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @CloseHandle(i32 %109)
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %112 = load i32, i32* @TRUE, align 4
  %113 = call i32 @WaitForMultipleObjects(i32 2, i32* %111, i32 %112, i32 500)
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @CloseHandle(i32 %115)
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @CloseHandle(i32 %118)
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Out, i32 0, i32 0), align 4
  %121 = call i32* @strstr(i32 %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %122 = icmp ne i32* %121, null
  br i1 %122, label %135, label %123

123:                                              ; preds = %85
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Err, i32 0, i32 0), align 4
  %125 = call i32* @strstr(i32 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %126 = icmp ne i32* %125, null
  br i1 %126, label %135, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Out, i32 0, i32 0), align 4
  %129 = call i32* @strstr(i32 %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %130 = icmp ne i32* %129, null
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Err, i32 0, i32 0), align 4
  %133 = call i32* @strstr(i32 %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %134 = icmp ne i32* %133, null
  br label %135

135:                                              ; preds = %131, %127, %123, %85
  %136 = phi i1 [ true, %127 ], [ true, %123 ], [ true, %85 ], [ %134, %131 ]
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %135, %60
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @CreatePipe(i32*, i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @DuplicateHandle(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @lstrcpy(i8*, i8*) #1

declare dso_local i32 @lstrcat(i8*, i8*) #1

declare dso_local i32 @CreateProcess(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @FormatMessage(i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WriteFile(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @GetStdHandle(i32) #1

declare dso_local i32 @lstrlen(i8*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @WaitForInputIdle(i32, i32) #1

declare dso_local i32 @CreateThread(i32*, i32, i32, %struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @WaitForMultipleObjects(i32, i32*, i32, i32) #1

declare dso_local i32* @strstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
