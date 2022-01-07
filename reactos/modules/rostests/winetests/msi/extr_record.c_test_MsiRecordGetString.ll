; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_record.c_test_MsiRecordGetString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_record.c_test_MsiRecordGetString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Expected a valid handle\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Expected 0, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"apple\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Expected \22\22, got \22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Expected 1, got %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Expected \225\22, got \22%s\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-5\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Expected \22-5\22, got \22%s\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Expected 2, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_MsiRecordGetString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_MsiRecordGetString() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = call i64 @MsiCreateRecord(i32 2)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @MAX_PATH, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @MsiRecordGetStringA(i64 %16, i32 1, i32* null, i32* %4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @ERROR_SUCCESS, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @MAX_PATH, align 4
  store i32 %29, i32* %4, align 4
  %30 = call i32 @lstrcpyA(i32* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @MsiRecordGetStringA(i64 %31, i32 1, i32* %9, i32* %4)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @ERROR_SUCCESS, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = call i32 @lstrcmpA(i32* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32* %9)
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %4, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @MAX_PATH, align 4
  store i32 %49, i32* %4, align 4
  %50 = call i32 @lstrcpyA(i32* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i64, i64* %1, align 8
  %52 = call i32 @MsiRecordGetStringA(i64 %51, i32 10, i32* %9, i32* %4)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @ERROR_SUCCESS, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = call i32 @lstrcmpA(i32* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32* %9)
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %4, align 4
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i64, i64* %1, align 8
  %70 = call i32 @MsiCloseHandle(i64 %69)
  %71 = call i64 @MsiCreateRecord(i32 1)
  store i64 %71, i64* %1, align 8
  %72 = load i64, i64* %1, align 8
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %76 = load i64, i64* %1, align 8
  %77 = call i32 @MsiRecordSetInteger(i64 %76, i32 1, i32 5)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @ERROR_SUCCESS, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @MAX_PATH, align 4
  store i32 %84, i32* %4, align 4
  %85 = load i64, i64* %1, align 8
  %86 = call i32 @MsiRecordGetStringA(i64 %85, i32 1, i32* null, i32* %4)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @ERROR_SUCCESS, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %5, align 4
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = icmp eq i32 %93, 1
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %4, align 4
  %97 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @MAX_PATH, align 4
  store i32 %98, i32* %4, align 4
  %99 = call i32 @lstrcpyA(i32* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i64, i64* %1, align 8
  %101 = call i32 @MsiRecordGetStringA(i64 %100, i32 1, i32* %9, i32* %4)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @ERROR_SUCCESS, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %5, align 4
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = call i32 @lstrcmpA(i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32* %9)
  %113 = load i32, i32* %4, align 4
  %114 = icmp eq i32 %113, 1
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %4, align 4
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %116)
  %118 = load i64, i64* %1, align 8
  %119 = call i32 @MsiRecordSetInteger(i64 %118, i32 1, i32 -5)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @ERROR_SUCCESS, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %5, align 4
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @MAX_PATH, align 4
  store i32 %126, i32* %4, align 4
  %127 = call i32 @lstrcpyA(i32* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i64, i64* %1, align 8
  %129 = call i32 @MsiRecordGetStringA(i64 %128, i32 1, i32* %9, i32* %4)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @ERROR_SUCCESS, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %5, align 4
  %135 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  %136 = call i32 @lstrcmpA(i32* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32* %9)
  %141 = load i32, i32* %4, align 4
  %142 = icmp eq i32 %141, 2
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* %4, align 4
  %145 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %144)
  %146 = load i64, i64* %1, align 8
  %147 = call i32 @MsiCloseHandle(i64 %146)
  %148 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %148)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @MsiCreateRecord(i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @MsiRecordGetStringA(i64, i32, i32*, i32*) #2

declare dso_local i32 @lstrcpyA(i32*, i8*) #2

declare dso_local i32 @lstrcmpA(i32*, i8*) #2

declare dso_local i32 @MsiCloseHandle(i64) #2

declare dso_local i32 @MsiRecordSetInteger(i64, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
