; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_gen_random.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_gen_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hProv = common dso_local global i32 0, align 4
@NTE_FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"CryptGenRandom generates non random data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_gen_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_gen_random() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [16 x i32], align 16
  %3 = alloca [16 x i32], align 16
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %5 = call i32 @memset(i32* %4, i32 0, i32 64)
  %6 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %7 = call i32 @memset(i32* %6, i32 0, i32 64)
  %8 = load i32, i32* @hProv, align 4
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %10 = call i64 @CryptGenRandom(i32 %8, i32 64, i32* %9)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %0
  %14 = call i64 (...) @GetLastError()
  %15 = load i64, i64* @NTE_FAIL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %34

18:                                               ; preds = %13, %0
  %19 = load i64, i64* %1, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i64 (...) @GetLastError()
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @hProv, align 4
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %25 = call i64 @CryptGenRandom(i32 %23, i32 64, i32* %24)
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i64 (...) @GetLastError()
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %32 = call i32 @memcmp(i32* %30, i32* %31, i32 64)
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @CryptGenRandom(i32, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
