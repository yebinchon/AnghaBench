; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv_new/extr_settings.c_OpenUserRegistryPathPerProcessId.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv_new/extr_settings.c_OpenUserRegistryPathPerProcessId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }

@TRUE = common dso_local global i32 0, align 4
@PROCESS_QUERY_INFORMATION = common dso_local global i32 0, align 4
@PROCESS_VM_READ = common dso_local global i32 0, align 4
@READ_CONTROL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error: OpenProcess failed(0x%x)\0A\00", align 1
@TOKEN_QUERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Error: OpenProcessToken failed(0x%x)\0A\00", align 1
@TokenUser = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Error: GetTokenInformation failed(0x%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Error: RtlConvertSidToUnicodeString failed(0x%x)\0A\00", align 1
@HKEY_USERS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @OpenUserRegistryPathPerProcessId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenUserRegistryPathPerProcessId(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [256 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* @PROCESS_QUERY_INFORMATION, align 4
  %17 = load i32, i32* @PROCESS_VM_READ, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @READ_CONTROL, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @FALSE, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32* @OpenProcess(i32 %20, i32 %21, i32 %22)
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = call i32 (...) @GetLastError()
  %28 = call i32 @DPRINT1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %4, align 4
  br label %91

30:                                               ; preds = %3
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* @TOKEN_QUERY, align 4
  %33 = call i32 @OpenProcessToken(i32* %31, i32 %32, i32** %9)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = call i32 (...) @GetLastError()
  %37 = call i32 @DPRINT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @CloseHandle(i32* %38)
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %4, align 4
  br label %91

41:                                               ; preds = %30
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* @TokenUser, align 4
  %44 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %45 = ptrtoint i32* %44 to i32
  %46 = call i32 @GetTokenInformation(i32* %42, i32 %43, i32 %45, i32 1024, i32* %12)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %41
  %49 = call i32 (...) @GetLastError()
  %50 = call i32 @DPRINT1(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @CloseHandle(i32* %51)
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @CloseHandle(i32* %53)
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %4, align 4
  br label %91

56:                                               ; preds = %41
  %57 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %58 = bitcast i32* %57 to %struct.TYPE_9__*
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 16
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %14, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %63 = load i32, i32* @TRUE, align 4
  %64 = call i32 @RtlConvertSidToUnicodeString(%struct.TYPE_8__* %13, %struct.TYPE_9__* %62, i32 %63)
  %65 = call i32 @NT_SUCCESS(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %56
  %68 = call i32 (...) @GetLastError()
  %69 = call i32 @DPRINT1(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @CloseHandle(i32* %70)
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @CloseHandle(i32* %72)
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %4, align 4
  br label %91

75:                                               ; preds = %56
  %76 = load i32, i32* @HKEY_USERS, align 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @RegOpenKeyExW(i32 %76, i32 %78, i32 0, i32 %79, i32 %80)
  %82 = load i64, i64* @ERROR_SUCCESS, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %8, align 4
  %85 = call i32 @RtlFreeUnicodeString(%struct.TYPE_8__* %13)
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @CloseHandle(i32* %86)
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @CloseHandle(i32* %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %75, %67, %48, %35, %26
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32* @OpenProcess(i32, i32, i32) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @OpenProcessToken(i32*, i32, i32**) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32 @GetTokenInformation(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @RtlConvertSidToUnicodeString(%struct.TYPE_8__*, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @RegOpenKeyExW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @RtlFreeUnicodeString(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
