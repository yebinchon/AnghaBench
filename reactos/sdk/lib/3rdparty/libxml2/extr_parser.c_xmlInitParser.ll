; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlInitParser.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlInitParser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xmlParserInitialized = common dso_local global i32 0, align 4
@xmlGenericError = common dso_local global i32* null, align 8
@xmlGenericErrorDefaultFunc = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlInitParser() #0 {
  %1 = load i32, i32* @xmlParserInitialized, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %21

4:                                                ; preds = %0
  %5 = call i32 (...) @xmlInitThreads()
  %6 = call i32 (...) @xmlInitGlobals()
  %7 = load i32*, i32** @xmlGenericError, align 8
  %8 = load i32*, i32** @xmlGenericErrorDefaultFunc, align 8
  %9 = icmp eq i32* %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = load i32*, i32** @xmlGenericError, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %4
  %14 = call i32 @initGenericErrorDefaultFunc(i32* null)
  br label %15

15:                                               ; preds = %13, %10
  %16 = call i32 (...) @xmlInitMemory()
  %17 = call i32 (...) @xmlInitializeDict()
  %18 = call i32 (...) @xmlInitCharEncodingHandlers()
  %19 = call i32 (...) @xmlDefaultSAXHandlerInit()
  %20 = call i32 (...) @xmlRegisterDefaultInputCallbacks()
  store i32 1, i32* @xmlParserInitialized, align 4
  br label %21

21:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32 @xmlInitThreads(...) #1

declare dso_local i32 @xmlInitGlobals(...) #1

declare dso_local i32 @initGenericErrorDefaultFunc(i32*) #1

declare dso_local i32 @xmlInitMemory(...) #1

declare dso_local i32 @xmlInitializeDict(...) #1

declare dso_local i32 @xmlInitCharEncodingHandlers(...) #1

declare dso_local i32 @xmlDefaultSAXHandlerInit(...) #1

declare dso_local i32 @xmlRegisterDefaultInputCallbacks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
