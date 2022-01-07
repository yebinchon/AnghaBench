; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/lpctst/extr_conport.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/lpctst/extr_conport.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"WNT LPC Port Connector\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [port_name]\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"LoadLibrary(NTDLL)\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"NTDLL\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Could not load NTDLL\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"GetProcAddress(NTDLL.NtConnectPort)\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"NtConnectPort\00", align 1
@ConnectPort = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"Could not find NTDLL.NtConnectPort\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"GetProcAddress(NTDLL.NtQueryObject)\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"NtQueryObject\00", align 1
@QueryObject = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [36 x i8] c"Could not find NTDLL.NtQueryObject\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"GetProcAddress(NTDLL.NtYieldExecution)\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"NtYieldExecution\00", align 1
@YieldExecution = common dso_local global i32* null, align 8
@.str.13 = private unnamed_addr constant [39 x i8] c"Could not find NTDLL.NtYieldExecution\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"TryConnectPort(%s)\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Done\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 2
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* @EXIT_FAILURE, align 4
  %16 = call i32 @exit(i32 %15) #3
  unreachable

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32* @LoadLibrary(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %24 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %24, i32* %3, align 4
  br label %72

25:                                               ; preds = %17
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @GetProcAddress(i32* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** @ConnectPort, align 8
  %30 = load i32*, i32** @ConnectPort, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @FreeLibrary(i32* %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %36 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %36, i32* %3, align 4
  br label %72

37:                                               ; preds = %25
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @GetProcAddress(i32* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** @QueryObject, align 8
  %42 = load i32*, i32** @QueryObject, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @FreeLibrary(i32* %45)
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %48 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %48, i32* %3, align 4
  br label %72

49:                                               ; preds = %37
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %51 = load i32*, i32** %6, align 8
  %52 = call i64 @GetProcAddress(i32* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** @YieldExecution, align 8
  %54 = load i32*, i32** @YieldExecution, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @FreeLibrary(i32* %57)
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %60 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %60, i32* %3, align 4
  br label %72

61:                                               ; preds = %49
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8* %64)
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @TryConnectPort(i8* %68)
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %71 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %61, %56, %44, %32, %22
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @LoadLibrary(i8*) #1

declare dso_local i64 @GetProcAddress(i32*, i8*) #1

declare dso_local i32 @FreeLibrary(i32*) #1

declare dso_local i32 @TryConnectPort(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
