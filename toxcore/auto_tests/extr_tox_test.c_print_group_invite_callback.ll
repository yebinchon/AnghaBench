; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_tox_test.c_print_group_invite_callback.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_tox_test.c_print_group_invite_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOX_GROUPCHAT_TYPE_TEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Group number was not 0\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Joining groupchat twice should be impossible.\00", align 1
@invite_tox = common dso_local global i32* null, align 8
@invite_counter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_group_invite_callback(i32* %0, i32 %1, i64 %2, i64* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 234212
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  br label %46

19:                                               ; preds = %6
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @TOX_GROUPCHAT_TYPE_TEXT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %46

24:                                               ; preds = %19
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i64*, i64** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @tox_join_groupchat(i32* %25, i32 %26, i64* %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %46

32:                                               ; preds = %24
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @ck_assert_msg(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i64*, i64** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @tox_join_groupchat(i32* %37, i32 %38, i64* %39, i32 %40)
  %42 = icmp eq i32 %41, -1
  %43 = zext i1 %42 to i32
  %44 = call i32 @ck_assert_msg(i32 %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32*, i32** %7, align 8
  store i32* %45, i32** @invite_tox, align 8
  store i32 4, i32* @invite_counter, align 4
  br label %46

46:                                               ; preds = %32, %31, %23, %18
  ret void
}

declare dso_local i32 @tox_join_groupchat(i32*, i32, i64*, i32) #1

declare dso_local i32 @ck_assert_msg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
