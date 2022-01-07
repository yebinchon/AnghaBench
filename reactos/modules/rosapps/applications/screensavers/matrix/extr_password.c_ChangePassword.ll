; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_password.c_ChangePassword.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_password.c_ChangePassword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"MPR.DLL\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"PwdChangePasswordA\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SCRSAVE\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ChangePassword(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32 (i32, i32, i32, i32)*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call i32 @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = call i32* @LoadLibrary(i32 %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @GetProcAddress(i32* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %15 = inttoptr i64 %14 to i32 (i32, i32, i32, i32)*
  store i32 (i32, i32, i32, i32)* %15, i32 (i32, i32, i32, i32)** %5, align 8
  %16 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %5, align 8
  %17 = icmp eq i32 (i32, i32, i32, i32)* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @FreeLibrary(i32* %19)
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %30

22:                                               ; preds = %12
  %23 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %5, align 8
  %24 = call i32 @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* %3, align 4
  %26 = call i32 %23(i32 %24, i32 %25, i32 0, i32 0)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @FreeLibrary(i32* %27)
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %22, %18, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

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
