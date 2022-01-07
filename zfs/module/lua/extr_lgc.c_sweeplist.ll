; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lgc.c_sweeplist.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lgc.c_sweeplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32* }

@OLDBIT = common dso_local global i32 0, align 4
@maskcolors = common dso_local global i32 0, align 4
@LUA_TTHREAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32** (i32*, i32**, i32)* @sweeplist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32** @sweeplist(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @G(i32* %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @otherwhite(i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = call i64 @isgenerational(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  store i32 -1, i32* %10, align 4
  %23 = load i32, i32* @OLDBIT, align 4
  %24 = call i32 @bitmask(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @OLDBIT, align 4
  %26 = call i32 @bitmask(i32 %25)
  store i32 %26, i32* %12, align 4
  br label %31

27:                                               ; preds = %3
  %28 = load i32, i32* @maskcolors, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @luaC_white(i32* %29)
  store i32 %30, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %27, %22
  br label %32

32:                                               ; preds = %93, %31
  %33 = load i32**, i32*** %6, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %7, align 4
  %39 = icmp sgt i32 %37, 0
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  br i1 %41, label %42, label %94

42:                                               ; preds = %40
  %43 = load i32**, i32*** %6, align 8
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %13, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = call %struct.TYPE_2__* @gch(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i64 @isdeadm(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %42
  %54 = load i32*, i32** %13, align 8
  %55 = call %struct.TYPE_2__* @gch(i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32**, i32*** %6, align 8
  store i32* %57, i32** %58, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @freeobj(i32* %59, i32* %60)
  br label %93

62:                                               ; preds = %42
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i64 @testbits(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32** null, i32*** %4, align 8
  br label %103

68:                                               ; preds = %62
  %69 = load i32*, i32** %13, align 8
  %70 = call %struct.TYPE_2__* @gch(i32* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @LUA_TTHREAD, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @gco2th(i32* %77)
  %79 = call i32 @sweepthread(i32* %76, i32 %78)
  br label %80

80:                                               ; preds = %75, %68
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %10, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @cast_byte(i32 %85)
  %87 = load i32*, i32** %13, align 8
  %88 = call %struct.TYPE_2__* @gch(i32* %87)
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = call %struct.TYPE_2__* @gch(i32* %90)
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i32** %92, i32*** %6, align 8
  br label %93

93:                                               ; preds = %80, %53
  br label %32

94:                                               ; preds = %40
  %95 = load i32**, i32*** %6, align 8
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %101

99:                                               ; preds = %94
  %100 = load i32**, i32*** %6, align 8
  br label %101

101:                                              ; preds = %99, %98
  %102 = phi i32** [ null, %98 ], [ %100, %99 ]
  store i32** %102, i32*** %4, align 8
  br label %103

103:                                              ; preds = %101, %67
  %104 = load i32**, i32*** %4, align 8
  ret i32** %104
}

declare dso_local i32* @G(i32*) #1

declare dso_local i32 @otherwhite(i32*) #1

declare dso_local i64 @isgenerational(i32*) #1

declare dso_local i32 @bitmask(i32) #1

declare dso_local i32 @luaC_white(i32*) #1

declare dso_local %struct.TYPE_2__* @gch(i32*) #1

declare dso_local i64 @isdeadm(i32, i32) #1

declare dso_local i32 @freeobj(i32*, i32*) #1

declare dso_local i64 @testbits(i32, i32) #1

declare dso_local i32 @sweepthread(i32*, i32) #1

declare dso_local i32 @gco2th(i32*) #1

declare dso_local i32 @cast_byte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
