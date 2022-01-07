; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lstring.c_luaS_init.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lstring.c_luaS_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32** }

@STRSEED = common dso_local global i64 0, align 8
@MINSTRTABSIZE = common dso_local global i32 0, align 4
@MEMERRMSG = common dso_local global i32 0, align 4
@STRCACHE_N = common dso_local global i32 0, align 4
@STRCACHE_M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaS_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.TYPE_3__* @G(i32* %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  %8 = load i64, i64* @STRSEED, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @make_str_seed(i32* %11)
  store i64 %12, i64* @STRSEED, align 8
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @MINSTRTABSIZE, align 4
  %16 = call i32 @luaS_resize(i32* %14, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @MEMERRMSG, align 4
  %19 = call i32 @luaS_newliteral(i32* %17, i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @obj2gco(i32 %25)
  %27 = call i32 @luaC_fix(i32* %22, i32 %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %55, %13
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @STRCACHE_N, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %51, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @STRCACHE_M, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %40, i32* %50, align 4
  br label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %33

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %28

58:                                               ; preds = %28
  ret void
}

declare dso_local %struct.TYPE_3__* @G(i32*) #1

declare dso_local i64 @make_str_seed(i32*) #1

declare dso_local i32 @luaS_resize(i32*, i32) #1

declare dso_local i32 @luaS_newliteral(i32*, i32) #1

declare dso_local i32 @luaC_fix(i32*, i32) #1

declare dso_local i32 @obj2gco(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
