; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_olecmd.c_get_clipboard_commands.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_olecmd.c_get_clipboard_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@IID_nsIDocShell = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not get nsIDocShell interface\0A\00", align 1
@IID_nsIClipboardCommands = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not get nsIClipboardCommands interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*)* @get_clipboard_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_clipboard_commands(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  %13 = bitcast i32** %5 to i8**
  %14 = call i32 @get_nsinterface(i32* %12, i32* @IID_nsIDocShell, i8** %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @NS_FAILED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %33

20:                                               ; preds = %1
  %21 = load i32*, i32** %5, align 8
  %22 = bitcast i32** %4 to i8**
  %23 = call i32 @nsIDocShell_QueryInterface(i32* %21, i32* @IID_nsIClipboardCommands, i8** %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @nsIDocShell_Release(i32* %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @NS_FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = call i32 @ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %33

31:                                               ; preds = %20
  %32 = load i32*, i32** %4, align 8
  store i32* %32, i32** %2, align 8
  br label %33

33:                                               ; preds = %31, %29, %18
  %34 = load i32*, i32** %2, align 8
  ret i32* %34
}

declare dso_local i32 @get_nsinterface(i32*, i32*, i8**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @nsIDocShell_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @nsIDocShell_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
