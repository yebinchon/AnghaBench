; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_CloseWindow.c_OnTimer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_CloseWindow.c_OnTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"GetForegroundWindow() != NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"GetActiveWindow() != NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GetFocus() != NULL\0A\00", align 1
@s_nWM_SYSCOMMAND = common dso_local global i32 0, align 4
@s_nWM_NCACTIVATE = common dso_local global i32 0, align 4
@s_nWM_WINDOWPOSCHANGING = common dso_local global i32 0, align 4
@s_nWM_ACTIVATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@s_bTracing = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"CloseWindow(hwnd): tracing...\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"CloseWindow failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"GetActiveWindow() != hwnd\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"CloseWindow(hwnd): tracing done\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"WM_SYSCOMMAND: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"WM_NCACTIVATE: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"WM_WINDOWPOSCHANGING: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"WM_ACTIVATE: %d\0A\00", align 1
@SW_RESTORE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"GetFocus() != hwnd\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"GetForegroundWindow() != hwnd\0A\00", align 1
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
  switch i32 %8, label %198 [
    i32 0, label %9
    i32 1, label %31
    i32 2, label %70
    i32 3, label %94
    i32 4, label %133
    i32 5, label %158
  ]

9:                                                ; preds = %2
  %10 = call i32* (...) @GetDesktopWindow()
  %11 = call i32 @SetForegroundWindow(i32* %10)
  %12 = call i32* (...) @GetDesktopWindow()
  %13 = call i32 @SetActiveWindow(i32* %12)
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
  store i32 0, i32* @s_nWM_SYSCOMMAND, align 4
  store i32 0, i32* @s_nWM_NCACTIVATE, align 4
  store i32 0, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  store i32 0, i32* @s_nWM_ACTIVATE, align 4
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* @s_bTracing, align 4
  %27 = call i32 @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @CloseWindow(i32* %28)
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %201

31:                                               ; preds = %2
  %32 = call i32* (...) @GetForegroundWindow()
  %33 = icmp eq i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %36 = call i32* (...) @GetActiveWindow()
  %37 = load i32*, i32** %3, align 8
  %38 = icmp eq i32* %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %41 = call i32* (...) @GetFocus()
  %42 = icmp eq i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* @s_bTracing, align 4
  %46 = call i32 @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %47 = load i32, i32* @s_nWM_SYSCOMMAND, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* @s_nWM_SYSCOMMAND, align 4
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @s_nWM_NCACTIVATE, align 4
  %53 = icmp eq i32 %52, 1
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* @s_nWM_NCACTIVATE, align 4
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  %58 = icmp eq i32 %57, 2
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @s_nWM_ACTIVATE, align 4
  %63 = icmp eq i32 %62, 1
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* @s_nWM_ACTIVATE, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @SW_RESTORE, align 4
  %69 = call i32 @ShowWindow(i32* %67, i32 %68)
  br label %201

70:                                               ; preds = %2
  %71 = call i32* (...) @GetDesktopWindow()
  %72 = call i32 @SetForegroundWindow(i32* %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @SetActiveWindow(i32* %73)
  %75 = call i32* (...) @GetForegroundWindow()
  %76 = icmp eq i32* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %79 = call i32* (...) @GetActiveWindow()
  %80 = load i32*, i32** %3, align 8
  %81 = icmp eq i32* %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %84 = call i32* (...) @GetFocus()
  %85 = load i32*, i32** %3, align 8
  %86 = icmp eq i32* %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* @s_nWM_SYSCOMMAND, align 4
  store i32 0, i32* @s_nWM_NCACTIVATE, align 4
  store i32 0, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  store i32 0, i32* @s_nWM_ACTIVATE, align 4
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* @s_bTracing, align 4
  %90 = call i32 @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @CloseWindow(i32* %91)
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %201

94:                                               ; preds = %2
  %95 = call i32* (...) @GetForegroundWindow()
  %96 = icmp eq i32* %95, null
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %99 = call i32* (...) @GetActiveWindow()
  %100 = load i32*, i32** %3, align 8
  %101 = icmp eq i32* %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %104 = call i32* (...) @GetFocus()
  %105 = icmp eq i32* %104, null
  %106 = zext i1 %105 to i32
  %107 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* @s_bTracing, align 4
  %109 = call i32 @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %110 = load i32, i32* @s_nWM_SYSCOMMAND, align 4
  %111 = icmp eq i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* @s_nWM_SYSCOMMAND, align 4
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @s_nWM_NCACTIVATE, align 4
  %116 = icmp eq i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* @s_nWM_NCACTIVATE, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  %121 = icmp eq i32 %120, 1
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @s_nWM_ACTIVATE, align 4
  %126 = icmp eq i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* @s_nWM_ACTIVATE, align 4
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %128)
  %130 = load i32*, i32** %3, align 8
  %131 = load i32, i32* @SW_RESTORE, align 4
  %132 = call i32 @ShowWindow(i32* %130, i32 %131)
  br label %201

