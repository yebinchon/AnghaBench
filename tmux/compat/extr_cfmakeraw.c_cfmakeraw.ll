; ModuleID = '/home/carl/AnghaBench/tmux/compat/extr_cfmakeraw.c_cfmakeraw.c'
source_filename = "/home/carl/AnghaBench/tmux/compat/extr_cfmakeraw.c_cfmakeraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32, i32 }

@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfmakeraw(%struct.termios* %0) #0 {
  %2 = alloca %struct.termios*, align 8
  store %struct.termios* %0, %struct.termios** %2, align 8
  %3 = load i32, i32* @IGNBRK, align 4
  %4 = load i32, i32* @BRKINT, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @PARMRK, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @ISTRIP, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @INLCR, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @IGNCR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @ICRNL, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IXON, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.termios*, %struct.termios** %2, align 8
  %20 = getelementptr inbounds %struct.termios, %struct.termios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @OPOST, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.termios*, %struct.termios** %2, align 8
  %26 = getelementptr inbounds %struct.termios, %struct.termios* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @ECHO, align 4
  %30 = load i32, i32* @ECHONL, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ICANON, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ISIG, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @IEXTEN, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load %struct.termios*, %struct.termios** %2, align 8
  %40 = getelementptr inbounds %struct.termios, %struct.termios* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @CSIZE, align 4
  %44 = load i32, i32* @PARENB, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load %struct.termios*, %struct.termios** %2, align 8
  %48 = getelementptr inbounds %struct.termios, %struct.termios* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @CS8, align 4
  %52 = load %struct.termios*, %struct.termios** %2, align 8
  %53 = getelementptr inbounds %struct.termios, %struct.termios* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
