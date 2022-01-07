; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_interrupt.c_vlc_interrupt_forward_start.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_interrupt.c_vlc_interrupt_forward_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vlc_interrupt_var = common dso_local global i32* null, align 8
@vlc_interrupt_forward_wake = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_interrupt_forward_start(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 1
  store i8* null, i8** %7, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  store i8* null, i8** %9, align 8
  %10 = load i32*, i32** @vlc_interrupt_var, align 8
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %32

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = icmp ne i32* %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = load i8**, i8*** %4, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  store i8* %21, i8** %23, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = load i8**, i8*** %4, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  store i8* %25, i8** %27, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @vlc_interrupt_forward_wake, align 4
  %30 = load i8**, i8*** %4, align 8
  %31 = call i32 @vlc_interrupt_prepare(i32* %28, i32 %29, i8** %30)
  br label %32

32:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_interrupt_prepare(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
