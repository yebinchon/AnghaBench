; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_keyflags.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_keyflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"TestWindowClass\00", align 1
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@KEYEVENTF_KEYUP = common dso_local global i32 0, align 4
@WM_KEYFIRST = common dso_local global i32 0, align 4
@WM_KEYLAST = common dso_local global i32 0, align 4
@PM_REMOVE = common dso_local global i32 0, align 4
@WmKeyReleaseOnly = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"key release only\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unexpected key state %x\0A\00", align 1
@WmKeyPressNormal = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"key press only\00", align 1
@FALSE = common dso_local global i32 0, align 4
@WmKeyPressRepeat = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"key press repeat\00", align 1
@WmKeyReleaseNormal = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"key release repeat\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"key press after setkeyboardstate\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"key release after setkeyboardstate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_keyflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_keyflags() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [256 x i32], align 16
  %4 = alloca i32, align 4
  %5 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %6 = load i32, i32* @WS_VISIBLE, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %7, i32 100, i32 100, i32 200, i32 200, i32 0, i32 0, i32 0, i32* null)
  store i32 %8, i32* %1, align 4
  %9 = call i32 (...) @flush_events()
  %10 = call i32 (...) @flush_sequence()
  %11 = load i32, i32* @KEYEVENTF_KEYUP, align 4
  %12 = call i32 @keybd_event(i32 65, i32 0, i32 %11, i32 0)
  br label %13

