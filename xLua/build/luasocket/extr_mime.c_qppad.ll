; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_qppad.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_qppad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qpclass = common dso_local global i64* null, align 8
@QP_PLAIN = common dso_local global i64 0, align 8
@EQCRLF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64, i32*)* @qppad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qppad(i64* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %37, %3
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %8
  %13 = load i64*, i64** @qpclass, align 8
  %14 = load i64*, i64** %4, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i64, i64* %13, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @QP_PLAIN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  %23 = load i32*, i32** %6, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @luaL_addchar(i32* %23, i64 %27)
  br label %36

29:                                               ; preds = %12
  %30 = load i64*, i64** %4, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @qpquote(i64 %33, i32* %34)
  br label %36

36:                                               ; preds = %29, %22
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  br label %8

40:                                               ; preds = %8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @EQCRLF, align 4
  %46 = call i32 @luaL_addstring(i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %40
  ret i64 0
}

declare dso_local i32 @luaL_addchar(i32*, i64) #1

declare dso_local i32 @qpquote(i64, i32*) #1

declare dso_local i32 @luaL_addstring(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
