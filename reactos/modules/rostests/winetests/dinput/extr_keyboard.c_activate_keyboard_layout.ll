; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dinput/extr_keyboard.c_activate_keyboard_layout.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dinput/extr_keyboard.c_activate_keyboard_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Loading keyboard layout %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to load keyboard layout %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Unable to activate keyboard layout %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"current %08x != langid %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @activate_keyboard_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate_keyboard_layout(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %13 = call i32 @trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %15 = call i32 @LoadKeyboardLayoutA(i8* %14, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %20 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  store i32 0, i32* %3, align 4
  br label %48

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ActivateKeyboardLayout(i32 %22, i32 0)
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %48

35:                                               ; preds = %21
  %36 = call i32 @GetKeyboardLayout(i32 0)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @LOWORD(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @LOWORD(i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 %44)
  store i32 0, i32* %3, align 4
  br label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %41, %34, %18
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @trace(i8*, i8*) #1

declare dso_local i32 @LoadKeyboardLayoutA(i8*, i32) #1

declare dso_local i32 @win_skip(i8*, i8*) #1

declare dso_local i32 @ActivateKeyboardLayout(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i8*) #1

declare dso_local i32 @GetKeyboardLayout(i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @skip(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
