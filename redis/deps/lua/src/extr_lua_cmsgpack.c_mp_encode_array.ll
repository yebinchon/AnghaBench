; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cmsgpack.c_mp_encode_array.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cmsgpack.c_mp_encode_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_encode_array(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5 x i8], align 1
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 15
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 15
  %14 = or i32 144, %13
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  store i8 %15, i8* %16, align 1
  store i32 1, i32* %8, align 4
  br label %53

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %18, 65535
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  store i8 -36, i8* %21, align 1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 65280
  %24 = ashr i32 %23, 8
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1
  store i8 %25, i8* %26, align 1
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 255
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2
  store i8 %29, i8* %30, align 1
  store i32 3, i32* %8, align 4
  br label %52

31:                                               ; preds = %17
  %32 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  store i8 -35, i8* %32, align 1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, -16777216
  %35 = lshr i32 %34, 24
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1
  store i8 %36, i8* %37, align 1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 16711680
  %40 = ashr i32 %39, 16
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2
  store i8 %41, i8* %42, align 1
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 65280
  %45 = ashr i32 %44, 8
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 3
  store i8 %46, i8* %47, align 1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 255
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 4
  store i8 %50, i8* %51, align 1
  store i32 5, i32* %8, align 4
  br label %52

52:                                               ; preds = %31, %20
  br label %53

53:                                               ; preds = %52, %11
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @mp_buf_append(i32* %54, i32* %55, i8* %56, i32 %57)
  ret void
}

declare dso_local i32 @mp_buf_append(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
