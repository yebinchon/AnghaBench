; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_kernel_objects_security.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_kernel_objects_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOKEN_DUPLICATE = common dso_local global i32 0, align 4
@TOKEN_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"OpenProcessToken error %d\0A\00", align 1
@TokenPrimary = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"expected TokenPrimary, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"access token should not be an impersonation token\0A\00", align 1
@SecurityImpersonation = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"DuplicateToken error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"access token should be a valid impersonation token\0A\00", align 1
@TokenImpersonation = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"expected TokenImpersonation, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_kernel_objects_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_kernel_objects_security() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i32 (...) @GetCurrentProcess()
  %6 = load i32, i32* @TOKEN_DUPLICATE, align 4
  %7 = load i32, i32* @TOKEN_QUERY, align 4
  %8 = or i32 %6, %7
  %9 = call i64 @OpenProcessToken(i32 %5, i32 %8, i32* %2)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i64 (...) @GetLastError()
  %13 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @validate_impersonation_token(i32 %14, i64* %4)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @TokenPrimary, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %4, align 8
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %3, align 8
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @SecurityImpersonation, align 4
  %29 = call i64 @DuplicateToken(i32 %27, i32 %28, i32* %1)
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %3, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i64 (...) @GetLastError()
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* %1, align 4
  %35 = call i64 @validate_impersonation_token(i32 %34, i64* %4)
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @TokenImpersonation, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %4, align 8
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @test_mutex_security(i32 %45)
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @test_event_security(i32 %47)
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @test_named_pipe_security(i32 %49)
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @test_semaphore_security(i32 %51)
  %53 = load i32, i32* %1, align 4
  %54 = call i32 @test_file_security(i32 %53)
  %55 = call i32 (...) @test_filemap_security()
  %56 = call i32 (...) @test_thread_security()
  %57 = call i32 (...) @test_process_access()
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @CloseHandle(i32 %58)
  %60 = load i32, i32* %1, align 4
  %61 = call i32 @CloseHandle(i32 %60)
  ret void
}

declare dso_local i64 @OpenProcessToken(i32, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @validate_impersonation_token(i32, i64*) #1

declare dso_local i64 @DuplicateToken(i32, i32, i32*) #1

declare dso_local i32 @test_mutex_security(i32) #1

declare dso_local i32 @test_event_security(i32) #1

declare dso_local i32 @test_named_pipe_security(i32) #1

declare dso_local i32 @test_semaphore_security(i32) #1

declare dso_local i32 @test_file_security(i32) #1

declare dso_local i32 @test_filemap_security(...) #1

declare dso_local i32 @test_thread_security(...) #1

declare dso_local i32 @test_process_access(...) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
