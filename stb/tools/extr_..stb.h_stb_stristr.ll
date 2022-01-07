; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_stristr.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_stristr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stb_stristr(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %3, align 8
  br label %33

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %29, %14
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i8* @stb_strichr(i8* %16, i8 signext %18)
  store i8* %19, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @stb_strnicmp(i8* %22, i8* %23, i64 %24)
  %26 = icmp eq i64 0, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  store i8* %28, i8** %3, align 8
  br label %33

29:                                               ; preds = %21
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %31, i8** %4, align 8
  br label %15

32:                                               ; preds = %15
  store i8* null, i8** %3, align 8
  br label %33

33:                                               ; preds = %32, %27, %12
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @stb_strichr(i8*, i8 signext) #1

declare dso_local i64 @stb_strnicmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
