; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lstring.c_newshrstr.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lstring.c_newshrstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }

@lu_int32 = common dso_local global i32 0, align 4
@MAX_INT = common dso_local global i32 0, align 4
@LUA_TSHRSTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i64, i32)* @newshrstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @newshrstr(i32* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_4__* @G(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %10, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @lu_int32, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @cast(i32 %18, i32 %21)
  %23 = icmp sge i64 %17, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MAX_INT, align 4
  %29 = sdiv i32 %28, 2
  %30 = icmp sle i32 %27, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %35, 2
  %37 = call i32 @luaS_resize(i32* %32, i32 %36)
  br label %38

38:                                               ; preds = %31, %24, %4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @lmod(i32 %42, i32 %45)
  %47 = getelementptr inbounds i32*, i32** %41, i64 %46
  store i32** %47, i32*** %9, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* @LUA_TSHRSTR, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32**, i32*** %9, align 8
  %54 = call i32* @createstrobj(i32* %48, i8* %49, i64 %50, i32 %51, i32 %52, i32** %53)
  store i32* %54, i32** %11, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load i32*, i32** %11, align 8
  ret i32* %59
}

declare dso_local %struct.TYPE_4__* @G(i32*) #1

declare dso_local i64 @cast(i32, i32) #1

declare dso_local i32 @luaS_resize(i32*, i32) #1

declare dso_local i64 @lmod(i32, i32) #1

declare dso_local i32* @createstrobj(i32*, i8*, i64, i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
