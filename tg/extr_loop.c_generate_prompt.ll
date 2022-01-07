; ModuleID = '/home/carl/AnghaBench/tg/extr_loop.c_generate_prompt.c'
source_filename = "/home/carl/AnghaBench/tg/extr_loop.c_generate_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"phone number: \00", align 1
@one_string_prompt = common dso_local global i32 0, align 4
@one_string_flags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"code ('CALL' for phone code): \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"register (Y/n): \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"first name: \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"last name: \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"new password: \00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"retype new password: \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"old password: \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"password: \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"hash: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_prompt(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %65 [
    i32 129, label %6
    i32 133, label %13
    i32 128, label %20
    i32 130, label %31
    i32 132, label %40
    i32 131, label %51
    i32 134, label %58
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = call i32 @tstrdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* @one_string_prompt, align 4
  store i32 0, i32* @one_string_flags, align 4
  br label %67

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call i32 @tstrdup(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 %19, i32* @one_string_prompt, align 4
  store i32 0, i32* @one_string_flags, align 4
  br label %67

20:                                               ; preds = %2
  store i32 0, i32* @one_string_flags, align 4
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %28 [
    i32 0, label %22
    i32 1, label %24
    i32 2, label %26
  ]

22:                                               ; preds = %20
  %23 = call i32 @tstrdup(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 %23, i32* @one_string_prompt, align 4
  br label %67

24:                                               ; preds = %20
  %25 = call i32 @tstrdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %25, i32* @one_string_prompt, align 4
  br label %67

26:                                               ; preds = %20
  %27 = call i32 @tstrdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 %27, i32* @one_string_prompt, align 4
  br label %67

28:                                               ; preds = %20
  %29 = call i32 @assert(i32 0)
  br label %30

30:                                               ; preds = %28
  br label %67

31:                                               ; preds = %2
  store i32 1, i32* @one_string_flags, align 4
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %37 [
    i32 0, label %33
    i32 1, label %35
  ]

33:                                               ; preds = %31
  %34 = call i32 @tstrdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 %34, i32* @one_string_prompt, align 4
  br label %67

35:                                               ; preds = %31
  %36 = call i32 @tstrdup(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  store i32 %36, i32* @one_string_prompt, align 4
  br label %67

37:                                               ; preds = %31
  %38 = call i32 @assert(i32 0)
  br label %39

39:                                               ; preds = %37
  br label %67

40:                                               ; preds = %2
  store i32 1, i32* @one_string_flags, align 4
  %41 = load i32, i32* %4, align 4
  switch i32 %41, label %48 [
    i32 0, label %42
    i32 1, label %44
    i32 2, label %46
  ]

42:                                               ; preds = %40
  %43 = call i32 @tstrdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  store i32 %43, i32* @one_string_prompt, align 4
  br label %67

44:                                               ; preds = %40
  %45 = call i32 @tstrdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 %45, i32* @one_string_prompt, align 4
  br label %67

46:                                               ; preds = %40
  %47 = call i32 @tstrdup(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  store i32 %47, i32* @one_string_prompt, align 4
  br label %67

48:                                               ; preds = %40
  %49 = call i32 @assert(i32 0)
  br label %50

50:                                               ; preds = %48
  br label %67

51:                                               ; preds = %2
  store i32 1, i32* @one_string_flags, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = call i32 @tstrdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store i32 %57, i32* @one_string_prompt, align 4
  br label %67

58:                                               ; preds = %2
  store i32 0, i32* @one_string_flags, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = call i32 @tstrdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i32 %64, i32* @one_string_prompt, align 4
  br label %67

65:                                               ; preds = %2
  %66 = call i32 @assert(i32 0)
  br label %67

67:                                               ; preds = %6, %13, %22, %24, %26, %30, %33, %35, %39, %42, %44, %46, %50, %51, %58, %65
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
