; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_vncMouse.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_vncMouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._rfbClientRec = type { i32 }

@RDP_INPUT_MOUSE = common dso_local global i32 0, align 4
@MOUSE_FLAG_MOVE = common dso_local global i32 0, align 4
@lastbuttons = common dso_local global i32 0, align 4
@mouseLookup = common dso_local global i32* null, align 8
@MOUSE_FLAG_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vncMouse(i32 %0, i32 %1, i32 %2, %struct._rfbClientRec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._rfbClientRec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct._rfbClientRec* %3, %struct._rfbClientRec** %8, align 8
  %12 = call i32 @time(i32* null)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @RDP_INPUT_MOUSE, align 4
  %15 = load i32, i32* @MOUSE_FLAG_MOVE, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @rdp_send_input(i32 %13, i32 %14, i32 %15, i32 %16, i32 %17)
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %70, %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %73

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = shl i32 1, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @lastbuttons, align 4
  %26 = load i32, i32* %11, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %11, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @RDP_INPUT_MOUSE, align 4
  %37 = load i32*, i32** @mouseLookup, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MOUSE_FLAG_DOWN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @rdp_send_input(i32 %35, i32 %36, i32 %43, i32 %44, i32 %45)
  br label %69

47:                                               ; preds = %29, %22
  %48 = load i32, i32* @lastbuttons, align 4
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @RDP_INPUT_MOUSE, align 4
  %60 = load i32*, i32** @mouseLookup, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @rdp_send_input(i32 %58, i32 %59, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %57, %52, %47
  br label %69

69:                                               ; preds = %68, %34
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %19

73:                                               ; preds = %19
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* @lastbuttons, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct._rfbClientRec*, %struct._rfbClientRec** %8, align 8
  %79 = call i32 @rfbDefaultPtrAddEvent(i32 %75, i32 %76, i32 %77, %struct._rfbClientRec* %78)
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @rdp_send_input(i32, i32, i32, i32, i32) #1

declare dso_local i32 @rfbDefaultPtrAddEvent(i32, i32, i32, %struct._rfbClientRec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
