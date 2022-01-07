; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/dxtest/win32kdxtest/extr_NtGdiDdCreateDirectDrawObject.c_test_NtGdiDdCreateDirectDrawObject.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/dxtest/win32kdxtest/extr_NtGdiDdCreateDirectDrawObject.c_test_NtGdiDdCreateDirectDrawObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i32] [i32 68, i32 105, i32 115, i32 112, i32 108, i32 97, i32 121, i32 0], align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"No hdc was created with Display, trying now with DISPLAY\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i32] [i32 68, i32 73, i32 83, i32 80, i32 76, i32 65, i32 89, i32 0], align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"No hdc was created with DISPLAY, trying now with NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"No hdc was created at all perpare all test will fail\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Start testing of NtGdiDdCreateDirectDrawObject\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"NtGdiDdCreateDirectDrawObject(NULL);\00\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"NtGdiDdCreateDirectDrawObject(hdc);\00\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"NtGdiDdCreateDirectDrawObject\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @test_NtGdiDdCreateDirectDrawObject() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = call i32* @CreateDCW(i8* bitcast ([8 x i32]* @.str to i8*), i32* null, i32* null, i32* null)
  store i32* %5, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %0
  %9 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32* @CreateDCW(i8* bitcast ([8 x i32]* @.str.2 to i8*), i32* null, i32* null, i32* null)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32* @CreateDCW(i8* null, i32* null, i32* null, i32* null)
  store i32* %15, i32** %4, align 8
  br label %16

16:                                               ; preds = %13, %8
  br label %17

17:                                               ; preds = %16, %0
  %18 = load i32*, i32** %4, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  br label %36

22:                                               ; preds = %17
  %23 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %24 = call i32* @OsThunkDdCreateDirectDrawObject(i32* null)
  store i32* %24, i32** %2, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @testing_noteq(i32* %25, i32* null, i32 %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %28 = load i32*, i32** %4, align 8
  %29 = call i32* @OsThunkDdCreateDirectDrawObject(i32* %28)
  store i32* %29, i32** %2, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @testing_eq(i32* %30, i32* null, i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @show_status(i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %35 = load i32*, i32** %2, align 8
  store i32* %35, i32** %1, align 8
  br label %36

36:                                               ; preds = %22, %20
  %37 = load i32*, i32** %1, align 8
  ret i32* %37
}

declare dso_local i32* @CreateDCW(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @OsThunkDdCreateDirectDrawObject(i32*) #1

declare dso_local i32 @testing_noteq(i32*, i32*, i32, i8*) #1

declare dso_local i32 @testing_eq(i32*, i32*, i32, i8*) #1

declare dso_local i32 @show_status(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
