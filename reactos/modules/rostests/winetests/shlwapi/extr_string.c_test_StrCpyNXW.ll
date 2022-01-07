; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrCpyNXW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrCpyNXW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_StrCpyNXW.lpInit = internal constant [8 x i8] c"\0A\0A\0A\0A\0A\0A\0A\0A", align 1
@test_StrCpyNXW.lpSrc = internal constant [6 x i8] c"hello\00", align 1
@test_StrCpyNXW.lpRes = internal constant [8 x i8] c"hello\00\0A\0A", align 1
@.str = private unnamed_addr constant [74 x i8] c"StrCpyNXW: expected %p, \22hello\\0\\n\\n\22, got %p, \22%d,%d,%d,%d,%d,%d,%d,%d\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_StrCpyNXW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_StrCpyNXW() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [8 x i8], align 1
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %4 = call i32 @memcpy(i8* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_StrCpyNXW.lpInit, i64 0, i64 0), i32 8)
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %7 = call i32 @ARRAY_SIZE(i8* %6)
  %8 = call i8* @pStrCpyNXW(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_StrCpyNXW.lpSrc, i64 0, i64 0), i32 %7)
  store i8* %8, i8** %1, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %11 = getelementptr inbounds i8, i8* %10, i64 5
  %12 = icmp eq i8* %9, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %0
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %15 = call i32 @memcmp(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_StrCpyNXW.lpRes, i64 0, i64 0), i32 8)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %13, %0
  %19 = phi i1 [ false, %0 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %22 = getelementptr inbounds i8, i8* %21, i64 5
  %23 = load i8*, i8** %1, align 8
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 2
  %29 = load i8, i8* %28, align 1
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 3
  %31 = load i8, i8* %30, align 1
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 4
  %33 = load i8, i8* %32, align 1
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 5
  %35 = load i8, i8* %34, align 1
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 6
  %37 = load i8, i8* %36, align 1
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 7
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %23, i8 signext %25, i8 signext %27, i8 signext %29, i8 signext %31, i8 signext %33, i8 signext %35, i8 signext %37, i8 signext %39)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @pStrCpyNXW(i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @ok(i32, i8*, i8*, i8*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
