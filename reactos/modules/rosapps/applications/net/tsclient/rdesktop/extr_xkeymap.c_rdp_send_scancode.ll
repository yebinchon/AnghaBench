; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_rdp_send_scancode.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_rdp_send_scancode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RDP_KEYRELEASE = common dso_local global i32 0, align 4
@SCANCODE_EXTENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Sending extended scancode=0x%x, flags=0x%x\0A\00", align 1
@RDP_INPUT_SCANCODE = common dso_local global i32 0, align 4
@KBD_FLAG_EXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Sending scancode=0x%x, flags=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdp_send_scancode(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @RDP_KEYRELEASE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @update_modifier_state(i32* %9, i32 %10, i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @SCANCODE_EXTENDED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @SCANCODE_EXTENDED, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @DEBUG_KBD(i8* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @RDP_INPUT_SCANCODE, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @KBD_FLAG_EXT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SCANCODE_EXTENDED, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = call i32 @rdp_send_input(i32* %31, i32 %32, i32 %33, i32 %36, i32 %40, i32 0)
  br label %54

42:                                               ; preds = %4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @DEBUG_KBD(i8* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @RDP_INPUT_SCANCODE, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @rdp_send_input(i32* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %42, %22
  ret void
}

declare dso_local i32 @update_modifier_state(i32*, i32, i32) #1

declare dso_local i32 @DEBUG_KBD(i8*) #1

declare dso_local i32 @rdp_send_input(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
