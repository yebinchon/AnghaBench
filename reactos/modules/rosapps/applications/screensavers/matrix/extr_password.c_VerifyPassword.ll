; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_password.c_VerifyPassword.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_password.c_VerifyPassword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"PASSWORD.CPL\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"VerifyScreenSavePwd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VerifyPassword(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32 (i32)*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i32 (...) @GetVersion()
  %8 = icmp ult i32 %7, -2147483648
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %2, align 4
  br label %35

11:                                               ; preds = %1
  %12 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = call i32* @LoadLibrary(i32 %12)
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %2, align 4
  br label %35

18:                                               ; preds = %11
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @GetProcAddress(i32* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %21 = inttoptr i64 %20 to i32 (i32)*
  store i32 (i32)* %21, i32 (i32)** %5, align 8
  %22 = load i32 (i32)*, i32 (i32)** %5, align 8
  %23 = icmp eq i32 (i32)* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @FreeLibrary(i32* %25)
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %2, align 4
  br label %35

28:                                               ; preds = %18
  %29 = load i32 (i32)*, i32 (i32)** %5, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 %29(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @FreeLibrary(i32* %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %28, %24, %16, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @GetVersion(...) #1

declare dso_local i32* @LoadLibrary(i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64 @GetProcAddress(i32*, i8*) #1

declare dso_local i32 @FreeLibrary(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
