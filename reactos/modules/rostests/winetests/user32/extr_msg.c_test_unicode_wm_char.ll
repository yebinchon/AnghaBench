; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_unicode_wm_char.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_unicode_wm_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.message = type { i32, i32, i32 }

@LOCALE_IDEFAULTANSICODEPAGE = common dso_local global i32 0, align 4
@LOCALE_RETURN_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Default codepage %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"00000408\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to load Greek keyboard layout\0A\00", align 1
@testWindowClassW = common dso_local global i32 0, align 4
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@WM_CHAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"unexpected hwnd %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"unexpected message %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"bad wparam %lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"bad lparam %lx\0A\00", align 1
@sent = common dso_local global i32 0, align 4
@wparam = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"unicode WM_CHAR\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"no message\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"locale changed from %08x to %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_unicode_wm_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_unicode_wm_char() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca [2 x %struct.message], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i64 @GetKeyboardLayout(i32 0)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @LOWORD(i64 %9)
  %11 = load i32, i32* @LOCALE_IDEFAULTANSICODEPAGE, align 4
  %12 = load i32, i32* @LOCALE_RETURN_NUMBER, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @GetLocaleInfoW(i32 %10, i32 %13, i32* %6, i32 1)
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 1252
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %198

20:                                               ; preds = %0
  %21 = call i64 @LoadKeyboardLayoutA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %20
  %29 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %198

30:                                               ; preds = %24
  %31 = load i32, i32* @testWindowClassW, align 4
  %32 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %33 = call i32 @CreateWindowExW(i32 0, i32 %31, i32* null, i32 %32, i32 100, i32 100, i32 200, i32 200, i32 0, i32 0, i32 0, i32* null)
  store i32 %33, i32* %1, align 4
  %34 = call i32 (...) @flush_sequence()
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @WM_CHAR, align 4
  %37 = call i32 @PostMessageW(i32 %35, i32 %36, i32 945, i32 0)
  br label %38

