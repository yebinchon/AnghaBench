; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_get_user_sid.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_get_user_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@TOKEN_QUERY = common dso_local global i32 0, align 4
@TokenUser = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_user_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_user_sid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  store i8* null, i8** %4, align 8
  %5 = call i32 (...) @GetCurrentProcess()
  %6 = load i32, i32* @TOKEN_QUERY, align 4
  %7 = call i32 @OpenProcessToken(i32 %5, i32 %6, i32* %1)
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @TokenUser, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @GetTokenInformation(i32 %8, i32 %9, %struct.TYPE_7__* null, i32 %10, i32* %2)
  %12 = call i32 (...) @GetProcessHeap()
  %13 = load i32, i32* %2, align 4
  %14 = call %struct.TYPE_7__* @HeapAlloc(i32 %12, i32 0, i32 %13)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %3, align 8
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @TokenUser, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @GetTokenInformation(i32 %15, i32 %16, %struct.TYPE_7__* %17, i32 %18, i32* %2)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pConvertSidToStringSidA(i32 %23, i8** %4)
  %25 = call i32 (...) @GetProcessHeap()
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = call i32 @HeapFree(i32 %25, i32 0, %struct.TYPE_7__* %26)
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @CloseHandle(i32 %28)
  %30 = load i8*, i8** %4, align 8
  ret i8* %30
}

declare dso_local i32 @OpenProcessToken(i32, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @GetTokenInformation(i32, i32, %struct.TYPE_7__*, i32, i32*) #1

declare dso_local %struct.TYPE_7__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @pConvertSidToStringSidA(i32, i8**) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
