; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlIO.c_xmlRegisterDefaultInputCallbacks.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlIO.c_xmlRegisterDefaultInputCallbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xmlInputCallbackInitialized = common dso_local global i32 0, align 4
@xmlFileMatch = common dso_local global i32 0, align 4
@xmlFileOpen = common dso_local global i32 0, align 4
@xmlFileRead = common dso_local global i32 0, align 4
@xmlFileClose = common dso_local global i32 0, align 4
@xmlGzfileClose = common dso_local global i32 0, align 4
@xmlGzfileMatch = common dso_local global i32 0, align 4
@xmlGzfileOpen = common dso_local global i32 0, align 4
@xmlGzfileRead = common dso_local global i32 0, align 4
@xmlIOFTPClose = common dso_local global i32 0, align 4
@xmlIOFTPMatch = common dso_local global i32 0, align 4
@xmlIOFTPOpen = common dso_local global i32 0, align 4
@xmlIOFTPRead = common dso_local global i32 0, align 4
@xmlIOHTTPClose = common dso_local global i32 0, align 4
@xmlIOHTTPMatch = common dso_local global i32 0, align 4
@xmlIOHTTPOpen = common dso_local global i32 0, align 4
@xmlIOHTTPRead = common dso_local global i32 0, align 4
@xmlXzfileClose = common dso_local global i32 0, align 4
@xmlXzfileMatch = common dso_local global i32 0, align 4
@xmlXzfileOpen = common dso_local global i32 0, align 4
@xmlXzfileRead = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegisterDefaultInputCallbacks() #0 {
  %1 = load i32, i32* @xmlInputCallbackInitialized, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %10

4:                                                ; preds = %0
  %5 = load i32, i32* @xmlFileMatch, align 4
  %6 = load i32, i32* @xmlFileOpen, align 4
  %7 = load i32, i32* @xmlFileRead, align 4
  %8 = load i32, i32* @xmlFileClose, align 4
  %9 = call i32 @xmlRegisterInputCallbacks(i32 %5, i32 %6, i32 %7, i32 %8)
  store i32 1, i32* @xmlInputCallbackInitialized, align 4
  br label %10

10:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @xmlRegisterInputCallbacks(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
