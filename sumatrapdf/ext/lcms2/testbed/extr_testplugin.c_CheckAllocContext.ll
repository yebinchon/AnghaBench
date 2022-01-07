; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckAllocContext.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckAllocContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckAllocContext() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @cmsCreateContext(i32* null, i32* null)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @DebugMemDontCheckThis(i32 %6)
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @cmsDeleteContext(i32 %8)
  %10 = call i32* (...) @PluginMemHandler()
  %11 = call i32 @cmsCreateContext(i32* %10, i32* null)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @DebugMemDontCheckThis(i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @cmsDeleteContext(i32 %14)
  %16 = call i32 @cmsCreateContext(i32* null, i32* null)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @DebugMemDontCheckThis(i32 %17)
  %19 = call i32* (...) @PluginMemHandler()
  %20 = call i32 @cmsCreateContext(i32* %19, i32* null)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @DebugMemDontCheckThis(i32 %21)
  %23 = load i32, i32* %1, align 4
  %24 = call i32* (...) @PluginMemHandler()
  %25 = call i32 @cmsPlugin(i32 %23, i32* %24)
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @DupContext(i32 %26, i32* null)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @DupContext(i32 %28, i32* null)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @cmsDeleteContext(i32 %30)
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @cmsDeleteContext(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @cmsDeleteContext(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @cmsDeleteContext(i32 %36)
  ret i32 1
}

declare dso_local i32 @cmsCreateContext(i32*, i32*) #1

declare dso_local i32 @DebugMemDontCheckThis(i32) #1

declare dso_local i32 @cmsDeleteContext(i32) #1

declare dso_local i32* @PluginMemHandler(...) #1

declare dso_local i32 @cmsPlugin(i32, i32*) #1

declare dso_local i32 @DupContext(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
