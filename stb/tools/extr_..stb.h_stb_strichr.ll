; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_strichr.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_strichr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stb_strichr(i8* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = call i64 @tolower(i8 signext %6)
  %8 = load i8, i8* %5, align 1
  %9 = call i64 @toupper(i8 signext %8)
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %5, align 1
  %14 = call i8* @strchr(i8* %12, i8 signext %13)
  store i8* %14, i8** %3, align 8
  br label %24

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %5, align 1
  %18 = call i64 @tolower(i8 signext %17)
  %19 = trunc i64 %18 to i8
  %20 = load i8, i8* %5, align 1
  %21 = call i64 @toupper(i8 signext %20)
  %22 = trunc i64 %21 to i8
  %23 = call i8* @stb_strchr2(i8* %16, i8 signext %19, i8 signext %22)
  store i8* %23, i8** %3, align 8
  br label %24

24:                                               ; preds = %15, %11
  %25 = load i8*, i8** %3, align 8
  ret i8* %25
}

declare dso_local i64 @tolower(i8 signext) #1

declare dso_local i64 @toupper(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @stb_strchr2(i8*, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