133:                                              ; preds = %2
  %134 = call i32* (...) @GetDesktopWindow()
  %135 = call i32 @SetActiveWindow(i32* %134)
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @SetForegroundWindow(i32* %136)
  %138 = call i32* (...) @GetForegroundWindow()
  %139 = load i32*, i32** %3, align 8
  %140 = icmp eq i32* %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %143 = call i32* (...) @GetActiveWindow()
  %144 = load i32*, i32** %3, align 8
  %145 = icmp eq i32* %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %148 = call i32* (...) @GetFocus()
  %149 = load i32*, i32** %3, align 8
  %150 = icmp eq i32* %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* @s_nWM_SYSCOMMAND, align 4
  store i32 0, i32* @s_nWM_NCACTIVATE, align 4
  store i32 0, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  store i32 0, i32* @s_nWM_ACTIVATE, align 4
  %153 = load i32, i32* @TRUE, align 4
  store i32 %153, i32* @s_bTracing, align 4
  %154 = call i32 @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %155 = load i32*, i32** %3, align 8
  %156 = call i32 @CloseWindow(i32* %155)
  %157 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %201

158:                                              ; preds = %2
  %159 = call i32* (...) @GetForegroundWindow()
  %160 = load i32*, i32** %3, align 8
  %161 = icmp eq i32* %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %164 = call i32* (...) @GetActiveWindow()
  %165 = load i32*, i32** %3, align 8
  %166 = icmp eq i32* %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %169 = call i32* (...) @GetFocus()
  %170 = icmp eq i32* %169, null
  %171 = zext i1 %170 to i32
  %172 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %173 = load i32, i32* @FALSE, align 4
  store i32 %173, i32* @s_bTracing, align 4
  %174 = call i32 @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %175 = load i32, i32* @s_nWM_SYSCOMMAND, align 4
  %176 = icmp eq i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = load i32, i32* @s_nWM_SYSCOMMAND, align 4
  %179 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* @s_nWM_NCACTIVATE, align 4
  %181 = icmp eq i32 %180, 0
  %182 = zext i1 %181 to i32
  %183 = load i32, i32* @s_nWM_NCACTIVATE, align 4
  %184 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  %186 = icmp eq i32 %185, 1
  %187 = zext i1 %186 to i32
  %188 = load i32, i32* @s_nWM_WINDOWPOSCHANGING, align 4
  %189 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* @s_nWM_ACTIVATE, align 4
  %191 = icmp eq i32 %190, 0
  %192 = zext i1 %191 to i32
  %193 = load i32, i32* @s_nWM_ACTIVATE, align 4
  %194 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %193)
  %195 = load i32*, i32** %3, align 8
  %196 = load i32, i32* @SW_RESTORE, align 4
  %197 = call i32 @ShowWindow(i32* %195, i32 %196)
  br label %201

198:                                              ; preds = %2
  %199 = load i32*, i32** %3, align 8
  %200 = call i32 @DestroyWindow(i32* %199)
  br label %207

201:                                              ; preds = %158, %133, %94, %70, %31, %9
  %202 = load i32*, i32** %3, align 8
  %203 = load i32, i32* %4, align 4
  %204 = add nsw i32 %203, 1
  %205 = load i32, i32* @TIMER_INTERVAL, align 4
  %206 = call i32 @SetTimer(i32* %202, i32 %204, i32 %205, i32* null)
  br label %207

207:                                              ; preds = %201, %198
  ret void
}

declare dso_local i32 @KillTimer(i32*, i32) #1

declare dso_local i32 @SetForegroundWindow(i32*) #1

declare dso_local i32* @GetDesktopWindow(...) #1

declare dso_local i32 @SetActiveWindow(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @GetForegroundWindow(...) #1

declare dso_local i32* @GetActiveWindow(...) #1

declare dso_local i32* @GetFocus(...) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @CloseWindow(i32*) #1

declare dso_local i32 @ShowWindow(i32*, i32) #1

declare dso_local i32 @DestroyWindow(i32*) #1

declare dso_local i32 @SetTimer(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
