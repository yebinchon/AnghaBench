; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_tbar.c_EnableDisconnectButton.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_tbar.c_EnableDisconnectButton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cDrives = common dso_local global i64 0, align 8
@rgiDrive = common dso_local global i32* null, align 8
@hwndToolbar = common dso_local global i32 0, align 4
@TB_ENABLEBUTTON = common dso_local global i32 0, align 4
@IDM_DISCONNECT = common dso_local global i32 0, align 4
@hwndFrame = common dso_local global i32 0, align 4
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@MF_ENABLED = common dso_local global i32 0, align 4
@MF_GRAYED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EnableDisconnectButton() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  br label %3

3:                                                ; preds = %23, %0
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @cDrives, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = load i32*, i32** @rgiDrive, align 8
  %9 = load i64, i64* %2, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @IsCDRomDrive(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %7
  %15 = load i32*, i32** @rgiDrive, align 8
  %16 = load i64, i64* %2, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @IsRemoteDrive(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %26

22:                                               ; preds = %14, %7
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %2, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %2, align 8
  br label %3

26:                                               ; preds = %21, %3
  %27 = load i32, i32* @hwndToolbar, align 4
  %28 = load i32, i32* @TB_ENABLEBUTTON, align 4
  %29 = load i32, i32* @IDM_DISCONNECT, align 4
  %30 = load i64, i64* %2, align 8
  %31 = load i64, i64* @cDrives, align 8
  %32 = icmp ult i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @SendMessage(i32 %27, i32 %28, i32 %29, i32 %33)
  %35 = load i32, i32* @hwndFrame, align 4
  %36 = call i32 @GetMenu(i32 %35)
  %37 = load i32, i32* @IDM_DISCONNECT, align 4
  %38 = load i64, i64* %2, align 8
  %39 = load i64, i64* @cDrives, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %26
  %42 = load i32, i32* @MF_BYCOMMAND, align 4
  %43 = load i32, i32* @MF_ENABLED, align 4
  %44 = or i32 %42, %43
  br label %49

45:                                               ; preds = %26
  %46 = load i32, i32* @MF_BYCOMMAND, align 4
  %47 = load i32, i32* @MF_GRAYED, align 4
  %48 = or i32 %46, %47
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i32 [ %44, %41 ], [ %48, %45 ]
  %51 = call i32 @EnableMenuItem(i32 %36, i32 %37, i32 %50)
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @IsCDRomDrive(i32) #1

declare dso_local i64 @IsRemoteDrive(i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @EnableMenuItem(i32, i32, i32) #1

declare dso_local i32 @GetMenu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
