; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_char_init.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_char_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_12__ = type { i32*, i32, i32 }

@TCGETA = common dso_local global i32 0, align 4
@old_termio = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@VINTR = common dso_local global i64 0, align 8
@gl_intrc = common dso_local global i32 0, align 4
@VQUIT = common dso_local global i64 0, align 8
@gl_quitc = common dso_local global i32 0, align 4
@new_termio = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@BRKINT = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@TCSETA = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@RAW = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@TIOCGETC = common dso_local global i32 0, align 4
@TIOCGETP = common dso_local global i32 0, align 4
@TIOCGLTC = common dso_local global i32 0, align 4
@TIOCSETN = common dso_local global i32 0, align 4
@VDSUSP = common dso_local global i64 0, align 8
@VSUSP = common dso_local global i64 0, align 8
@gl_dsuspc = common dso_local global i32 0, align 4
@gl_suspc = common dso_local global i32 0, align 4
@ltch = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@new_termios = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@new_tty = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@old_termios = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@old_tty = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@tch = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gl_char_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_char_init() #0 {
  %1 = load i32, i32* @TCGETA, align 4
  %2 = call i64 @ioctl(i32 0, i32 %1, %struct.TYPE_13__* @old_termio)
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @old_termio, i32 0, i32 5), align 8
  %6 = load i64, i64* @VINTR, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* @gl_intrc, align 4
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @old_termio, i32 0, i32 5), align 8
  %10 = load i64, i64* @VQUIT, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* @gl_quitc, align 4
  br label %13

13:                                               ; preds = %4, %0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_13__* @new_termio to i8*), i8* align 8 bitcast (%struct.TYPE_13__* @old_termio to i8*), i64 40, i1 false)
  %14 = load i32, i32* @BRKINT, align 4
  %15 = load i32, i32* @ISTRIP, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @IXON, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @IXOFF, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @new_termio, i32 0, i32 6), align 8
  %23 = and i32 %22, %21
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @new_termio, i32 0, i32 6), align 8
  %24 = load i32, i32* @IGNBRK, align 4
  %25 = load i32, i32* @IGNPAR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @new_termio, i32 0, i32 6), align 8
  %28 = or i32 %27, %26
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @new_termio, i32 0, i32 6), align 8
  %29 = load i32, i32* @ICANON, align 4
  %30 = load i32, i32* @ISIG, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ECHO, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @new_termio, i32 0, i32 7), align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @new_termio, i32 0, i32 7), align 4
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @new_termio, i32 0, i32 5), align 8
  %38 = load i64, i64* @VMIN, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 1, i32* %39, align 4
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @new_termio, i32 0, i32 5), align 8
  %41 = load i64, i64* @VTIME, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* @TCSETA, align 4
  %44 = call i64 @ioctl(i32 0, i32 %43, %struct.TYPE_13__* @new_termio)
  ret void
}

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