38:                                               ; preds = %48, %30
  %39 = load i32, i32* %1, align 4
  %40 = call i64 @GetMessageW(%struct.TYPE_6__* %2, i32 %39, i32 0, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ignore_message(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %49

48:                                               ; preds = %42
  br label %38

49:                                               ; preds = %47, %38
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %1, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @WM_CHAR, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 945
  %69 = zext i1 %68 to i32
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  %80 = call i32 @DispatchMessageW(%struct.TYPE_6__* %2)
  %81 = getelementptr inbounds [2 x %struct.message], [2 x %struct.message]* %3, i64 0, i64 0
  %82 = call i32 @memset(%struct.message* %81, i32 0, i32 24)
  %83 = load i32, i32* @WM_CHAR, align 4
  %84 = getelementptr inbounds [2 x %struct.message], [2 x %struct.message]* %3, i64 0, i64 0
  %85 = getelementptr inbounds %struct.message, %struct.message* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 16
  %86 = load i32, i32* @sent, align 4
  %87 = load i32, i32* @wparam, align 4
  %88 = or i32 %86, %87
  %89 = getelementptr inbounds [2 x %struct.message], [2 x %struct.message]* %3, i64 0, i64 0
  %90 = getelementptr inbounds %struct.message, %struct.message* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = getelementptr inbounds [2 x %struct.message], [2 x %struct.message]* %3, i64 0, i64 0
  %92 = getelementptr inbounds %struct.message, %struct.message* %91, i32 0, i32 2
  store i32 945, i32* %92, align 8
  %93 = getelementptr inbounds [2 x %struct.message], [2 x %struct.message]* %3, i64 0, i64 0
  %94 = load i32, i32* @FALSE, align 4
  %95 = call i32 @ok_sequence(%struct.message* %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %94)
  %96 = call i32 (...) @flush_sequence()
  %97 = load i32, i32* %1, align 4
  %98 = load i32, i32* @WM_CHAR, align 4
  %99 = call i32 @PostMessageW(i32 %97, i32 %98, i32 945, i32 0)
  %100 = load i32, i32* %1, align 4
  %101 = call i32 @GetMessageA(%struct.TYPE_6__* %2, i32 %100, i32 0, i32 0)
  %102 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %1, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @WM_CHAR, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 97
  %122 = zext i1 %121 to i32
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %131)
  %133 = call i32 @DispatchMessageA(%struct.TYPE_6__* %2)
  %134 = getelementptr inbounds [2 x %struct.message], [2 x %struct.message]* %3, i64 0, i64 0
  %135 = getelementptr inbounds %struct.message, %struct.message* %134, i32 0, i32 2
  store i32 97, i32* %135, align 8
  %136 = getelementptr inbounds [2 x %struct.message], [2 x %struct.message]* %3, i64 0, i64 0
  %137 = load i32, i32* @FALSE, align 4
  %138 = call i32 @ok_sequence(%struct.message* %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %137)
  %139 = call i32 (...) @GetThreadLocale()
  store i32 %139, i32* %7, align 4
  %140 = load i64, i64* %5, align 8
  %141 = call i32 @ActivateKeyboardLayout(i64 %140, i32 0)
  %142 = call i32 (...) @GetThreadLocale()
  %143 = load i32, i32* %7, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %7, align 4
  %147 = call i32 (...) @GetThreadLocale()
  %148 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %146, i32 %147)
  %149 = call i32 (...) @flush_sequence()
  %150 = load i32, i32* %1, align 4
  %151 = load i32, i32* @WM_CHAR, align 4
  %152 = call i32 @PostMessageW(i32 %150, i32 %151, i32 945, i32 0)
  %153 = load i32, i32* %1, align 4
  %154 = call i32 @GetMessageA(%struct.TYPE_6__* %2, i32 %153, i32 0, i32 0)
  %155 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %1, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %162)
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @WM_CHAR, align 4
  %167 = icmp eq i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %170)
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 225
  %175 = zext i1 %174 to i32
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %177)
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 0
  %182 = zext i1 %181 to i32
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %184)
  %186 = call i32 @DispatchMessageA(%struct.TYPE_6__* %2)
  %187 = getelementptr inbounds [2 x %struct.message], [2 x %struct.message]* %3, i64 0, i64 0
  %188 = getelementptr inbounds %struct.message, %struct.message* %187, i32 0, i32 2
  store i32 945, i32* %188, align 8
  %189 = getelementptr inbounds [2 x %struct.message], [2 x %struct.message]* %3, i64 0, i64 0
  %190 = load i32, i32* @FALSE, align 4
  %191 = call i32 @ok_sequence(%struct.message* %189, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* %1, align 4
  %193 = call i32 @DestroyWindow(i32 %192)
  %194 = load i64, i64* %4, align 8
  %195 = call i32 @ActivateKeyboardLayout(i64 %194, i32 0)
  %196 = load i64, i64* %5, align 8
  %197 = call i32 @UnloadKeyboardLayout(i64 %196)
  br label %198

198:                                              ; preds = %49, %28, %17
  ret void
}

declare dso_local i64 @GetKeyboardLayout(i32) #1

declare dso_local i32 @GetLocaleInfoW(i32, i32, i32*, i32) #1

declare dso_local i32 @LOWORD(i64) #1

declare dso_local i32 @skip(i8*, ...) #1

declare dso_local i64 @LoadKeyboardLayoutA(i8*, i32) #1

declare dso_local i32 @CreateWindowExW(i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @flush_sequence(...) #1

declare dso_local i32 @PostMessageW(i32, i32, i32, i32) #1

declare dso_local i64 @GetMessageW(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @ignore_message(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @DispatchMessageW(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(%struct.message*, i32, i32) #1

declare dso_local i32 @ok_sequence(%struct.message*, i8*, i32) #1

declare dso_local i32 @GetMessageA(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @DispatchMessageA(%struct.TYPE_6__*) #1

declare dso_local i32 @GetThreadLocale(...) #1

declare dso_local i32 @ActivateKeyboardLayout(i64, i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

declare dso_local i32 @UnloadKeyboardLayout(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
