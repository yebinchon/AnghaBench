; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/process/extr__system.c_system.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/process/extr__system.c_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i64, i32*, i32, i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"COMSPEC\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"cmd.exe\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" /C \00", align 1
@STARTF_USESHOWWINDOW = common dso_local global i32 0, align 4
@SW_SHOWDEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CREATE_NEW_PROCESS_GROUP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @system(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %11 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %103

18:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %103

19:                                               ; preds = %1
  %20 = load i8*, i8** %5, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %103

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strrchr(i8* %28, i8 signext 92)
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @strrchr(i8* %30, i8 signext 47)
  %32 = call i8* @max(i8* %29, i8* %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i8*, i8** %5, align 8
  store i8* %36, i8** %8, align 8
  br label %40

37:                                               ; preds = %27
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %8, align 8
  br label %40

40:                                               ; preds = %37, %35
  %41 = load i8*, i8** %8, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = add nsw i64 %42, 4
  %44 = load i8*, i8** %3, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = add nsw i64 %43, %45
  %47 = add nsw i64 %46, 1
  %48 = call i8* @malloc(i64 %47)
  store i8* %48, i8** %4, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = call i32 @_set_errno(i32 %52)
  store i32 -1, i32* %2, align 4
  br label %103

54:                                               ; preds = %40
  %55 = load i8*, i8** %4, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @strcpy(i8* %55, i8* %56)
  %58 = load i8*, i8** %4, align 8
  %59 = call i8* @strrchr(i8* %58, i8 signext 46)
  store i8* %59, i8** %8, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i8*, i8** %8, align 8
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %62, %54
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @strcat(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i8*, i8** %4, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @strcat(i8* %67, i8* %68)
  %70 = call i32 @memset(%struct.TYPE_6__* %7, i32 0, i32 40)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 40, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  store i32* null, i32** %72, align 8
  %73 = load i32, i32* @STARTF_USESHOWWINDOW, align 4
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @SW_SHOWDEFAULT, align 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 %75, i32* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32* null, i32** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = load i32, i32* @TRUE, align 4
  %82 = load i32, i32* @CREATE_NEW_PROCESS_GROUP, align 4
  %83 = call i64 @CreateProcessA(i8* %79, i8* %80, i32* null, i32* null, i32 %81, i32 %82, i32* null, i32* null, %struct.TYPE_6__* %7, %struct.TYPE_7__* %6)
  store i64 %83, i64* %9, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @FALSE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %64
  %90 = call i32 (...) @GetLastError()
  %91 = call i32 @_dosmaperr(i32 %90)
  store i32 -1, i32* %2, align 4
  br label %103

92:                                               ; preds = %64
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @CloseHandle(i64 %94)
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @_cwait(i32* %10, i64 %97, i32 0)
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @CloseHandle(i64 %100)
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %92, %89, %51, %22, %18, %17
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @max(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @_set_errno(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @CreateProcessA(i8*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @_dosmaperr(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @_cwait(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
