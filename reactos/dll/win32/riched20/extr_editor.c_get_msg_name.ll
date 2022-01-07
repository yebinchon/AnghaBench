; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_get_msg_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_get_msg_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EM_GETSEL = common dso_local global i64 0, align 8
@EM_CHARFROMPOS = common dso_local global i64 0, align 8
@edit_messages = common dso_local global i8** null, align 8
@EM_CANPASTE = common dso_local global i64 0, align 8
@EM_GETIMEMODEBIAS = common dso_local global i64 0, align 8
@richedit_messages = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @get_msg_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_msg_name(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @EM_GETSEL, align 8
  %6 = icmp sge i64 %4, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @EM_CHARFROMPOS, align 8
  %10 = icmp sle i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load i8**, i8*** @edit_messages, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @EM_GETSEL, align 8
  %15 = sub nsw i64 %13, %14
  %16 = getelementptr inbounds i8*, i8** %12, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %2, align 8
  br label %34

18:                                               ; preds = %7, %1
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @EM_CANPASTE, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @EM_GETIMEMODEBIAS, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i8**, i8*** @richedit_messages, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @EM_CANPASTE, align 8
  %30 = sub nsw i64 %28, %29
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %2, align 8
  br label %34

33:                                               ; preds = %22, %18
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %34

34:                                               ; preds = %33, %26, %11
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
