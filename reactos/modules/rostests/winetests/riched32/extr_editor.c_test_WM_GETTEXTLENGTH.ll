; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched32/extr_editor.c_test_WM_GETTEXTLENGTH.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched32/extr_editor.c_test_WM_GETTEXTLENGTH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_WM_GETTEXTLENGTH.text1 = internal constant [24 x i8] c"aaa\0D\0Abbb\0D\0Accc\0D\0Addd\0D\0Aeee\00", align 16
@test_WM_GETTEXTLENGTH.text2 = internal constant [26 x i8] c"aaa\0D\0Abbb\0D\0Accc\0D\0Addd\0D\0Aeee\0D\0A\00", align 16
@test_WM_GETTEXTLENGTH.text3 = internal constant [9 x i8] c"abcdef\8E\F0\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@WM_GETTEXTLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"WM_GETTEXTLENGTH reports incorrect length %d, expected %d\0A\00", align 1
@is_lang_japanese = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Skip multibyte character tests on non-Japanese platform\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"WM_GETTEXTLENGTH returned %d, expected 8\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WM_GETTEXTLENGTH to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WM_GETTEXTLENGTH() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @new_richedit(i32* null)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @WM_SETTEXT, align 4
  %6 = call i32 @SendMessageA(i32 %4, i32 %5, i32 0, i32 ptrtoint ([24 x i8]* @test_WM_GETTEXTLENGTH.text1 to i32))
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @WM_GETTEXTLENGTH, align 4
  %9 = call i32 @SendMessageA(i32 %7, i32 %8, i32 0, i32 0)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @lstrlenA(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @test_WM_GETTEXTLENGTH.text1, i64 0, i64 0))
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @lstrlenA(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @test_WM_GETTEXTLENGTH.text1, i64 0, i64 0))
  %16 = call i32 (i32, i8*, i32, ...) @ok(i32 %13, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @WM_SETTEXT, align 4
  %19 = call i32 @SendMessageA(i32 %17, i32 %18, i32 0, i32 ptrtoint ([26 x i8]* @test_WM_GETTEXTLENGTH.text2 to i32))
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @WM_GETTEXTLENGTH, align 4
  %22 = call i32 @SendMessageA(i32 %20, i32 %21, i32 0, i32 0)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @lstrlenA(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @test_WM_GETTEXTLENGTH.text2, i64 0, i64 0))
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @lstrlenA(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @test_WM_GETTEXTLENGTH.text2, i64 0, i64 0))
  %29 = call i32 (i32, i8*, i32, ...) @ok(i32 %26, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* @is_lang_japanese, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %0
  %33 = call i32 @skip(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %46

34:                                               ; preds = %0
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @WM_SETTEXT, align 4
  %37 = call i32 @SendMessageA(i32 %35, i32 %36, i32 0, i32 ptrtoint ([9 x i8]* @test_WM_GETTEXTLENGTH.text3 to i32))
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @WM_GETTEXTLENGTH, align 4
  %40 = call i32 @SendMessageA(i32 %38, i32 %39, i32 0, i32 0)
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp eq i32 %41, 8
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %2, align 4
  %45 = call i32 (i32, i8*, i32, ...) @ok(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %34, %32
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @DestroyWindow(i32 %47)
  ret void
}

declare dso_local i32 @new_richedit(i32*) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @lstrlenA(i8*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
