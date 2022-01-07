; ModuleID = '/home/carl/AnghaBench/tini/test/sigconf/extr_sigconf-test.c_main.c'
source_filename = "/home/carl/AnghaBench/tini/test/sigconf/extr_sigconf-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGTTOU = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* @SIGTTOU, align 4
  %7 = load i32, i32* @SIG_IGN, align 4
  %8 = call i32 @signal(i32 %6, i32 %7)
  %9 = load i32, i32* @SIGSEGV, align 4
  %10 = load i32, i32* @SIG_IGN, align 4
  %11 = call i32 @signal(i32 %9, i32 %10)
  %12 = load i32, i32* @SIGINT, align 4
  %13 = load i32, i32* @SIG_IGN, align 4
  %14 = call i32 @signal(i32 %12, i32 %13)
  %15 = call i32 @sigemptyset(i32* %5)
  %16 = load i32, i32* @SIGTTIN, align 4
  %17 = call i32 @sigaddset(i32* %5, i32 %16)
  %18 = load i32, i32* @SIGILL, align 4
  %19 = call i32 @sigaddset(i32* %5, i32 %18)
  %20 = load i32, i32* @SIGTERM, align 4
  %21 = call i32 @sigaddset(i32* %5, i32 %20)
  %22 = load i32, i32* @SIG_BLOCK, align 4
  %23 = call i32 @sigprocmask(i32 %22, i32* %5, i32* null)
  %24 = load i8**, i8*** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = call i32 @execvp(i8* %26, i8** %28)
  ret i32 0
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @execvp(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
