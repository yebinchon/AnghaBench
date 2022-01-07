; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dnsapi/extr_name.c_test_DnsFlushResolverCacheEntry_A.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dnsapi/extr_name.c_test_DnsFlushResolverCacheEntry_A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"nxdomain.test.winehq.org\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DnsFlushResolverCacheEntry_A to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DnsFlushResolverCacheEntry_A() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @SetLastError(i32 -559038737)
  %4 = call i32 @DnsFlushResolverCacheEntry_A(i8* null)
  store i32 %4, i32* %1, align 4
  %5 = call i32 (...) @GetLastError()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, -559038737
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = call i32 @DnsFlushResolverCacheEntry_A(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @DnsFlushResolverCacheEntry_A(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %23)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @DnsFlushResolverCacheEntry_A(i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
