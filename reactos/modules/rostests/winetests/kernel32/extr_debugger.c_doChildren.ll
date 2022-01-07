; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_debugger.c_doChildren.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_debugger.c_doChildren.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_blackbox = type { i32 }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"debugger children last\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"_init\00", align 1
@EVENT_ALL_ACCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"OpenEvent failed, last error %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"_attach\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"CreateProcess failed, last error %d.\0A\00", align 1
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"Timed out waiting for the child to exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"CloseHandle failed, last error %d.\0A\00", align 1
@child_failures = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @doChildren to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doChildren(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.child_blackbox, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca %struct.TYPE_6__, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i8**, i8*** %4, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 3
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 1, i32* %16, align 4
  br label %134

27:                                               ; preds = %2
  %28 = load i8**, i8*** %4, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 3
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i8* @strrchr(i8* %31, i8 signext 92)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  br label %40

38:                                               ; preds = %27
  %39 = load i8*, i8** %7, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i8* [ %37, %35 ], [ %39, %38 ]
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strcpy(i8* %20, i8* %42)
  %44 = call i32 @strcat(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @EVENT_ALL_ACCESS, align 4
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32* @OpenEventA(i32 %45, i32 %46, i8* %20)
  store i32* %47, i32** %13, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = icmp ne i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 (...) @GetLastError()
  %52 = call i32 (i32, i8*, ...) @child_ok(i32 %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %13, align 8
  %54 = call i32 @SetEvent(i32* %53)
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @CloseHandle(i32* %55)
  %57 = load i8*, i8** %7, align 8
  %58 = call i8* @strrchr(i8* %57, i8 signext 92)
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %40
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  br label %66

64:                                               ; preds = %40
  %65 = load i8*, i8** %7, align 8
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi i8* [ %63, %61 ], [ %65, %64 ]
  store i8* %67, i8** %8, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @strcpy(i8* %20, i8* %68)
  %70 = call i32 @strcat(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32, i32* @EVENT_ALL_ACCESS, align 4
  %72 = load i32, i32* @FALSE, align 4
  %73 = call i32* @OpenEventA(i32 %71, i32 %72, i8* %20)
  store i32* %73, i32** %13, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = icmp ne i32* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 (...) @GetLastError()
  %78 = call i32 (i32, i8*, ...) @child_ok(i32 %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* @INFINITE, align 4
  %81 = call i64 @WaitForSingleObject(i32* %79, i32 %80)
  %82 = load i32*, i32** %13, align 8
  %83 = call i32 @CloseHandle(i32* %82)
  %84 = call i32 (...) @GetProcessHeap()
  %85 = load i8**, i8*** %4, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @strlen(i8* %87)
  %89 = load i8*, i8** %5, align 8
  %90 = call i64 @strlen(i8* %89)
  %91 = add nsw i64 %88, %90
  %92 = add nsw i64 %91, 2
  %93 = call i8* @HeapAlloc(i32 %84, i32 0, i64 %92)
  store i8* %93, i8** %14, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = load i8**, i8*** %4, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @sprintf(i8* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %97, i8* %98)
  %100 = call i32 @memset(%struct.TYPE_6__* %12, i32 0, i32 4)
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 4, i32* %101, align 4
  %102 = load i8*, i8** %14, align 8
  %103 = load i32, i32* @FALSE, align 4
  %104 = call i32 @CreateProcessA(i32* null, i8* %102, i32* null, i32* null, i32 %103, i32 0, i32* null, i32* null, %struct.TYPE_6__* %12, %struct.TYPE_7__* %11)
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i32 (...) @GetLastError()
  %107 = call i32 (i32, i8*, ...) @child_ok(i32 %105, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i64 @WaitForSingleObject(i32* %109, i32 10000)
  %111 = load i64, i64* @WAIT_OBJECT_0, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 (i32, i8*, ...) @child_ok(i32 %113, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @CloseHandle(i32* %116)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = call i32 (...) @GetLastError()
  %120 = call i32 (i32, i8*, ...) @child_ok(i32 %118, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @CloseHandle(i32* %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = call i32 (...) @GetLastError()
  %126 = call i32 (i32, i8*, ...) @child_ok(i32 %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @child_failures, align 4
  %128 = getelementptr inbounds %struct.child_blackbox, %struct.child_blackbox* %6, i32 0, i32 0
  store i32 %127, i32* %128, align 4
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 @save_blackbox(i8* %129, %struct.child_blackbox* %6, i32 4)
  %131 = call i32 (...) @GetProcessHeap()
  %132 = load i8*, i8** %14, align 8
  %133 = call i32 @HeapFree(i32 %131, i32 0, i8* %132)
  store i32 0, i32* %16, align 4
  br label %134

134:                                              ; preds = %66, %26
  %135 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %16, align 4
  switch i32 %136, label %138 [
    i32 0, label %137
    i32 1, label %137
  ]

137:                                              ; preds = %134, %134
  ret void

138:                                              ; preds = %134
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32* @OpenEventA(i32, i32, i8*) #2

declare dso_local i32 @child_ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @SetEvent(i32*) #2

declare dso_local i32 @CloseHandle(i32*) #2

declare dso_local i64 @WaitForSingleObject(i32*, i32) #2

declare dso_local i8* @HeapAlloc(i32, i32, i64) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_7__*) #2

declare dso_local i32 @save_blackbox(i8*, %struct.child_blackbox*, i32) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
