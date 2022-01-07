; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_SwitchToThisWindow.c_DoMessage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_SwitchToThisWindow.c_DoMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WM_TIMER = common dso_local global i64 0, align 8
@s_bTracing = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"%s: uMsg:0x%04X, wParam:0x%08lX, lParam:0x%08lX, ISMEX_:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@WM_SYSCOMMAND = common dso_local global i64 0, align 8
@ISMEX_NOSEND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"InSendMessageEx(NULL) was 0x%08lX\0A\00", align 1
@SC_RESTORE = common dso_local global i64 0, align 8
@s_nWM_SYSCOMMAND_SC_RESTORE = common dso_local global i32 0, align 4
@s_nWM_SYSCOMMAND_NOT_SC_RESTORE = common dso_local global i32 0, align 4
@WM_NCACTIVATE = common dso_local global i64 0, align 8
@s_nWM_NCACTIVATE = common dso_local global i32 0, align 4
@WM_WINDOWPOSCHANGING = common dso_local global i64 0, align 8
@s_nWM_WINDOWPOSCHANGING = common dso_local global i32 0, align 4
@WM_ACTIVATE = common dso_local global i64 0, align 8
@s_nWM_ACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64)* @DoMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoMessage(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @WM_TIMER, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* @s_bTracing, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %4
  br label %87

16:                                               ; preds = %12
  %17 = call i64 (...) @InSendMessage()
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 (...) @DumpInSMEX()
  %27 = call i32 @trace(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %20, i64 %21, i32 %23, i32 %25, i32 %26)
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @WM_SYSCOMMAND, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %16
  %32 = call i64 @InSendMessageEx(i32* null)
  %33 = load i64, i64* @ISMEX_NOSEND, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @InSendMessageEx(i32* null)
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @SC_RESTORE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @s_nWM_SYSCOMMAND_SC_RESTORE, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @s_nWM_SYSCOMMAND_SC_RESTORE, align 4
  br label %47

44:                                               ; preds = %31
  %45 = load i32, i32* @s_nWM_SYSCOMMAND_NOT_SC_RESTORE, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @s_nWM_SYSCOMMAND_NOT_SC_RESTORE, align 4
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %16
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @WM_NCACTIVATE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = call i64 @InSendMessageEx(i32* null)
  %54 = load i64, i64* @ISMEX_NOSEND, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @InSendMessageEx(i32* null)
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @s_nWM_NCACTIVATE, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @s_nWM_NCACTIVATE, align 4
  br label %61

61:                                               ; preds = %52, %48
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @WM_WINDOWPOSCHANGING, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = call i64 @InSendMessageEx(i32* null)
  %67 = load i64, i64* @ISMEX_NOSEND, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @InSendMessageEx(i32* null)
  %71 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  br label %74

74:                                               ; preds = %65, %61
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @WM_ACTIVATE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = call i64 @InSendMessageEx(i32* null)
  %80 = load i64, i64* @ISMEX_NOSEND, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i64 @InSendMessageEx(i32* null)
  %84 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %83)
  %85 = load i32, i32* @s_nWM_ACTIVATE, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @s_nWM_ACTIVATE, align 4
  br label %87

87:                                               ; preds = %15, %78, %74
  ret void
}

declare dso_local i32 @trace(i8*, i8*, i64, i32, i32, i32) #1

declare dso_local i64 @InSendMessage(...) #1

declare dso_local i32 @DumpInSMEX(...) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @InSendMessageEx(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
