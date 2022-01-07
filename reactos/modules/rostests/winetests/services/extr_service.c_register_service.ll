; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/services/extr_service.c_register_service.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/services/extr_service.c_register_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c".so\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" service \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@service_name = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"service_cmd \22%s\22\0A\00", align 1
@scm_handle = common dso_local global i32 0, align 4
@GENERIC_ALL = common dso_local global i32 0, align 4
@SERVICE_WIN32_OWN_PROCESS = common dso_local global i32 0, align 4
@SERVICE_DEMAND_START = common dso_local global i32 0, align 4
@SERVICE_ERROR_IGNORE = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Not enough access right to create service\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"CreateService failed: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @register_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @register_service(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = add nsw i32 %9, 150
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = call i32 @GetModuleFileNameA(i32* null, i8* %13, i32 %14)
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  store i8* %17, i8** %6, align 8
  %18 = call i64 @GetFileAttributesA(i8* %13)
  %19 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strcpy(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 3
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %21, %1
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strcpy(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = load i8*, i8** %6, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = load i8*, i8** %6, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** @service_name, align 8
  %44 = call i32 @strcpy(i8* %42, i8* %43)
  %45 = call i32 @trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %13)
  %46 = load i32, i32* @scm_handle, align 4
  %47 = load i8*, i8** @service_name, align 8
  %48 = load i8*, i8** @service_name, align 8
  %49 = load i32, i32* @GENERIC_ALL, align 4
  %50 = load i32, i32* @SERVICE_WIN32_OWN_PROCESS, align 4
  %51 = load i32, i32* @SERVICE_DEMAND_START, align 4
  %52 = load i32, i32* @SERVICE_ERROR_IGNORE, align 4
  %53 = call i32* @CreateServiceA(i32 %46, i8* %47, i8* %48, i32 %49, i32 %50, i32 %51, i32 %52, i8* %13, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i32* %53, i32** %7, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %26
  %57 = call i64 (...) @GetLastError()
  %58 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @skip(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  store i32 1, i32* %8, align 4
  br label %69

62:                                               ; preds = %56, %26
  %63 = load i32*, i32** %7, align 8
  %64 = icmp ne i32* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i64 (...) @GetLastError()
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %66)
  %68 = load i32*, i32** %7, align 8
  store i32* %68, i32** %2, align 8
  store i32 1, i32* %8, align 4
  br label %69

69:                                               ; preds = %62, %60
  %70 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32*, i32** %2, align 8
  ret i32* %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetModuleFileNameA(i32*, i8*, i32) #2

declare dso_local i64 @GetFileAttributesA(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @trace(i8*, i8*) #2

declare dso_local i32* @CreateServiceA(i32, i8*, i8*, i32, i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
