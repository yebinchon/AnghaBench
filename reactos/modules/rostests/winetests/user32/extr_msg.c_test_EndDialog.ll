; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_EndDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_EndDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"TestParentClass\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Test parent\00", align 1
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@WS_DISABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to create parent window\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Test parent 2\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"#32770\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"GetClassInfo failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"MyDialogClass\00", align 1
@test_dlg_proc = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Wrong window has focus (%p != %p)\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"CLASS_TEST_DIALOG_2\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"CreateDialogParam failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"parent is not enabled\0A\00", align 1
@.str.11 = private unnamed_addr constant [88 x i8] c"Wrong window has focus (parent != active) (active: %p, parent: %p, dlg: %p, other: %p)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"TestDialogClass\00", align 1
@WS_CAPTION = common dso_local global i32 0, align 4
@WS_SYSMENU = common dso_local global i32 0, align 4
@WS_DLGFRAME = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"Wrong foreground (%p != %p)\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Wrong active window (%p != %p)\0A\00", align 1
@.str.15 = private unnamed_addr constant [87 x i8] c"Wrong window has focus (other != active) (active: %p, parent: %p, dlg: %p, other: %p)\0A\00", align 1
@WS_POPUP = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"TestWindowClass\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Test child\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Failed to create child window\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"Wrong foreground window (%p != %p)\0A\00", align 1
@.str.20 = private unnamed_addr constant [80 x i8] c"Wrong foreground window (active: %p, parent: %p, dlg: %p, other: %p child: %p)\0A\00", align 1
@GWL_STYLE = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_EndDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EndDialog() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %8 = load i32, i32* @WS_VISIBLE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @WS_DISABLED, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 100, i32 100, i32 200, i32 200, i64 0, i32 0, i32 0, i32* null)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %18 = load i32, i32* @WS_VISIBLE, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %19, i32 200, i32 100, i32 200, i32 200, i64 0, i32 0, i32 0, i32* null)
  store i64 %20, i64* %2, align 8
  %21 = load i64, i64* %2, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @GetClassInfoA(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_4__* %6)
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %27, align 8
  %28 = call i32 @GetModuleHandleA(i32* null)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @test_dlg_proc, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = call i32 @RegisterClassA(%struct.TYPE_4__* %6)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %0
  %35 = call i32 @assert(i32 0)
  br label %36

