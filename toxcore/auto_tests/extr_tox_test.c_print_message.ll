; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_tox_test.c_print_message.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_tox_test.c_print_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOX_MESSAGE_TYPE_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Bad type\00", align 1
@TOX_MAX_MESSAGE_LENGTH = common dso_local global i32 0, align 4
@messages_received = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_message(i32* %0, i32 %1, i64 %2, i32* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 974536
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %49

20:                                               ; preds = %6
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @TOX_MESSAGE_TYPE_NORMAL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @ck_abort_msg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i32, i32* @TOX_MAX_MESSAGE_LENGTH, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %13, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  %31 = mul nuw i64 4, %28
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(i32* %30, i8 signext 71, i32 %32)
  %34 = load i64, i64* %11, align 8
  %35 = load i32, i32* @TOX_MAX_MESSAGE_LENGTH, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %26
  %39 = load i32*, i32** %10, align 8
  %40 = mul nuw i64 4, %28
  %41 = trunc i64 %40 to i32
  %42 = call i64 @memcmp(i32* %39, i32* %30, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @messages_received, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @messages_received, align 4
  br label %47

47:                                               ; preds = %44, %38, %26
  %48 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %48)
  br label %49

49:                                               ; preds = %47, %19
  ret void
}

declare dso_local i32 @ck_abort_msg(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
