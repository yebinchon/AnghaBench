; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_codepage.c_test_overlapped_buffers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_codepage.c_test_overlapped_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_overlapped_buffers.strW = internal constant [12 x i8] c"just a test\00", align 1
@test_overlapped_buffers.strA = internal constant [12 x i8] c"just a test\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unexpected ret %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"conversion failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GetLastError() is %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_overlapped_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_overlapped_buffers() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i32, align 4
  %3 = call i32 @SetLastError(i32 -559038737)
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %5 = getelementptr inbounds i8, i8* %4, i64 1
  %6 = call i32 @memcpy(i8* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_overlapped_buffers.strW, i64 0, i64 0), i32 12)
  %7 = load i32, i32* @CP_ACP, align 4
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %11 = call i32 @WideCharToMultiByte(i32 %7, i32 0, i8* %9, i32 -1, i8* %10, i32 256, i32* null, i32* null)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp eq i64 %13, 12
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %2, align 4
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %19 = call i32 @memcmp(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_overlapped_buffers.strA, i64 0, i64 0), i32 12)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = call i32 (...) @GetLastError()
  %26 = icmp eq i32 %25, -559038737
  %27 = zext i1 %26 to i32
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i8*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
