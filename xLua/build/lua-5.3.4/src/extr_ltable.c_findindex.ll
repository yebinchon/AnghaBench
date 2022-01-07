; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_ltable.c_findindex.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_ltable.c_findindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"invalid key to 'next'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32)* @findindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findindex(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @ttisnil(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %82

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @arrayindex(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ule i32 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %82

28:                                               ; preds = %20, %15
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32* @mainposition(%struct.TYPE_5__* %29, i32 %30)
  store i32* %31, i32** %10, align 8
  br label %32

32:                                               ; preds = %81, %28
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @gkey(i32* %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @luaV_rawequalobj(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %32
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @gkey(i32* %39)
  %41 = call i64 @ttisdeadkey(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @iscollectable(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @gkey(i32* %48)
  %50 = call i64 @deadvalue(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @gcvalue(i32 %51)
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %47, %32
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = call i32 @gnode(%struct.TYPE_5__* %56, i32 0)
  %58 = sext i32 %57 to i64
  %59 = sub i64 0, %58
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = call i32 @cast_int(i32* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %63, %66
  store i32 %67, i32* %4, align 4
  br label %82

68:                                               ; preds = %47, %43, %38
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @gnext(i32* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @luaG_runerror(i32* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %81

76:                                               ; preds = %68
  %77 = load i32, i32* %9, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %10, align 8
  br label %81

81:                                               ; preds = %76, %73
  br label %32

82:                                               ; preds = %54, %26, %14
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @ttisnil(i32) #1

declare dso_local i32 @arrayindex(i32) #1

declare dso_local i32* @mainposition(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @luaV_rawequalobj(i32, i32) #1

declare dso_local i32 @gkey(i32*) #1

declare dso_local i64 @ttisdeadkey(i32) #1

declare dso_local i64 @iscollectable(i32) #1

declare dso_local i64 @deadvalue(i32) #1

declare dso_local i64 @gcvalue(i32) #1

declare dso_local i32 @cast_int(i32*) #1

declare dso_local i32 @gnode(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @gnext(i32*) #1

declare dso_local i32 @luaG_runerror(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
