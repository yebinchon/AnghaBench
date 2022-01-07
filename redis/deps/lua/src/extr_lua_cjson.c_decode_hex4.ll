; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_decode_hex4.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_decode_hex4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @decode_hex4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_hex4(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = call i32 @hexdigit2int(i8 signext %14)
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %17
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %44

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %6

29:                                               ; preds = %6
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = shl i32 %31, 12
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = add nsw i32 %32, %35
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 %38, 4
  %40 = add nsw i32 %36, %39
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %40, %42
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %29, %24
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @hexdigit2int(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
