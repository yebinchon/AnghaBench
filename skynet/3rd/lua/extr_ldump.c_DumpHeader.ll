; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_ldump.c_DumpHeader.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_ldump.c_DumpHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_SIGNATURE = common dso_local global i32 0, align 4
@LUAC_VERSION = common dso_local global i32 0, align 4
@LUAC_FORMAT = common dso_local global i32 0, align 4
@LUAC_DATA = common dso_local global i32 0, align 4
@LUAC_INT = common dso_local global i32 0, align 4
@LUAC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @DumpHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpHeader(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @LUA_SIGNATURE, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @DumpLiteral(i32 %3, i32* %4)
  %6 = load i32, i32* @LUAC_VERSION, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @DumpByte(i32 %6, i32* %7)
  %9 = load i32, i32* @LUAC_FORMAT, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @DumpByte(i32 %9, i32* %10)
  %12 = load i32, i32* @LUAC_DATA, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @DumpLiteral(i32 %12, i32* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @DumpByte(i32 4, i32* %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @DumpByte(i32 8, i32* %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @DumpByte(i32 4, i32* %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @DumpByte(i32 4, i32* %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @DumpByte(i32 4, i32* %23)
  %25 = load i32, i32* @LUAC_INT, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @DumpInteger(i32 %25, i32* %26)
  %28 = load i32, i32* @LUAC_NUM, align 4
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @DumpNumber(i32 %28, i32* %29)
  ret void
}

declare dso_local i32 @DumpLiteral(i32, i32*) #1

declare dso_local i32 @DumpByte(i32, i32*) #1

declare dso_local i32 @DumpInteger(i32, i32*) #1

declare dso_local i32 @DumpNumber(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
