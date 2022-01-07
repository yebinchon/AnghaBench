; ModuleID = '/home/carl/AnghaBench/sqlcipher/autoconf/tea/win/extr_nmakehlp.c_CheckForCompilerFeature.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/autoconf/tea/win/extr_nmakehlp.c_CheckForCompilerFeature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }

@STARTF_USESTDHANDLES = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@Out = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@DUPLICATE_SAME_ACCESS = common dso_local global i32 0, align 4
@DUPLICATE_CLOSE_SOURCE = common dso_local global i32 0, align 4
@Err = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str = private unnamed_addr constant [45 x i8] c"cl.exe -nologo -c -TC -Zs -X -Fp.\\_junk.pch \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" .\\nul\00", align 1
@DETACHED_PROCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Tried to launch: \22%s\22, but got error [%u]: \00", align 1
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_MAX_WIDTH_MASK = common dso_local global i32 0, align 4
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@ReadFromPipe = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"D4002\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"D9002\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"D2021\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @CheckForCompilerFeature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckForCompilerFeature(i8* %0) #0 {
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
  %27 = load i32, i32* @FALSE, align 4
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
  %50 = call i32 @lstrcpy(i8* %49, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %51 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @lstrcat(i8* %51, i8* %52)
  %54 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %55 = call i32 @lstrcat(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %56 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %57 = load i32, i32* @TRUE, align 4
  %58 = load i32, i32* @DETACHED_PROCESS, align 4
  %59 = call i32 @CreateProcess(i32* null, i8* %56, i32* null, i32* null, i32 %57, i32 %58, i32* null, i32* null, %struct.TYPE_11__* %4, %struct.TYPE_11__* %5)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %87, label %62

62:                                               ; preds = %1
  %63 = call i32 (...) @GetLastError()
  store i32 %63, i32* %14, align 4
  %64 = getelementptr inbounds [300 x i8], [300 x i8]* %8, i64 0, i64 0
  %65 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @snprintf(i8* %64, i32 299, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %65, i32 %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %69 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @FORMAT_MESSAGE_MAX_WIDTH_MASK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [300 x i8], [300 x i8]* %8, i64 0, i64 %75
  %77 = ptrtoint i8* %76 to i32
  %78 = load i32, i32* %15, align 4
  %79 = sub nsw i32 300, %78
  %80 = call i32 @FormatMessage(i32 %72, i64 0, i32 %73, i32 0, i32 %77, i32 %79, i32 0)
  %81 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %82 = call i32 @GetStdHandle(i32 %81)
  %83 = getelementptr inbounds [300 x i8], [300 x i8]* %8, i64 0, i64 0
  %84 = getelementptr inbounds [300 x i8], [300 x i8]* %8, i64 0, i64 0
  %85 = call i32 @lstrlen(i8* %84)
  %86 = call i32 @WriteFile(i32 %82, i8* %83, i32 %85, i32* %14, i32* null)
  store i32 2, i32* %2, align 4
  br label %149

87:                                               ; preds = %1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @CloseHandle(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @CloseHandle(i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @WaitForInputIdle(i32 %95, i32 5000)
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @CloseHandle(i32 %98)
  %100 = load i32, i32* @ReadFromPipe, align 4
  %101 = call i32 @CreateThread(i32* null, i32 0, i32 %100, %struct.TYPE_12__* @Out, i32 0, i32* %7)
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @ReadFromPipe, align 4
  %104 = call i32 @CreateThread(i32* null, i32 0, i32 %103, %struct.TYPE_12__* @Err, i32 0, i32* %7)
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @INFINITE, align 4
  %109 = call i32 @WaitForSingleObject(i32 %107, i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @CloseHandle(i32 %111)
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %114 = load i32, i32* @TRUE, align 4
  %115 = call i32 @WaitForMultipleObjects(i32 2, i32* %113, i32 %114, i32 500)
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @CloseHandle(i32 %117)
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @CloseHandle(i32 %120)
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Out, i32 0, i32 0), align 4
  %123 = call i32* @strstr(i32 %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %124 = icmp ne i32* %123, null
  br i1 %124, label %145, label %125

125:                                              ; preds = %87
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Err, i32 0, i32 0), align 4
  %127 = call i32* @strstr(i32 %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %128 = icmp ne i32* %127, null
  br i1 %128, label %145, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Out, i32 0, i32 0), align 4
  %131 = call i32* @strstr(i32 %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %132 = icmp ne i32* %131, null
  br i1 %132, label %145, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Err, i32 0, i32 0), align 4
  %135 = call i32* @strstr(i32 %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %136 = icmp ne i32* %135, null
  br i1 %136, label %145, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Out, i32 0, i32 0), align 4
  %139 = call i32* @strstr(i32 %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %140 = icmp ne i32* %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Err, i32 0, i32 0), align 4
  %143 = call i32* @strstr(i32 %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %144 = icmp ne i32* %143, null
  br label %145

145:                                              ; preds = %141, %137, %133, %129, %125, %87
  %146 = phi i1 [ true, %137 ], [ true, %133 ], [ true, %129 ], [ true, %125 ], [ true, %87 ], [ %144, %141 ]
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %145, %62
  %150 = load i32, i32* %2, align 4
  ret i32 %150
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
