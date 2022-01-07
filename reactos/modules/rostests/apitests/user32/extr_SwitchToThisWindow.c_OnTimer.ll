; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_SwitchToThisWindow.c_OnTimer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_SwitchToThisWindow.c_OnTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"GetForegroundWindow() != NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"GetActiveWindow() != NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GetFocus() != NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"GetActiveWindow() != hwnd\0A\00", align 1
@s_nWM_SYSCOMMAND_SC_RESTORE = common dso_local global i32 0, align 4
@s_nWM_SYSCOMMAND_NOT_SC_RESTORE = common dso_local global i32 0, align 4
@s_nWM_NCACTIVATE = common dso_local global i32 0, align 4
@s_nWM_WINDOWPOSCHANGING = common dso_local global i32 0, align 4
@s_nWM_ACTIVATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@s_bTracing = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"SwitchToThisWindow(TRUE): tracing...\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"SwitchToThisWindow(TRUE): tracing done\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"GetForegroundWindow() != hwnd\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"GetFocus() != hwnd\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"WM_SYSCOMMAND SC_RESTORE: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"WM_SYSCOMMAND non-SC_RESTORE: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"WM_NCACTIVATE: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"WM_WINDOWPOSCHANGING: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"WM_ACTIVATE: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"SwitchToThisWindow(FALSE): tracing...\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"SwitchToThisWindow(FALSE): tracing done\0A\00", align 1
@TIMER_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @OnTimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OnTimer(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @KillTimer(i32* %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %175 [
    i32 0, label %9
    i32 1, label %28
    i32 2, label %47
    i32 3, label %91
    i32 4, label %110
    i32 5, label %129
  ]

9:                                                ; preds = %2
  %10 = call i32 (...) @GetDesktopWindow()
  %11 = call i32 @SetForegroundWindow(i32 %10)
  %12 = call i32 (...) @GetDesktopWindow()
  %13 = call i32 @SetActiveWindow(i32 %12)
  %14 = call i32* (...) @GetForegroundWindow()
  %15 = icmp eq i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = call i32* (...) @GetActiveWindow()
  %19 = icmp eq i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32* (...) @GetFocus()
  %23 = icmp eq i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @CloseWindow(i32* %26)
  br label %178

28:                                               ; preds = %2
  %29 = call i32* (...) @GetForegroundWindow()
  %30 = icmp eq i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %33 = call i32* (...) @GetActiveWindow()
  %34 = load i32*, i32** %3, align 8
  %35 = icmp eq i32* %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %38 = call i32* (...) @GetFocus()
  %39 = icmp eq i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* @s_nWM_SYSCOMMAND_SC_RESTORE, align 4
  store i32 0, i32* @s_nWM_SYSCOMMAND_NOT_SC_RESTORE, align 4
  store i32 0, i32* @s_nWM_NCACTIVATE, align 4
  store i32 0, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  store i32 0, i32* @s_nWM_ACTIVATE, align 4
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* @s_bTracing, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @TRUE, align 4
  %45 = call i32 @SwitchToThisWindow(i32* %43, i32 %44)
  %46 = call i32 @trace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %178

47:                                               ; preds = %2
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* @s_bTracing, align 4
  %49 = call i32 @trace(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %50 = call i32* (...) @GetForegroundWindow()
  %51 = load i32*, i32** %3, align 8
  %52 = icmp eq i32* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %55 = call i32* (...) @GetActiveWindow()
  %56 = load i32*, i32** %3, align 8
  %57 = icmp eq i32* %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %60 = call i32* (...) @GetFocus()
  %61 = load i32*, i32** %3, align 8
  %62 = icmp eq i32* %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %65 = load i32, i32* @s_nWM_SYSCOMMAND_SC_RESTORE, align 4
  %66 = icmp eq i32 %65, 1
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* @s_nWM_SYSCOMMAND_SC_RESTORE, align 4
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @s_nWM_SYSCOMMAND_NOT_SC_RESTORE, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* @s_nWM_SYSCOMMAND_NOT_SC_RESTORE, align 4
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @s_nWM_NCACTIVATE, align 4
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* @s_nWM_NCACTIVATE, align 4
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  %82 = icmp eq i32 %81, 2
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @s_nWM_ACTIVATE, align 4
  %87 = icmp eq i32 %86, 1
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* @s_nWM_ACTIVATE, align 4
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %89)
  br label %178

91:                                               ; preds = %2
  %92 = call i32 (...) @GetDesktopWindow()
  %93 = call i32 @SetForegroundWindow(i32 %92)
  %94 = call i32 (...) @GetDesktopWindow()
  %95 = call i32 @SetActiveWindow(i32 %94)
  %96 = call i32* (...) @GetForegroundWindow()
  %97 = icmp eq i32* %96, null
  %98 = zext i1 %97 to i32
  %99 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %100 = call i32* (...) @GetActiveWindow()
  %101 = icmp eq i32* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %104 = call i32* (...) @GetFocus()
  %105 = icmp eq i32* %104, null
  %106 = zext i1 %105 to i32
  %107 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @CloseWindow(i32* %108)
  br label %178

110:                                              ; preds = %2
  %111 = call i32* (...) @GetForegroundWindow()
  %112 = icmp eq i32* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %115 = call i32* (...) @GetActiveWindow()
  %116 = load i32*, i32** %3, align 8
  %117 = icmp eq i32* %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %120 = call i32* (...) @GetFocus()
  %121 = icmp eq i32* %120, null
  %122 = zext i1 %121 to i32
  %123 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* @s_nWM_SYSCOMMAND_SC_RESTORE, align 4
  store i32 0, i32* @s_nWM_SYSCOMMAND_NOT_SC_RESTORE, align 4
  store i32 0, i32* @s_nWM_NCACTIVATE, align 4
  store i32 0, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  store i32 0, i32* @s_nWM_ACTIVATE, align 4
  %124 = load i32, i32* @TRUE, align 4
  store i32 %124, i32* @s_bTracing, align 4
  %125 = load i32*, i32** %3, align 8
  %126 = load i32, i32* @FALSE, align 4
  %127 = call i32 @SwitchToThisWindow(i32* %125, i32 %126)
  %128 = call i32 @trace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  br label %178

129:                                              ; preds = %2
  %130 = load i32, i32* @FALSE, align 4
  store i32 %130, i32* @s_bTracing, align 4
  %131 = call i32 @trace(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %132 = call i32* (...) @GetForegroundWindow()
  %133 = icmp eq i32* %132, null
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %136 = call i32* (...) @GetActiveWindow()
  %137 = load i32*, i32** %3, align 8
  %138 = icmp eq i32* %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %141 = call i32* (...) @GetFocus()
  %142 = icmp eq i32* %141, null
  %143 = zext i1 %142 to i32
  %144 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %145 = load i32, i32* @s_nWM_SYSCOMMAND_SC_RESTORE, align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* @s_nWM_SYSCOMMAND_SC_RESTORE, align 4
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* @s_nWM_SYSCOMMAND_NOT_SC_RESTORE, align 4
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* @s_nWM_SYSCOMMAND_NOT_SC_RESTORE, align 4
  %156 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @s_nWM_NCACTIVATE, align 4
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* @s_nWM_NCACTIVATE, align 4
  %162 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  %168 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* @s_nWM_ACTIVATE, align 4
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = load i32, i32* @s_nWM_ACTIVATE, align 4
  %174 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %173)
  br label %178

175:                                              ; preds = %2
  %176 = load i32*, i32** %3, align 8
  %177 = call i32 @DestroyWindow(i32* %176)
  br label %184

178:                                              ; preds = %129, %110, %91, %47, %28, %9
  %179 = load i32*, i32** %3, align 8
  %180 = load i32, i32* %4, align 4
  %181 = add nsw i32 %180, 1
  %182 = load i32, i32* @TIMER_INTERVAL, align 4
  %183 = call i32 @SetTimer(i32* %179, i32 %181, i32 %182, i32* null)
  br label %184

184:                                              ; preds = %178, %175
  ret void
}

declare dso_local i32 @KillTimer(i32*, i32) #1

declare dso_local i32 @SetForegroundWindow(i32) #1

declare dso_local i32 @GetDesktopWindow(...) #1

declare dso_local i32 @SetActiveWindow(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @GetForegroundWindow(...) #1

declare dso_local i32* @GetActiveWindow(...) #1

declare dso_local i32* @GetFocus(...) #1

declare dso_local i32 @CloseWindow(i32*) #1

declare dso_local i32 @SwitchToThisWindow(i32*, i32) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @DestroyWindow(i32*) #1

declare dso_local i32 @SetTimer(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
