; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_Messenger_test.c_print_request.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_Messenger_test.c_print_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"Friend request received from: \0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ClientID: \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%hhX\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"\0AOf length: %lu with data: %s \0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Install Gentoo\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Friend request accepted.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_request(i32* %0, i32* %1, i32* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %33, %5
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 32
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %14

36:                                               ; preds = %14
  %37 = load i64, i64* %9, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %37, i32* %38)
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 15
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %52

43:                                               ; preds = %36
  %44 = load i32*, i32** %8, align 8
  %45 = call i64 @memcmp(i32* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 15)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @m_addfriend_norequest(i32* %49, i32* %50)
  br label %52

52:                                               ; preds = %42, %47, %43
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @m_addfriend_norequest(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
