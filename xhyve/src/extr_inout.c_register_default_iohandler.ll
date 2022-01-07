; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_inout.c_register_default_iohandler.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_inout.c_register_default_iohandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inout_port = type { i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@IOPORT_F_INOUT = common dso_local global i32 0, align 4
@IOPORT_F_DEFAULT = common dso_local global i32 0, align 4
@default_inout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @register_default_iohandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_default_iohandler(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.inout_port, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @VERIFY_IOPORT(i32 %6, i32 %7)
  %9 = call i32 @bzero(%struct.inout_port* %5, i32 24)
  %10 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %5, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %5, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @IOPORT_F_INOUT, align 4
  %16 = load i32, i32* @IOPORT_F_DEFAULT, align 4
  %17 = or i32 %15, %16
  %18 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %5, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @default_inout, align 4
  %20 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %5, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = call i32 @register_inout(%struct.inout_port* %5)
  ret void
}

declare dso_local i32 @VERIFY_IOPORT(i32, i32) #1

declare dso_local i32 @bzero(%struct.inout_port*, i32) #1

declare dso_local i32 @register_inout(%struct.inout_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
