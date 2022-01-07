; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_GetColorDirectoryA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_GetColorDirectoryA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"GetColorDirectoryA() succeeded (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"GetColorDirectoryA() failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetColorDirectoryA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetColorDirectoryA() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @MAX_PATH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = call i64 @pGetColorDirectoryA(i32* null, i8* null, i32* null)
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 (...) @GetLastError()
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 0, i32* %2, align 4
  %16 = call i64 @pGetColorDirectoryA(i32* null, i8* null, i32* %2)
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %0
  %20 = load i32, i32* %2, align 4
  %21 = icmp sgt i32 %20, 0
  br label %22

22:                                               ; preds = %19, %0
  %23 = phi i1 [ false, %0 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %2, align 4
  %27 = call i64 @pGetColorDirectoryA(i32* null, i8* %8, i32* %2)
  store i64 %27, i64* %1, align 8
  %28 = load i64, i64* %1, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %2, align 4
  %32 = icmp sgt i32 %31, 0
  br label %33

33:                                               ; preds = %30, %22
  %34 = phi i1 [ false, %22 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 (...) @GetLastError()
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 1, i32* %2, align 4
  %38 = call i64 @pGetColorDirectoryA(i32* null, i8* %8, i32* %2)
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* %1, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %2, align 4
  %43 = icmp sgt i32 %42, 0
  br label %44

44:                                               ; preds = %41, %33
  %45 = phi i1 [ false, %33 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 (...) @GetLastError()
  %48 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = trunc i64 %6 to i32
  store i32 %49, i32* %2, align 4
  %50 = call i64 @pGetColorDirectoryA(i32* null, i8* %8, i32* %2)
  store i64 %50, i64* %1, align 8
  %51 = load i64, i64* %1, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %2, align 4
  %55 = icmp sgt i32 %54, 0
  br label %56

56:                                               ; preds = %53, %44
  %57 = phi i1 [ false, %44 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 (...) @GetLastError()
  %60 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %61)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @pGetColorDirectoryA(i32*, i8*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i32 @GetLastError(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
