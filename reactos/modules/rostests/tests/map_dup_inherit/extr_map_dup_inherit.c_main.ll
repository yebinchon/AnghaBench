; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/map_dup_inherit/extr_map_dup_inherit.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/map_dup_inherit/extr_map_dup_inherit.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%lu: Starting\0A\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i8* null, align 8
@PAGE_READWRITE = common dso_local global i32 0, align 4
@SEC_RESERVE = common dso_local global i32 0, align 4
@HANDLE_FLAG_INHERIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%lu: Could not make handle inheritable.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%lu: Could not create anonymous file map.\0A\00", align 1
@FILE_MAP_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"%lu: Could not map view of file.\0A\00", align 1
@MEM_COMMIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"%lu: VirtualAlloc failed to realize the page.\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"%lu: Can't write to the memory (%08x != 0x12345678)\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s %p\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"%lu: Could not create child process.\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [53 x i8] c"%lu: Failed to wait for child process to terminate.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca [1000 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (...) @GetCurrentProcessId()
  %14 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @atoi(i8* %20)
  %22 = call i64 @UlongToPtr(i32 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %7, align 8
  br label %40

24:                                               ; preds = %2
  %25 = load i8*, i8** @INVALID_HANDLE_VALUE, align 8
  %26 = load i32, i32* @PAGE_READWRITE, align 4
  %27 = load i32, i32* @SEC_RESERVE, align 4
  %28 = or i32 %26, %27
  %29 = call i8* @CreateFileMapping(i8* %25, i32* null, i32 %28, i32 0, i32 4096, i32* null)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @HANDLE_FLAG_INHERIT, align 4
  %32 = load i32, i32* @HANDLE_FLAG_INHERIT, align 4
  %33 = call i32 @SetHandleInformation(i8* %30, i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (...) @GetCurrentProcessId()
  %38 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 100, i32* %3, align 4
  br label %159

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %17
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 (...) @GetCurrentProcessId()
  %46 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  store i32 1, i32* %3, align 4
  br label %159

47:                                               ; preds = %40
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @FILE_MAP_WRITE, align 4
  %50 = call i64 @MapViewOfFile(i8* %48, i32 %49, i32 0, i32 0, i32 4096)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (...) @GetCurrentProcessId()
  %56 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** @INVALID_HANDLE_VALUE, align 8
  %59 = icmp ne i8* %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @CloseHandle(i8* %61)
  br label %63

63:                                               ; preds = %60, %53
  store i32 2, i32* %3, align 4
  br label %159

64:                                               ; preds = %47
  %65 = load i64, i64* %6, align 8
  %66 = load i32, i32* @MEM_COMMIT, align 4
  %67 = load i32, i32* @PAGE_READWRITE, align 4
  %68 = call i32 @VirtualAlloc(i64 %65, i32 4096, i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 (...) @GetCurrentProcessId()
  %73 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** @INVALID_HANDLE_VALUE, align 8
  %76 = icmp ne i8* %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @CloseHandle(i8* %78)
  br label %80

80:                                               ; preds = %77, %70
  store i32 3, i32* %3, align 4
  br label %159

81:                                               ; preds = %64
  %82 = load i64, i64* %6, align 8
  %83 = inttoptr i64 %82 to i32*
  store i32* %83, i32** %8, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 305419896, i32* %85, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 305419896
  br i1 %89, label %90, label %97

90:                                               ; preds = %81
  %91 = load i32, i32* @stderr, align 4
  %92 = call i32 (...) @GetCurrentProcessId()
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %92, i32 %95)
  store i32 4, i32* %3, align 4
  br label %159

97:                                               ; preds = %81
  %98 = load i32, i32* %4, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %158

100:                                              ; preds = %97
  %101 = call i32 @memset(%struct.TYPE_6__* %9, i32 0, i32 16)
  %102 = call i32 @memset(%struct.TYPE_6__* %10, i32 0, i32 16)
  %103 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 @sprintf(i8* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %106, i8* %107)
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @CloseHandle(i8* %109)
  %111 = getelementptr inbounds [1000 x i8], [1000 x i8]* %11, i64 0, i64 0
  %112 = load i32, i32* @TRUE, align 4
  %113 = call i32 @CreateProcess(i32* null, i8* %111, i32* null, i32* null, i32 %112, i32 0, i32* null, i32* null, %struct.TYPE_6__* %9, %struct.TYPE_6__* %10)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %128, label %115

115:                                              ; preds = %100
  %116 = load i32, i32* @stderr, align 4
  %117 = call i32 (...) @GetCurrentProcessId()
  %118 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** @INVALID_HANDLE_VALUE, align 8
  %122 = icmp ne i8* %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @CloseHandle(i8* %125)
  br label %127

127:                                              ; preds = %123, %115
  store i32 5, i32* %3, align 4
  br label %159

128:                                              ; preds = %100
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @INFINITE, align 4
  %132 = call i64 @WaitForSingleObject(i32 %130, i32 %131)
  %133 = load i64, i64* @WAIT_OBJECT_0, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %128
  %136 = load i32, i32* @stderr, align 4
  %137 = call i32 (...) @GetCurrentProcessId()
  %138 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load i8*, i8** @INVALID_HANDLE_VALUE, align 8
  %142 = icmp ne i8* %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @CloseHandle(i8* %145)
  br label %147

147:                                              ; preds = %143, %135
  store i32 6, i32* %3, align 4
  br label %159

148:                                              ; preds = %128
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i8*, i8** @INVALID_HANDLE_VALUE, align 8
  %152 = icmp ne i8* %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @CloseHandle(i8* %155)
  br label %157

157:                                              ; preds = %153, %148
  br label %158

158:                                              ; preds = %157, %97
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %147, %127, %90, %80, %63, %43, %35
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @GetCurrentProcessId(...) #1

declare dso_local i64 @UlongToPtr(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @CreateFileMapping(i8*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @SetHandleInformation(i8*, i32, i32) #1

declare dso_local i64 @MapViewOfFile(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @CloseHandle(i8*) #1

declare dso_local i32 @VirtualAlloc(i64, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @CreateProcess(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
