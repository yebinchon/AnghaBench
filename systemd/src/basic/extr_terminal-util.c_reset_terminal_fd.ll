; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_terminal-util.c_reset_terminal_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_terminal-util.c_reset_terminal_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32*, i32, i32 }

@TIOCNXCL = common dso_local global i32 0, align 4
@KDSETMODE = common dso_local global i32 0, align 4
@KD_TEXT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@IUCLC = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@IMAXBEL = common dso_local global i32 0, align 4
@IUTF8 = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@ECHOK = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@ECHOPRT = common dso_local global i32 0, align 4
@ECHOKE = common dso_local global i32 0, align 4
@VINTR = common dso_local global i64 0, align 8
@VQUIT = common dso_local global i64 0, align 8
@VERASE = common dso_local global i64 0, align 8
@VKILL = common dso_local global i64 0, align 8
@VEOF = common dso_local global i64 0, align 8
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@VSUSP = common dso_local global i64 0, align 8
@VLNEXT = common dso_local global i64 0, align 8
@VWERASE = common dso_local global i64 0, align 8
@VREPRINT = common dso_local global i64 0, align 8
@VEOL = common dso_local global i64 0, align 8
@VEOL2 = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@VMIN = common dso_local global i64 0, align 8
@TCSANOW = common dso_local global i32 0, align 4
@TCIOFLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reset_terminal_fd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.termios, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp sge i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @TIOCNXCL, align 4
  %13 = call i32 (i32, i32, ...) @ioctl(i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @KDSETMODE, align 4
  %19 = load i32, i32* @KD_TEXT, align 4
  %20 = call i32 (i32, i32, ...) @ioctl(i32 %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @vt_reset_keyboard(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @tcgetattr(i32 %24, %struct.termios* %5)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @errno, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %148

30:                                               ; preds = %21
  %31 = load i32, i32* @IGNBRK, align 4
  %32 = load i32, i32* @BRKINT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ISTRIP, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @INLCR, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @IGNCR, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @IUCLC, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %42
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* @ICRNL, align 4
  %47 = load i32, i32* @IMAXBEL, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @IUTF8, align 4
  %50 = or i32 %48, %49
  %51 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* @ONLCR, align 4
  %55 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @CREAD, align 4
  %59 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* @ISIG, align 4
  %63 = load i32, i32* @ICANON, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @IEXTEN, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @ECHO, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @ECHOE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @ECHOK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @ECHOCTL, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @ECHOPRT, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @ECHOKE, align 4
  %78 = or i32 %76, %77
  %79 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @VINTR, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 3, i32* %83, align 4
  %84 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @VQUIT, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 28, i32* %87, align 4
  %88 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @VERASE, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 127, i32* %91, align 4
  %92 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @VKILL, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 21, i32* %95, align 4
  %96 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @VEOF, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 4, i32* %99, align 4
  %100 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @VSTART, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 17, i32* %103, align 4
  %104 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @VSTOP, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 19, i32* %107, align 4
  %108 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @VSUSP, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 26, i32* %111, align 4
  %112 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @VLNEXT, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32 22, i32* %115, align 4
  %116 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @VWERASE, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32 23, i32* %119, align 4
  %120 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @VREPRINT, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32 18, i32* %123, align 4
  %124 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @VEOL, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32 0, i32* %127, align 4
  %128 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @VEOL2, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32 0, i32* %131, align 4
  %132 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @VTIME, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 0, i32* %135, align 4
  %136 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* @VMIN, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32 1, i32* %139, align 4
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* @TCSANOW, align 4
  %142 = call i64 @tcsetattr(i32 %140, i32 %141, %struct.termios* %5)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %30
  %145 = load i32, i32* @errno, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %144, %30
  br label %148

148:                                              ; preds = %147, %27
  %149 = load i32, i32* %3, align 4
  %150 = load i32, i32* @TCIOFLUSH, align 4
  %151 = call i32 @tcflush(i32 %149, i32 %150)
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ioctl(i32, i32, ...) #1

declare dso_local i32 @vt_reset_keyboard(i32) #1

declare dso_local i64 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i64 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @tcflush(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
