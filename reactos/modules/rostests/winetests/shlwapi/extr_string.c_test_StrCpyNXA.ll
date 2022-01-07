; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrCpyNXA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrCpyNXA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"hello\00\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"StrCpyNXA: expected %p, \22hello\\0\\n\\n\22, got %p, \22%d,%d,%d,%d,%d,%d,%d,%d\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_StrCpyNXA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_StrCpyNXA() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca [8 x i8], align 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %4 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %5 = call i32 @memset(i8* %4, i8 signext 10, i32 8)
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %7 = load i8*, i8** %1, align 8
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %9 = call i32 @ARRAY_SIZE(i8* %8)
  %10 = call i8* @pStrCpyNXA(i8* %6, i8* %7, i32 %9)
  store i8* %10, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %13 = getelementptr inbounds i8, i8* %12, i64 5
  %14 = icmp eq i8* %11, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %0
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %17 = call i32 @memcmp(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %15, %0
  %21 = phi i1 [ false, %0 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 5
  %25 = load i8*, i8** %2, align 8
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 3
  %33 = load i8, i8* %32, align 1
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 4
  %35 = load i8, i8* %34, align 1
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 5
  %37 = load i8, i8* %36, align 1
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 6
  %39 = load i8, i8* %38, align 1
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 7
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i8* %24, i8* %25, i8 signext %27, i8 signext %29, i8 signext %31, i8 signext %33, i8 signext %35, i8 signext %37, i8 signext %39, i8 signext %41)
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i8* @pStrCpyNXA(i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @ok(i32, i8*, i8*, i8*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
