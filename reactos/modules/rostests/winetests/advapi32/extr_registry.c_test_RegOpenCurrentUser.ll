; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_RegOpenCurrentUser.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_RegOpenCurrentUser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CURRENT_USER = common dso_local global i64 0, align 8
@KEY_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"got %d, error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RegOpenCurrentUser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RegOpenCurrentUser() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @HKEY_CURRENT_USER, align 8
  store i64 %3, i64* %1, align 8
  %4 = load i32, i32* @KEY_READ, align 4
  %5 = call i32 @RegOpenCurrentUser(i32 %4, i64* %1)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = call i32 (...) @GetLastError()
  %13 = call i32 (i32, i8*, i64, ...) @ok(i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %11, i32 %12)
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @HKEY_CURRENT_USER, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %1, align 8
  %19 = call i32 (i32, i8*, i64, ...) @ok(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* %1, align 8
  %21 = call i32 @RegCloseKey(i64 %20)
  ret void
}

declare dso_local i32 @RegOpenCurrentUser(i32, i64*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @RegCloseKey(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
