; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/user32/messagebox/extr_messagebox.c_TestMsgBoxServiceNotification.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/user32/messagebox/extr_messagebox.c_TestMsgBoxServiceNotification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i32] [i32 72, i32 101, i32 108, i32 108, i32 111, i32 32, i32 87, i32 111, i32 114, i32 108, i32 100, i32 33, i32 0], align 4
@.str.1 = private unnamed_addr constant [24 x i32] [i32 77, i32 66, i32 95, i32 83, i32 69, i32 82, i32 86, i32 73, i32 67, i32 69, i32 95, i32 78, i32 79, i32 84, i32 73, i32 70, i32 73, i32 67, i32 65, i32 84, i32 73, i32 79, i32 78, i32 0], align 4
@MB_YESNOCANCEL = common dso_local global i32 0, align 4
@MB_DEFBUTTON3 = common dso_local global i32 0, align 4
@MB_ICONINFORMATION = common dso_local global i32 0, align 4
@MB_SERVICE_NOTIFICATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Returned value = %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TestMsgBoxServiceNotification() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MB_YESNOCANCEL, align 4
  %3 = load i32, i32* @MB_DEFBUTTON3, align 4
  %4 = or i32 %2, %3
  %5 = load i32, i32* @MB_ICONINFORMATION, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @MB_SERVICE_NOTIFICATION, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @MessageBoxW(i32* null, i8* bitcast ([13 x i32]* @.str to i8*), i8* bitcast ([24 x i32]* @.str.1 to i8*), i32 %8)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  ret void
}

declare dso_local i32 @MessageBoxW(i32*, i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
