; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_palette.c_test_system_palette_entries.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_palette.c_test_system_palette_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RASTERCAPS = common dso_local global i32 0, align 4
@RC_PALETTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"device is palette-based, skipping test\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_system_palette_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_system_palette_entries() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @GetDC(i32 0)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @RASTERCAPS, align 4
  %7 = call i32 @GetDeviceCaps(i32 %5, i32 %6)
  %8 = load i32, i32* @RC_PALETTE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @check_system_palette_entries(i32 %12)
  br label %16

14:                                               ; preds = %0
  %15 = call i32 @skip(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @ReleaseDC(i32 0, i32 %17)
  %19 = call i32 @CreateMetaFileA(i32* null)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @check_system_palette_entries(i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @CloseMetaFile(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @DeleteMetaFile(i32 %24)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @check_system_palette_entries(i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @CreateMetaFileA(i32*) #1

declare dso_local i32 @CloseMetaFile(i32) #1

declare dso_local i32 @DeleteMetaFile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