36:                                               ; preds = %34, %0
  %37 = call i32 (...) @flush_sequence()
  %38 = load i64, i64* %2, align 8
  %39 = call i32 @SetForegroundWindow(i64 %38)
  %40 = call i64 (...) @GetForegroundWindow()
  store i64 %40, i64* %3, align 8
  %41 = load i64, i64* %2, align 8
  %42 = load i64, i64* %3, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %2, align 8
  %46 = load i64, i64* %3, align 8
  %47 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i64 %45, i64 %46)
  %48 = load i64, i64* %1, align 8
  %49 = load i32, i32* @test_dlg_proc, align 4
  %50 = call i64 @CreateDialogParamA(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i64 %48, i32 %49, i32 0)
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @IsWindow(i64 %51)
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @SetForegroundWindow(i64 %54)
  %56 = call i64 (...) @GetForegroundWindow()
  store i64 %56, i64* %3, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* %3, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* %3, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i64 %61, i64 %62)
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @EndDialog(i64 %64, i32 0)
  %66 = load i64, i64* %1, align 8
  %67 = call i32 @IsWindowEnabled(i64 %66)
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %69 = call i64 (...) @GetForegroundWindow()
  store i64 %69, i64* %3, align 8
  %70 = load i64, i64* %1, align 8
  %71 = load i64, i64* %3, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %3, align 8
  %75 = load i64, i64* %1, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* %2, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.11, i64 0, i64 0), i64 %74, i64 %75, i64 %76, i64 %77)
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @DestroyWindow(i64 %79)
  %81 = call i32 (...) @flush_sequence()
  %82 = load i64, i64* %1, align 8
  %83 = load i32, i32* @FALSE, align 4
  %84 = call i32 @EnableWindow(i64 %82, i32 %83)
  %85 = load i32, i32* @WS_VISIBLE, align 4
  %86 = load i32, i32* @WS_CAPTION, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @WS_SYSMENU, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @WS_DLGFRAME, align 4
  %91 = or i32 %89, %90
  %92 = load i64, i64* %1, align 8
  %93 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* null, i32 %91, i32 0, i32 0, i32 100, i32 100, i64 %92, i32 0, i32 0, i32* null)
  store i64 %93, i64* %4, align 8
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @IsWindow(i64 %94)
  %96 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %97 = call i32 (...) @flush_sequence()
  %98 = load i64, i64* %2, align 8
  %99 = call i32 @SetForegroundWindow(i64 %98)
  %100 = call i32 (...) @flush_sequence()
  %101 = call i64 (...) @GetForegroundWindow()
  store i64 %101, i64* %3, align 8
  %102 = load i64, i64* %3, align 8
  %103 = load i64, i64* %2, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i64, i64* %3, align 8
  %107 = load i64, i64* %2, align 8
  %108 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i64 %106, i64 %107)
  %109 = call i64 (...) @GetActiveWindow()
  store i64 %109, i64* %3, align 8
  %110 = load i64, i64* %3, align 8
  %111 = load i64, i64* %2, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i64, i64* %3, align 8
  %115 = load i64, i64* %2, align 8
  %116 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i64 %114, i64 %115)
  %117 = load i64, i64* %4, align 8
  %118 = call i32 @EndDialog(i64 %117, i32 0)
  %119 = load i64, i64* %1, align 8
  %120 = call i32 @IsWindowEnabled(i64 %119)
  %121 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %122 = call i64 (...) @GetForegroundWindow()
  store i64 %122, i64* %3, align 8
  %123 = load i64, i64* %2, align 8
  %124 = load i64, i64* %3, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i64, i64* %3, align 8
  %128 = load i64, i64* %1, align 8
  %129 = load i64, i64* %4, align 8
  %130 = load i64, i64* %2, align 8
  %131 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.15, i64 0, i64 0), i64 %127, i64 %128, i64 %129, i64 %130)
  %132 = load i64, i64* %4, align 8
  %133 = call i32 @DestroyWindow(i64 %132)
  %134 = call i32 (...) @flush_sequence()
  %135 = load i64, i64* %1, align 8
  %136 = call i32 @DestroyWindow(i64 %135)
  %137 = load i32, i32* @WS_POPUP, align 4
  %138 = load i32, i32* @WS_VISIBLE, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @WS_DISABLED, align 4
  %141 = or i32 %139, %140
  %142 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %141, i32 100, i32 100, i32 200, i32 200, i64 0, i32 0, i32 0, i32* null)
  store i64 %142, i64* %1, align 8
  %143 = load i64, i64* %1, align 8
  %144 = icmp ne i64 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %147 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %148 = load i32, i32* @WS_VISIBLE, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @WS_DISABLED, align 4
  %151 = or i32 %149, %150
  %152 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 %151, i32 0, i32 0, i32 0, i32 0, i64 0, i32 0, i32 0, i32* null)
  store i64 %152, i64* %5, align 8
  %153 = load i64, i64* %5, align 8
  %154 = icmp ne i64 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0))
  %157 = load i64, i64* %5, align 8
  %158 = load i64, i64* %1, align 8
  %159 = call i32 @SetParent(i64 %157, i64 %158)
  %160 = call i32 (...) @flush_sequence()
  %161 = load i64, i64* %2, align 8
  %162 = call i32 @SetForegroundWindow(i64 %161)
  %163 = call i64 (...) @GetForegroundWindow()
  store i64 %163, i64* %3, align 8
  %164 = load i64, i64* %2, align 8
  %165 = load i64, i64* %3, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i64, i64* %2, align 8
  %169 = load i64, i64* %3, align 8
  %170 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i64 %168, i64 %169)
  %171 = load i64, i64* %5, align 8
  %172 = load i32, i32* @test_dlg_proc, align 4
  %173 = call i64 @CreateDialogParamA(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i64 %171, i32 %172, i32 0)
  store i64 %173, i64* %4, align 8
  %174 = load i64, i64* %4, align 8
  %175 = call i32 @IsWindow(i64 %174)
  %176 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %177 = load i64, i64* %4, align 8
  %178 = call i32 @SetForegroundWindow(i64 %177)
  %179 = load i64, i64* %4, align 8
  %180 = load i64, i64* %5, align 8
  %181 = call i32 @test_enddialog_seq(i64 %179, i64 %180)
  %182 = call i64 (...) @GetForegroundWindow()
  store i64 %182, i64* %3, align 8
  %183 = load i64, i64* %3, align 8
  %184 = load i64, i64* %5, align 8
  %185 = icmp eq i64 %183, %184
  %186 = zext i1 %185 to i32
  %187 = load i64, i64* %3, align 8
  %188 = load i64, i64* %1, align 8
  %189 = load i64, i64* %4, align 8
  %190 = load i64, i64* %2, align 8
  %191 = load i64, i64* %5, align 8
  %192 = call i32 (i32, i8*, ...) @ok(i32 %186, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.20, i64 0, i64 0), i64 %187, i64 %188, i64 %189, i64 %190, i64 %191)
  %193 = load i64, i64* %4, align 8
  %194 = call i32 @DestroyWindow(i64 %193)
  %195 = load i64, i64* %5, align 8
  %196 = load i32, i32* @GWL_STYLE, align 4
  %197 = load i64, i64* %5, align 8
  %198 = load i32, i32* @GWL_STYLE, align 4
  %199 = call i32 @GetWindowLongW(i64 %197, i32 %198)
  %200 = load i32, i32* @WS_CHILD, align 4
  %201 = or i32 %199, %200
  %202 = call i32 @SetWindowLongW(i64 %195, i32 %196, i32 %201)
  %203 = load i64, i64* %2, align 8
  %204 = call i32 @SetForegroundWindow(i64 %203)
  %205 = call i64 (...) @GetForegroundWindow()
  store i64 %205, i64* %3, align 8
  %206 = load i64, i64* %2, align 8
  %207 = load i64, i64* %3, align 8
  %208 = icmp eq i64 %206, %207
  %209 = zext i1 %208 to i32
  %210 = load i64, i64* %2, align 8
  %211 = load i64, i64* %3, align 8
  %212 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i64 %210, i64 %211)
  %213 = load i64, i64* %5, align 8
  %214 = load i32, i32* @test_dlg_proc, align 4
  %215 = call i64 @CreateDialogParamA(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i64 %213, i32 %214, i32 0)
  store i64 %215, i64* %4, align 8
  %216 = load i64, i64* %4, align 8
  %217 = call i32 @IsWindow(i64 %216)
  %218 = call i32 (i32, i8*, ...) @ok(i32 %217, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %219 = load i64, i64* %4, align 8
  %220 = call i32 @SetForegroundWindow(i64 %219)
  %221 = load i64, i64* %4, align 8
  %222 = load i64, i64* %1, align 8
  %223 = call i32 @test_enddialog_seq2(i64 %221, i64 %222)
  %224 = call i64 (...) @GetForegroundWindow()
  store i64 %224, i64* %3, align 8
  %225 = load i64, i64* %3, align 8
  %226 = load i64, i64* %1, align 8
  %227 = icmp eq i64 %225, %226
  %228 = zext i1 %227 to i32
  %229 = load i64, i64* %3, align 8
  %230 = load i64, i64* %1, align 8
  %231 = load i64, i64* %4, align 8
  %232 = load i64, i64* %2, align 8
  %233 = load i64, i64* %5, align 8
  %234 = call i32 (i32, i8*, ...) @ok(i32 %228, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.20, i64 0, i64 0), i64 %229, i64 %230, i64 %231, i64 %232, i64 %233)
  %235 = load i64, i64* %4, align 8
  %236 = call i32 @DestroyWindow(i64 %235)
  %237 = load i64, i64* %5, align 8
  %238 = call i32 @DestroyWindow(i64 %237)
  %239 = load i64, i64* %1, align 8
  %240 = call i32 @DestroyWindow(i64 %239)
  %241 = load i64, i64* %2, align 8
  %242 = call i32 @DestroyWindow(i64 %241)
  %243 = call i32 (...) @flush_sequence()
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @UnregisterClassA(i8* %245, i32 %247)
  ret void
}

declare dso_local i64 @CreateWindowExA(i32, i8*, i8*, i32, i32, i32, i32, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetClassInfoA(i32, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i32 @RegisterClassA(%struct.TYPE_4__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @flush_sequence(...) #1

declare dso_local i32 @SetForegroundWindow(i64) #1

declare dso_local i64 @GetForegroundWindow(...) #1

declare dso_local i64 @CreateDialogParamA(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @IsWindow(i64) #1

declare dso_local i32 @EndDialog(i64, i32) #1

declare dso_local i32 @IsWindowEnabled(i64) #1

declare dso_local i32 @DestroyWindow(i64) #1

declare dso_local i32 @EnableWindow(i64, i32) #1

declare dso_local i64 @GetActiveWindow(...) #1

declare dso_local i32 @SetParent(i64, i64) #1

declare dso_local i32 @test_enddialog_seq(i64, i64) #1

declare dso_local i32 @SetWindowLongW(i64, i32, i32) #1

declare dso_local i32 @GetWindowLongW(i64, i32) #1

declare dso_local i32 @test_enddialog_seq2(i64, i64) #1

declare dso_local i32 @UnregisterClassA(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
