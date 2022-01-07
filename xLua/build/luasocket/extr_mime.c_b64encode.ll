; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_b64encode.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_b64encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b64base = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i64, i32*)* @b64encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @b64encode(i64 %0, i64* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [4 x i64], align 16
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* %7, align 8
  %15 = getelementptr inbounds i64, i64* %12, i64 %13
  store i64 %11, i64* %15, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 3
  br i1 %17, label %18, label %71

18:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %10, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = shl i64 %24, 8
  store i64 %25, i64* %10, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = shl i64 %31, 8
  store i64 %32, i64* %10, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %10, align 8
  %38 = load i64*, i64** @b64base, align 8
  %39 = load i64, i64* %10, align 8
  %40 = and i64 %39, 63
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 3
  store i64 %42, i64* %43, align 8
  %44 = load i64, i64* %10, align 8
  %45 = lshr i64 %44, 6
  store i64 %45, i64* %10, align 8
  %46 = load i64*, i64** @b64base, align 8
  %47 = load i64, i64* %10, align 8
  %48 = and i64 %47, 63
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 2
  store i64 %50, i64* %51, align 16
  %52 = load i64, i64* %10, align 8
  %53 = lshr i64 %52, 6
  store i64 %53, i64* %10, align 8
  %54 = load i64*, i64** @b64base, align 8
  %55 = load i64, i64* %10, align 8
  %56 = and i64 %55, 63
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 1
  store i64 %58, i64* %59, align 8
  %60 = load i64, i64* %10, align 8
  %61 = lshr i64 %60, 6
  store i64 %61, i64* %10, align 8
  %62 = load i64*, i64** @b64base, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  store i64 %65, i64* %66, align 16
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  %69 = bitcast i64* %68 to i8*
  %70 = call i32 @luaL_addlstring(i32* %67, i8* %69, i32 4)
  store i64 0, i64* %7, align 8
  br label %71

71:                                               ; preds = %18, %4
  %72 = load i64, i64* %7, align 8
  ret i64 %72
}

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
