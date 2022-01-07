; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_urlcache.c_test_GetDiskInfoA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_urlcache.c_test_GetDiskInfoA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"GetDiskInfoA failed %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\\non\\existing\\path\00", align 1
@old_ie = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"GetDiskInfoA succeeded\0A\00", align 1
@ERROR_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"got %u expected ERROR_PATH_NOT_FOUND\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"got %u expected ERROR_INVALID_PARAMETER\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetDiskInfoA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetDiskInfoA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = call i32 @GetSystemDirectoryA(i8* %12, i32 %13)
  %15 = call i8* @strchr(i8* %12, i8 signext 92)
  store i8* %15, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %8, align 8
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %17, %0
  %21 = call i32 @GetDiskInfoA(i8* %12, i32* %3, i32* %4, i32* %5)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 (...) @GetLastError()
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @GetDiskInfoA(i8* %12, i32* %3, i32* %4, i32* null)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i32 (...) @GetLastError()
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = call i32 @GetDiskInfoA(i8* %12, i32* %3, i32* null, i32* null)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i32 (...) @GetLastError()
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i32 @GetDiskInfoA(i8* %12, i32* null, i32* null, i32* null)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = call i32 (...) @GetLastError()
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = call i32 @SetLastError(i32 -559038737)
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strcpy(i8* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @GetDiskInfoA(i8* %12, i32* null, i32* null, i32* null)
  store i32 %40, i32* %1, align 4
  %41 = call i32 (...) @GetLastError()
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %1, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %20
  %45 = load i64, i64* @old_ie, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %1, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ false, %44 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = call i64 @broken(i32 %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %50, %20
  %56 = phi i1 [ true, %20 ], [ %54, %50 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @ERROR_PATH_NOT_FOUND, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %73, label %62

62:                                               ; preds = %55
  %63 = load i64, i64* @old_ie, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %2, align 4
  %67 = icmp eq i32 %66, -559038737
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i1 [ false, %62 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32
  %71 = call i64 @broken(i32 %70)
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %68, %55
  %74 = phi i1 [ true, %55 ], [ %72, %68 ]
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %2, align 4
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = call i32 @SetLastError(i32 -559038737)
  %79 = call i32 @GetDiskInfoA(i8* null, i32* null, i32* null, i32* null)
  store i32 %79, i32* %1, align 4
  %80 = call i32 (...) @GetLastError()
  store i32 %80, i32* %2, align 4
  %81 = load i32, i32* %1, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %2, align 4
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  %92 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %92)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetSystemDirectoryA(i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @GetDiskInfoA(i8*, i32*, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @broken(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
