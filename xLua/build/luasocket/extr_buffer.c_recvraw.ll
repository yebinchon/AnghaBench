; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_buffer.c_recvraw.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_buffer.c_recvraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IO_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32*)* @recvraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recvraw(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @IO_DONE, align 4
  store i32 %11, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %38, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @IO_DONE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @buffer_get(i32 %17, i8** %10, i64* %9)
  store i32 %18, i32* %7, align 4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %8, align 8
  %22 = sub i64 %20, %21
  %23 = call i64 @MIN(i64 %19, i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @luaL_addlstring(i32* %24, i8* %25, i64 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @buffer_skip(i32 %28, i64 %29)
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %16
  br label %39

38:                                               ; preds = %16
  br label %12

39:                                               ; preds = %37, %12
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @buffer_get(i32, i8**, i64*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i64) #1

declare dso_local i32 @buffer_skip(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