13:                                               ; preds = %19, %0
  %14 = load i32, i32* @WM_KEYFIRST, align 4
  %15 = load i32, i32* @WM_KEYLAST, align 4
  %16 = load i32, i32* @PM_REMOVE, align 4
  %17 = call i64 @PeekMessageA(i32* %4, i32* null, i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @DispatchMessageA(i32* %4)
  br label %13

21:                                               ; preds = %13
  %22 = load i32, i32* @WmKeyReleaseOnly, align 4
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i32 @ok_sequence(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = call i32 @GetAsyncKeyState(i32 65)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = and i32 %26, 32768
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = call i32 @GetKeyState(i32 65)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = and i32 %33, 32768
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = call i32 @keybd_event(i32 65, i32 0, i32 0, i32 0)
  br label %40

40:                                               ; preds = %46, %21
  %41 = load i32, i32* @WM_KEYFIRST, align 4
  %42 = load i32, i32* @WM_KEYLAST, align 4
  %43 = load i32, i32* @PM_REMOVE, align 4
  %44 = call i64 @PeekMessageA(i32* %4, i32* null, i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 @DispatchMessageA(i32* %4)
  br label %40

48:                                               ; preds = %40
  %49 = load i32, i32* @WmKeyPressNormal, align 4
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i32 @ok_sequence(i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = call i32 @GetAsyncKeyState(i32 65)
  store i32 %52, i32* %2, align 4
  %53 = load i32, i32* %2, align 4
  %54 = and i32 %53, 32768
  %55 = icmp eq i32 %54, 32768
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = call i32 @GetKeyState(i32 65)
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* %2, align 4
  %61 = and i32 %60, 32768
  %62 = icmp eq i32 %61, 32768
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = call i32 @keybd_event(i32 65, i32 0, i32 0, i32 0)
  br label %67

67:                                               ; preds = %73, %48
  %68 = load i32, i32* @WM_KEYFIRST, align 4
  %69 = load i32, i32* @WM_KEYLAST, align 4
  %70 = load i32, i32* @PM_REMOVE, align 4
  %71 = call i64 @PeekMessageA(i32* %4, i32* null, i32 %68, i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 @DispatchMessageA(i32* %4)
  br label %67

75:                                               ; preds = %67
  %76 = load i32, i32* @WmKeyPressRepeat, align 4
  %77 = load i32, i32* @FALSE, align 4
  %78 = call i32 @ok_sequence(i32 %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = call i32 @GetAsyncKeyState(i32 65)
  store i32 %79, i32* %2, align 4
  %80 = load i32, i32* %2, align 4
  %81 = and i32 %80, 32768
  %82 = icmp eq i32 %81, 32768
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = call i32 @GetKeyState(i32 65)
  store i32 %86, i32* %2, align 4
  %87 = load i32, i32* %2, align 4
  %88 = and i32 %87, 32768
  %89 = icmp eq i32 %88, 32768
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @KEYEVENTF_KEYUP, align 4
  %94 = call i32 @keybd_event(i32 65, i32 0, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %101, %75
  %96 = load i32, i32* @WM_KEYFIRST, align 4
  %97 = load i32, i32* @WM_KEYLAST, align 4
  %98 = load i32, i32* @PM_REMOVE, align 4
  %99 = call i64 @PeekMessageA(i32* %4, i32* null, i32 %96, i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = call i32 @DispatchMessageA(i32* %4)
  br label %95

103:                                              ; preds = %95
  %104 = load i32, i32* @WmKeyReleaseNormal, align 4
  %105 = load i32, i32* @FALSE, align 4
  %106 = call i32 @ok_sequence(i32 %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = call i32 @GetAsyncKeyState(i32 65)
  store i32 %107, i32* %2, align 4
  %108 = load i32, i32* %2, align 4
  %109 = and i32 %108, 32768
  %110 = icmp eq i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %2, align 4
  %113 = call i32 @ok(i32 %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = call i32 @GetKeyState(i32 65)
  store i32 %114, i32* %2, align 4
  %115 = load i32, i32* %2, align 4
  %116 = and i32 %115, 32768
  %117 = icmp eq i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %2, align 4
  %120 = call i32 @ok(i32 %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %122 = call i32 @GetKeyboardState(i32* %121)
  %123 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 65
  store i32 128, i32* %123, align 4
  %124 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %125 = call i32 @SetKeyboardState(i32* %124)
  %126 = call i32 @GetAsyncKeyState(i32 65)
  store i32 %126, i32* %2, align 4
  %127 = load i32, i32* %2, align 4
  %128 = and i32 %127, 32768
  %129 = icmp eq i32 %128, 0
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %2, align 4
  %132 = call i32 @ok(i32 %130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %133 = call i32 @keybd_event(i32 65, i32 0, i32 0, i32 0)
  br label %134

134:                                              ; preds = %140, %103
  %135 = load i32, i32* @WM_KEYFIRST, align 4
  %136 = load i32, i32* @WM_KEYLAST, align 4
  %137 = load i32, i32* @PM_REMOVE, align 4
  %138 = call i64 @PeekMessageA(i32* %4, i32* null, i32 %135, i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = call i32 @DispatchMessageA(i32* %4)
  br label %134

142:                                              ; preds = %134
  %143 = load i32, i32* @WmKeyPressRepeat, align 4
  %144 = load i32, i32* @TRUE, align 4
  %145 = call i32 @ok_sequence(i32 %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %144)
  %146 = call i32 @GetAsyncKeyState(i32 65)
  store i32 %146, i32* %2, align 4
  %147 = load i32, i32* %2, align 4
  %148 = and i32 %147, 32768
  %149 = icmp eq i32 %148, 32768
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %2, align 4
  %152 = call i32 @ok(i32 %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  %153 = call i32 @GetKeyState(i32 65)
  store i32 %153, i32* %2, align 4
  %154 = load i32, i32* %2, align 4
  %155 = and i32 %154, 32768
  %156 = icmp eq i32 %155, 32768
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %2, align 4
  %159 = call i32 @ok(i32 %157, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %158)
  %160 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %161 = call i32 @GetKeyboardState(i32* %160)
  %162 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 65
  store i32 0, i32* %162, align 4
  %163 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %164 = call i32 @SetKeyboardState(i32* %163)
  %165 = call i32 @GetAsyncKeyState(i32 65)
  store i32 %165, i32* %2, align 4
  %166 = load i32, i32* %2, align 4
  %167 = and i32 %166, 32768
  %168 = icmp eq i32 %167, 32768
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* %2, align 4
  %171 = call i32 @ok(i32 %169, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* @KEYEVENTF_KEYUP, align 4
  %173 = call i32 @keybd_event(i32 65, i32 0, i32 %172, i32 0)
  br label %174

174:                                              ; preds = %180, %142
  %175 = load i32, i32* @WM_KEYFIRST, align 4
  %176 = load i32, i32* @WM_KEYLAST, align 4
  %177 = load i32, i32* @PM_REMOVE, align 4
  %178 = call i64 @PeekMessageA(i32* %4, i32* null, i32 %175, i32 %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = call i32 @DispatchMessageA(i32* %4)
  br label %174

182:                                              ; preds = %174
  %183 = load i32, i32* @WmKeyReleaseOnly, align 4
  %184 = load i32, i32* @TRUE, align 4
  %185 = call i32 @ok_sequence(i32 %183, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %184)
  %186 = call i32 @GetAsyncKeyState(i32 65)
  store i32 %186, i32* %2, align 4
  %187 = load i32, i32* %2, align 4
  %188 = and i32 %187, 32768
  %189 = icmp eq i32 %188, 0
  %190 = zext i1 %189 to i32
  %191 = load i32, i32* %2, align 4
  %192 = call i32 @ok(i32 %190, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %191)
  %193 = call i32 @GetKeyState(i32 65)
  store i32 %193, i32* %2, align 4
  %194 = load i32, i32* %2, align 4
  %195 = and i32 %194, 32768
  %196 = icmp eq i32 %195, 0
  %197 = zext i1 %196 to i32
  %198 = load i32, i32* %2, align 4
  %199 = call i32 @ok(i32 %197, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* %1, align 4
  %201 = call i32 @DestroyWindow(i32 %200)
  %202 = call i32 (...) @flush_sequence()
  ret void
}

declare dso_local i32 @CreateWindowExA(i32, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @flush_events(...) #1

declare dso_local i32 @flush_sequence(...) #1

declare dso_local i32 @keybd_event(i32, i32, i32, i32) #1

declare dso_local i64 @PeekMessageA(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @DispatchMessageA(i32*) #1

declare dso_local i32 @ok_sequence(i32, i8*, i32) #1

declare dso_local i32 @GetAsyncKeyState(i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetKeyState(i32) #1

declare dso_local i32 @GetKeyboardState(i32*) #1

declare dso_local i32 @SetKeyboardState(i32*) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
