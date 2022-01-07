; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_directory.c_test_SetCurrentDirectoryA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_directory.c_test_SetCurrentDirectoryA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"\\some_dummy_dir\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"SetCurrentDirectoryA succeeded\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"wrong error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"\\some_dummy\\subdir\00", align 1
@ERROR_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetCurrentDirectoryA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetCurrentDirectoryA() #0 {
  %1 = call i32 @SetLastError(i32 0)
  %2 = call i32 @SetCurrentDirectoryA(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i32 (i32, i8*, ...) @ok(i32 %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i64 (...) @GetLastError()
  %8 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 (...) @GetLastError()
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %11)
  %13 = call i32 @SetCurrentDirectoryA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i64 (...) @GetLastError()
  %19 = load i64, i64* @ERROR_PATH_NOT_FOUND, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 (...) @GetLastError()
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %22)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SetCurrentDirectoryA(i8*) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
