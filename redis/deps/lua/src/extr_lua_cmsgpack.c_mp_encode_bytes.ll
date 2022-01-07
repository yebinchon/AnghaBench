; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cmsgpack.c_mp_encode_bytes.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cmsgpack.c_mp_encode_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_encode_bytes(i32* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [5 x i8], align 1
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp ult i64 %11, 32
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i64, i64* %8, align 8
  %15 = and i64 %14, 255
  %16 = or i64 160, %15
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8 %17, i8* %18, align 1
  store i32 1, i32* %10, align 4
  br label %64

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = icmp ule i64 %20, 255
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8 -39, i8* %23, align 1
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 1
  store i8 %25, i8* %26, align 1
  store i32 2, i32* %10, align 4
  br label %63

27:                                               ; preds = %19
  %28 = load i64, i64* %8, align 8
  %29 = icmp ule i64 %28, 65535
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8 -38, i8* %31, align 1
  %32 = load i64, i64* %8, align 8
  %33 = and i64 %32, 65280
  %34 = lshr i64 %33, 8
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 1
  store i8 %35, i8* %36, align 1
  %37 = load i64, i64* %8, align 8
  %38 = and i64 %37, 255
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 2
  store i8 %39, i8* %40, align 1
  store i32 3, i32* %10, align 4
  br label %62

41:                                               ; preds = %27
  %42 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8 -37, i8* %42, align 1
  %43 = load i64, i64* %8, align 8
  %44 = and i64 %43, 4278190080
  %45 = lshr i64 %44, 24
  %46 = trunc i64 %45 to i8
  %47 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 1
  store i8 %46, i8* %47, align 1
  %48 = load i64, i64* %8, align 8
  %49 = and i64 %48, 16711680
  %50 = lshr i64 %49, 16
  %51 = trunc i64 %50 to i8
  %52 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 2
  store i8 %51, i8* %52, align 1
  %53 = load i64, i64* %8, align 8
  %54 = and i64 %53, 65280
  %55 = lshr i64 %54, 8
  %56 = trunc i64 %55 to i8
  %57 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 3
  store i8 %56, i8* %57, align 1
  %58 = load i64, i64* %8, align 8
  %59 = and i64 %58, 255
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 4
  store i8 %60, i8* %61, align 1
  store i32 5, i32* %10, align 4
  br label %62

62:                                               ; preds = %41, %30
  br label %63

63:                                               ; preds = %62, %22
  br label %64

64:                                               ; preds = %63, %13
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = call i32 @mp_buf_append(i32* %65, i32* %66, i8* %67, i64 %69)
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @mp_buf_append(i32* %71, i32* %72, i8* %73, i64 %74)
  ret void
}

declare dso_local i32 @mp_buf_append(i32*, i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
