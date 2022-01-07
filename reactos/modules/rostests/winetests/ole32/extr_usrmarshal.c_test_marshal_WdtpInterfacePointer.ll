; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_usrmarshal.c_test_marshal_WdtpInterfacePointer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_usrmarshal.c_test_marshal_WdtpInterfacePointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSHCTX_INPROC = common dso_local global i32 0, align 4
@MSHCTX_DIFFERENTMACHINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_marshal_WdtpInterfacePointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_marshal_WdtpInterfacePointer() #0 {
  %1 = load i32, i32* @MSHCTX_INPROC, align 4
  %2 = load i32, i32* @MSHCTX_INPROC, align 4
  %3 = call i32 @marshal_WdtpInterfacePointer(i32 %1, i32 %2, i32 0, i32 0, i32 0)
  %4 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %5 = load i32, i32* @MSHCTX_INPROC, align 4
  %6 = call i32 @marshal_WdtpInterfacePointer(i32 %4, i32 %5, i32 0, i32 0, i32 0)
  %7 = load i32, i32* @MSHCTX_INPROC, align 4
  %8 = load i32, i32* @MSHCTX_INPROC, align 4
  %9 = call i32 @MAKELONG(i32 %8, i32 65535)
  %10 = call i32 @marshal_WdtpInterfacePointer(i32 %7, i32 %9, i32 0, i32 0, i32 0)
  %11 = load i32, i32* @MSHCTX_INPROC, align 4
  %12 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %13 = call i32 @marshal_WdtpInterfacePointer(i32 %11, i32 %12, i32 0, i32 0, i32 0)
  %14 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %15 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %16 = call i32 @marshal_WdtpInterfacePointer(i32 %14, i32 %15, i32 0, i32 0, i32 0)
  %17 = load i32, i32* @MSHCTX_INPROC, align 4
  %18 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %19 = call i32 @MAKELONG(i32 %18, i32 65535)
  %20 = call i32 @marshal_WdtpInterfacePointer(i32 %17, i32 %19, i32 0, i32 0, i32 0)
  %21 = load i32, i32* @MSHCTX_INPROC, align 4
  %22 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %23 = call i32 @marshal_WdtpInterfacePointer(i32 %21, i32 %22, i32 0, i32 0, i32 1)
  %24 = load i32, i32* @MSHCTX_INPROC, align 4
  %25 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %26 = call i32 @marshal_WdtpInterfacePointer(i32 %24, i32 %25, i32 0, i32 1, i32 0)
  %27 = load i32, i32* @MSHCTX_INPROC, align 4
  %28 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %29 = call i32 @marshal_WdtpInterfacePointer(i32 %27, i32 %28, i32 0, i32 1, i32 1)
  %30 = load i32, i32* @MSHCTX_INPROC, align 4
  %31 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %32 = call i32 @marshal_WdtpInterfacePointer(i32 %30, i32 %31, i32 1, i32 0, i32 0)
  %33 = load i32, i32* @MSHCTX_INPROC, align 4
  %34 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %35 = call i32 @marshal_WdtpInterfacePointer(i32 %33, i32 %34, i32 1, i32 0, i32 1)
  %36 = load i32, i32* @MSHCTX_INPROC, align 4
  %37 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %38 = call i32 @marshal_WdtpInterfacePointer(i32 %36, i32 %37, i32 1, i32 1, i32 0)
  %39 = load i32, i32* @MSHCTX_INPROC, align 4
  %40 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %41 = call i32 @marshal_WdtpInterfacePointer(i32 %39, i32 %40, i32 1, i32 1, i32 1)
  ret void
}

declare dso_local i32 @marshal_WdtpInterfacePointer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
