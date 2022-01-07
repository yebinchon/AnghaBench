; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_clean_up_base_environment.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_clean_up_base_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hProv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Expected failure\0A\00", align 1
@NTE_BAD_FLAGS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Expected NTE_BAD_FLAGS, got %08x\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@szContainer = common dso_local global i32 0, align 4
@szProvider = common dso_local global i32 0, align 4
@PROV_RSA_FULL = common dso_local global i32 0, align 4
@CRYPT_DELETEKEYSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clean_up_base_environment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_up_base_environment() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @SetLastError(i32 -559038737)
  %3 = load i32, i32* @hProv, align 4
  %4 = call i64 @CryptReleaseContext(i32 %3, i32 1)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i64, i64* %1, align 8
  %9 = call i64 @broken(i64 %8)
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %7, %0
  %12 = phi i1 [ true, %0 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = call i64 (...) @GetLastError()
  %16 = load i64, i64* @NTE_BAD_FLAGS, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 (...) @GetLastError()
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = call i32 @SetLastError(i32 -559038737)
  %22 = load i32, i32* @hProv, align 4
  %23 = call i64 @CryptReleaseContext(i32 %22, i32 0)
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* %1, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %11
  %27 = call i64 (...) @GetLastError()
  %28 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %26, %11
  %31 = phi i1 [ false, %11 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 (...) @GetLastError()
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @szContainer, align 4
  %36 = load i32, i32* @szProvider, align 4
  %37 = load i32, i32* @PROV_RSA_FULL, align 4
  %38 = load i32, i32* @CRYPT_DELETEKEYSET, align 4
  %39 = call i32 @CryptAcquireContextA(i32* @hProv, i32 %35, i32 %36, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @CryptReleaseContext(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CryptAcquireContextA(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
