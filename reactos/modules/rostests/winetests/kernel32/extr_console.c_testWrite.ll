; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_console.c_testWrite.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_console.c_testWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_ATTRIB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Setting default text color\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @testWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testWrite(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @TEST_ATTRIB, align 4
  %7 = call i32 @SetConsoleTextAttribute(i32 %5, i32 %6)
  %8 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @resetContent(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @testEmptyWrite(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @FALSE, align 4
  %18 = call i32 @resetContent(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @testWriteSimple(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 @resetContent(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @testWriteNotWrappedNotProcessed(i32 %25, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @FALSE, align 4
  %31 = call i32 @resetContent(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @testWriteNotWrappedProcessed(i32 %32, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i32 @resetContent(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @testWriteWrappedNotProcessed(i32 %39, i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @resetContent(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @testWriteWrappedProcessed(i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SetConsoleTextAttribute(i32, i32) #1

declare dso_local i32 @resetContent(i32, i32, i32) #1

declare dso_local i32 @testEmptyWrite(i32) #1

declare dso_local i32 @testWriteSimple(i32) #1

declare dso_local i32 @testWriteNotWrappedNotProcessed(i32, i32) #1

declare dso_local i32 @testWriteNotWrappedProcessed(i32, i32) #1

declare dso_local i32 @testWriteWrappedNotProcessed(i32, i32) #1

declare dso_local i32 @testWriteWrappedProcessed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
