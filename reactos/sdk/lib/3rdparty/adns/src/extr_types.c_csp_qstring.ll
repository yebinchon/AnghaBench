; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_types.c_csp_qstring.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_types.c_csp_qstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@R_NOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@adns_s_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @csp_qstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csp_qstring(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca [10 x i8], align 1
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call i32 @CSP_ADDSTR(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %54, %3
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 8
  %18 = load i8, i8* %16, align 1
  store i8 %18, i8* %7, align 1
  %19 = load i8, i8* %7, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 92
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 @CSP_ADDSTR(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %53

24:                                               ; preds = %15
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 34
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @CSP_ADDSTR(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %52

30:                                               ; preds = %24
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sge i32 %32, 32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i8, i8* %7, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp sle i32 %36, 126
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @adns__vbuf_append(i32* %39, i8* %7, i32 1)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @R_NOMEM, align 4
  br label %44

44:                                               ; preds = %42, %38
  br label %51

45:                                               ; preds = %34, %30
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %47 = load i8, i8* %7, align 1
  %48 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %47)
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %50 = call i32 @CSP_ADDSTR(i8* %49)
  br label %51

51:                                               ; preds = %45, %44
  br label %52

52:                                               ; preds = %51, %28
  br label %53

53:                                               ; preds = %52, %22
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %11

57:                                               ; preds = %11
  %58 = call i32 @CSP_ADDSTR(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @adns_s_ok, align 4
  ret i32 %59
}

declare dso_local i32 @CSP_ADDSTR(i8*) #1

declare dso_local i32 @adns__vbuf_append(i32*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
