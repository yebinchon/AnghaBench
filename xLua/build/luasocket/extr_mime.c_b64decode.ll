; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_b64decode.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_b64decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b64unbase = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i64, i32*)* @b64decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @b64decode(i64 %0, i64* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [3 x i64], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** @b64unbase, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 64
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %5, align 8
  br label %101

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %8, align 8
  %25 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 %21, i64* %25, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %28, label %99

28:                                               ; preds = %20
  store i32 0, i32* %12, align 4
  %29 = load i32*, i32** @b64unbase, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = shl i32 %35, 6
  store i32 %36, i32* %12, align 4
  %37 = load i32*, i32** @b64unbase, align 8
  %38 = load i64*, i64** %7, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %12, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = shl i32 %45, 6
  store i32 %46, i32* %12, align 4
  %47 = load i32*, i32** @b64unbase, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = shl i32 %55, 6
  store i32 %56, i32* %12, align 4
  %57 = load i32*, i32** @b64unbase, align 8
  %58 = load i64*, i64** %7, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 3
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %12, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = and i32 %65, 255
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 2
  store i64 %67, i64* %68, align 16
  %69 = load i32, i32* %12, align 4
  %70 = ashr i32 %69, 8
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, 255
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  store i64 %73, i64* %74, align 8
  %75 = load i32, i32* %12, align 4
  %76 = ashr i32 %75, 8
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  store i64 %78, i64* %79, align 16
  %80 = load i64*, i64** %7, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 61
  br i1 %83, label %84, label %85

84:                                               ; preds = %28
  br label %92

85:                                               ; preds = %28
  %86 = load i64*, i64** %7, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 61
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 2, i32 3
  br label %92

92:                                               ; preds = %85, %84
  %93 = phi i32 [ 1, %84 ], [ %91, %85 ]
  store i32 %93, i32* %11, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %96 = bitcast i64* %95 to i8*
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @luaL_addlstring(i32* %94, i8* %96, i32 %97)
  store i64 0, i64* %5, align 8
  br label %101

99:                                               ; preds = %20
  %100 = load i64, i64* %8, align 8
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %99, %92, %18
  %102 = load i64, i64* %5, align 8
  ret i64 %102
}

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
