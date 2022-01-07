; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_init.c_InitStuff.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_init.c_InitStuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gpal = common dso_local global i32 0, align 4
@ghpal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to create a palette \0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ghbmp1 = common dso_local global i32 0, align 4
@ghdcDIB1 = common dso_local global i32 0, align 4
@ghbmpDIB1 = common dso_local global i32 0, align 4
@gpvDIB1 = common dso_local global i32 0, align 4
@ghbmp4 = common dso_local global i32 0, align 4
@ghdcDIB4 = common dso_local global i32 0, align 4
@ghbmpDIB4 = common dso_local global i32 0, align 4
@gpvDIB4 = common dso_local global i32 0, align 4
@ghbmp8 = common dso_local global i32 0, align 4
@ghdcDIB8 = common dso_local global i32 0, align 4
@ghbmpDIB8 = common dso_local global i32 0, align 4
@gpvDIB8 = common dso_local global i32 0, align 4
@ghbmp16 = common dso_local global i32 0, align 4
@ghdcDIB16 = common dso_local global i32 0, align 4
@ghbmpDIB16 = common dso_local global i32 0, align 4
@gpvDIB16 = common dso_local global i32 0, align 4
@ghbmp24 = common dso_local global i32 0, align 4
@ghdcDIB24 = common dso_local global i32 0, align 4
@ghbmpDIB24 = common dso_local global i32 0, align 4
@gpvDIB24 = common dso_local global i32 0, align 4
@ghbmp32 = common dso_local global i32 0, align 4
@ghdcDIB32 = common dso_local global i32 0, align 4
@ghbmpDIB32 = common dso_local global i32 0, align 4
@gpvDIB32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to create objects \0A\00", align 1
@gpDIB32 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitStuff() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @CreatePalette(i32* @gpal)
  store i32 %2, i32* @ghpal, align 4
  %3 = load i32, i32* @ghpal, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %1, align 4
  br label %32

8:                                                ; preds = %0
  %9 = call i32 @InitPerBitDepth(i32 1, i32 9, i32 9, i32* @ghbmp1, i32* @ghdcDIB1, i32* @ghbmpDIB1, i32* @gpvDIB1)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = call i32 @InitPerBitDepth(i32 4, i32 5, i32 5, i32* @ghbmp4, i32* @ghdcDIB4, i32* @ghbmpDIB4, i32* @gpvDIB4)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = call i32 @InitPerBitDepth(i32 8, i32 5, i32 5, i32* @ghbmp8, i32* @ghdcDIB8, i32* @ghbmpDIB8, i32* @gpvDIB8)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = call i32 @InitPerBitDepth(i32 16, i32 8, i32 8, i32* @ghbmp16, i32* @ghdcDIB16, i32* @ghbmpDIB16, i32* @gpvDIB16)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = call i32 @InitPerBitDepth(i32 24, i32 8, i32 8, i32* @ghbmp24, i32* @ghdcDIB24, i32* @ghbmpDIB24, i32* @gpvDIB24)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = call i32 @InitPerBitDepth(i32 32, i32 8, i32 8, i32* @ghbmp32, i32* @ghdcDIB32, i32* @ghbmpDIB32, i32* @gpvDIB32)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %20, %17, %14, %11, %8
  %27 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %1, align 4
  br label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @gpvDIB32, align 4
  store i32 %30, i32* @gpDIB32, align 4
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %29, %26, %5
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @CreatePalette(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @InitPerBitDepth(i32, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
