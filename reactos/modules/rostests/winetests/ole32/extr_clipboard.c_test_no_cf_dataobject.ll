; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_clipboard.c_test_no_cf_dataobject.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_clipboard.c_test_no_cf_dataobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"DataObject\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Ole Private Data\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_no_cf_dataobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_no_cf_dataobject() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = call i32 @RegisterClipboardFormatA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* %1, align 4
  %5 = call i32 @RegisterClipboardFormatA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %5, i32* %2, align 4
  %6 = call i32 @OpenClipboard(i32* null)
  %7 = load i32, i32* %1, align 4
  %8 = call i64 @GetClipboardData(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @GetClipboardData(i32 %15)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %21)
  %23 = call i32 (...) @CloseClipboard()
  ret void
}

declare dso_local i32 @RegisterClipboardFormatA(i8*) #1

declare dso_local i32 @OpenClipboard(i32*) #1

declare dso_local i64 @GetClipboardData(i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @CloseClipboard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
