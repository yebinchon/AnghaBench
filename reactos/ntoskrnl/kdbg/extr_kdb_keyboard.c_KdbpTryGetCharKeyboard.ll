; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb_keyboard.c_KdbpTryGetCharKeyboard.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb_keyboard.c_KdbpTryGetCharKeyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KdbpTryGetCharKeyboard.last_key = internal global i32 0, align 4
@KdbpTryGetCharKeyboard.shift = internal global i32 0, align 4
@KBD_STAT_OBF = common dso_local global i32 0, align 4
@keyb_layout = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @KdbpTryGetCharKeyboard(i32* %0, i64 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %72, %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* %5, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %5, align 8
  %18 = icmp sgt i64 %16, 0
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ true, %12 ], [ %18, %15 ]
  br i1 %20, label %21, label %73

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %71, %36, %21
  %23 = call i32 (...) @kbd_read_status()
  %24 = load i32, i32* @KBD_STAT_OBF, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %72

27:                                               ; preds = %22
  %28 = call i32 (...) @kbd_read_input()
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 127
  %31 = icmp eq i32 %30, 42
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 127
  %35 = icmp eq i32 %34, 54
  br i1 %35, label %36, label %42

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 128
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* @KdbpTryGetCharKeyboard.shift, align 4
  br label %22

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 128
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* @KdbpTryGetCharKeyboard.last_key, align 4
  br label %71

47:                                               ; preds = %42
  %48 = load i32, i32* @KdbpTryGetCharKeyboard.last_key, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* @KdbpTryGetCharKeyboard.last_key, align 4
  %53 = load i8**, i8*** @keyb_layout, align 8
  %54 = load i32, i32* @KdbpTryGetCharKeyboard.shift, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %6, align 1
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %4, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i8, i8* %6, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %51
  %68 = load i8, i8* %6, align 1
  store i8 %68, i8* %3, align 1
  br label %74

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69, %47
  br label %71

71:                                               ; preds = %70, %46
  br label %22

72:                                               ; preds = %22
  br label %12

73:                                               ; preds = %19
  store i8 -1, i8* %3, align 1
  br label %74

74:                                               ; preds = %73, %67
  %75 = load i8, i8* %3, align 1
  ret i8 %75
}

declare dso_local i32 @kbd_read_status(...) #1

declare dso_local i32 @kbd_read_input(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
