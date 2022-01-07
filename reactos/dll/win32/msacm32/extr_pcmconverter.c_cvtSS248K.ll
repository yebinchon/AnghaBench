; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_pcmconverter.c_cvtSS248K.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_pcmconverter.c_cvtSS248K.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"(%p, %d, %p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @cvtSS248K to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvtSS248K(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %7, i32 %8, i8* %9)
  br label %11

11:                                               ; preds = %15, %3
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %5, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @R24(i8* %16)
  %18 = call i8* @C248(i32 %17)
  %19 = ptrtoint i8* %18 to i8
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %6, align 8
  store i8 %19, i8* %20, align 1
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @R24(i8* %24)
  %26 = call i8* @C248(i32 %25)
  %27 = ptrtoint i8* %26 to i8
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8
  store i8 %27, i8* %28, align 1
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 3
  store i8* %31, i8** %4, align 8
  br label %11

32:                                               ; preds = %11
  ret void
}

declare dso_local i32 @TRACE(i8*, i8*, i32, i8*) #1

declare dso_local i8* @C248(i32) #1

declare dso_local i32 @R24(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
