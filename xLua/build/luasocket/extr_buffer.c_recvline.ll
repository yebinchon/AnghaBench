; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_buffer.c_recvline.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_buffer.c_recvline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IO_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @recvline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recvline(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @IO_DONE, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %60, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IO_DONE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %61

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @buffer_get(i32 %15, i8** %8, i64* %6)
  store i32 %16, i32* %5, align 4
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %44, %14
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 10
  br label %28

28:                                               ; preds = %21, %17
  %29 = phi i1 [ false, %17 ], [ %27, %21 ]
  br i1 %29, label %30, label %47

30:                                               ; preds = %28
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 13
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i32*, i32** %4, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @luaL_addchar(i32* %38, i8 signext %42)
  br label %44

44:                                               ; preds = %37, %30
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %7, align 8
  br label %17

47:                                               ; preds = %28
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 1
  %55 = call i32 @buffer_skip(i32 %52, i64 %54)
  br label %61

56:                                               ; preds = %47
  %57 = load i32, i32* %3, align 4
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @buffer_skip(i32 %57, i64 %58)
  br label %60

60:                                               ; preds = %56
  br label %10

61:                                               ; preds = %51, %10
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @buffer_get(i32, i8**, i64*) #1

declare dso_local i32 @luaL_addchar(i32*, i8 signext) #1

declare dso_local i32 @buffer_skip(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
