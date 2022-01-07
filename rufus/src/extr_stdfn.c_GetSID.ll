; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdfn.c_GetSID.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdfn.c_GetSID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@TOKEN_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"OpenProcessToken failed: %s\0A\00", align 1
@TokenUser = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"GetTokenInformation (pre) failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to convert SID to string: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Unable to convert string back to SID: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"GetTokenInformation (real) failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @GetSID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetSID() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = call i32 (...) @GetCurrentProcess()
  %8 = load i32, i32* @TOKEN_QUERY, align 4
  %9 = call i32 @OpenProcessToken(i32 %7, i32 %8, i32* %4)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = call i32 (...) @WindowsErrorString()
  %13 = call i32 @uprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32* null, i32** %1, align 8
  br label %70

14:                                               ; preds = %0
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @TokenUser, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = call i64 @GetTokenInformation(i32 %15, i32 %16, %struct.TYPE_6__* %17, i32 0, i32* %3)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %14
  %21 = call i64 (...) @GetLastError()
  %22 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = call i32 (...) @WindowsErrorString()
  %26 = call i32 @uprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i32* null, i32** %1, align 8
  br label %70

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @calloc(i32 1, i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %2, align 8
  br label %31

31:                                               ; preds = %27, %14
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = icmp eq %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32* null, i32** %1, align 8
  br label %70

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @TokenUser, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @GetTokenInformation(i32 %36, i32 %37, %struct.TYPE_6__* %38, i32 %39, i32* %3)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %35
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ConvertSidToStringSidA(i32 %46, i8** %6)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = call i32 (...) @WindowsErrorString()
  %51 = call i32 @uprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  store i32* null, i32** %5, align 8
  br label %62

52:                                               ; preds = %42
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @ConvertStringSidToSidA(i8* %53, i32** %5)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = call i32 (...) @WindowsErrorString()
  %58 = call i32 @uprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  store i32* null, i32** %5, align 8
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @LocalFree(i8* %60)
  br label %62

62:                                               ; preds = %59, %49
  br label %66

63:                                               ; preds = %35
  store i32* null, i32** %5, align 8
  %64 = call i32 (...) @WindowsErrorString()
  %65 = call i32 @uprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %62
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = call i32 @free(%struct.TYPE_6__* %67)
  %69 = load i32*, i32** %5, align 8
  store i32* %69, i32** %1, align 8
  br label %70

70:                                               ; preds = %66, %34, %24, %11
  %71 = load i32*, i32** %1, align 8
  ret i32* %71
}

declare dso_local i32 @OpenProcessToken(i32, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @uprintf(i8*, i32) #1

declare dso_local i32 @WindowsErrorString(...) #1

declare dso_local i64 @GetTokenInformation(i32, i32, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @ConvertSidToStringSidA(i32, i8**) #1

declare dso_local i32 @ConvertStringSidToSidA(i8*, i32**) #1

declare dso_local i32 @LocalFree(i8*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
