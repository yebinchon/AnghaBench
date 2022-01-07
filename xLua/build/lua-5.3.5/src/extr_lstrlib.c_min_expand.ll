; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lstrlib.c_min_expand.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lstrlib.c_min_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*, i8*)* @min_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @min_expand(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  br label %11

11:                                               ; preds = %33, %4
  %12 = load i32*, i32** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = call i8* @match(i32* %12, i8* %13, i8* %15)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i8*, i8** %10, align 8
  store i8* %20, i8** %5, align 8
  br label %34

21:                                               ; preds = %11
  %22 = load i32*, i32** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i64 @singlematch(i32* %22, i8* %23, i8* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 8
  br label %32

31:                                               ; preds = %21
  store i8* null, i8** %5, align 8
  br label %34

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32
  br label %11

34:                                               ; preds = %31, %19
  %35 = load i8*, i8** %5, align 8
  ret i8* %35
}

declare dso_local i8* @match(i32*, i8*, i8*) #1

declare dso_local i64 @singlematch(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
