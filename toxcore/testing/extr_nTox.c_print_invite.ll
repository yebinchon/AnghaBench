; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_print_invite.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_print_invite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOX_GROUPCHAT_TYPE_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"[i] received group chat invite from: %u, auto accepting and joining. group number: %u\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"[i] Group chat invite received of type %u that could not be accepted by ntox.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_invite(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [256 x i8], align 16
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @TOX_GROUPCHAT_TYPE_TEXT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %6
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @tox_join_groupchat(i32* %20, i32 %21, i32* %22, i32 %23)
  %25 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %24)
  br label %30

26:                                               ; preds = %6
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %17
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %32 = call i32 @new_lines(i8* %31)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @tox_join_groupchat(i32*, i32, i32*, i32) #1

declare dso_local i32 @new_lines(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
