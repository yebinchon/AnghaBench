; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lvm.c_luaV_equalval.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lvm.c_luaV_equalval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@TM_EQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaV_equalval(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @ttype(i32* %9)
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @ttype(i32* %11)
  %13 = icmp eq i32 %10, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @lua_assert(i32 %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @ttype(i32* %16)
  switch i32 %17, label %77 [
    i32 131, label %18
    i32 130, label %19
    i32 133, label %25
    i32 132, label %32
    i32 128, label %39
    i32 129, label %58
  ]

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %104

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @nvalue(i32* %20)
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @nvalue(i32* %22)
  %24 = call i32 @luai_numeq(i32 %21, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %104

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @bvalue(i32* %26)
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @bvalue(i32* %28)
  %30 = icmp eq i32 %27, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %4, align 4
  br label %104

32:                                               ; preds = %3
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @pvalue(i32* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @pvalue(i32* %35)
  %37 = icmp eq i32 %34, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %4, align 4
  br label %104

39:                                               ; preds = %3
  %40 = load i32*, i32** %6, align 8
  %41 = call %struct.TYPE_8__* @uvalue(i32* %40)
  %42 = load i32*, i32** %7, align 8
  %43 = call %struct.TYPE_8__* @uvalue(i32* %42)
  %44 = icmp eq %struct.TYPE_8__* %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %104

46:                                               ; preds = %39
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call %struct.TYPE_8__* @uvalue(i32* %48)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = call %struct.TYPE_8__* @uvalue(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TM_EQ, align 4
  %57 = call i32* @get_compTM(%struct.TYPE_7__* %47, i32 %51, i32 %55, i32 %56)
  store i32* %57, i32** %8, align 8
  br label %84

58:                                               ; preds = %3
  %59 = load i32*, i32** %6, align 8
  %60 = call %struct.TYPE_9__* @hvalue(i32* %59)
  %61 = load i32*, i32** %7, align 8
  %62 = call %struct.TYPE_9__* @hvalue(i32* %61)
  %63 = icmp eq %struct.TYPE_9__* %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %104

65:                                               ; preds = %58
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call %struct.TYPE_9__* @hvalue(i32* %67)
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = call %struct.TYPE_9__* @hvalue(i32* %71)
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @TM_EQ, align 4
  %76 = call i32* @get_compTM(%struct.TYPE_7__* %66, i32 %70, i32 %74, i32 %75)
  store i32* %76, i32** %8, align 8
  br label %84

77:                                               ; preds = %3
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @gcvalue(i32* %78)
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @gcvalue(i32* %80)
  %82 = icmp eq i32 %79, %81
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %4, align 4
  br label %104

84:                                               ; preds = %65, %46
  %85 = load i32*, i32** %8, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %104

88:                                               ; preds = %84
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @callTMres(%struct.TYPE_7__* %89, i32 %92, i32* %93, i32* %94, i32* %95)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @l_isfalse(i32 %99)
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %88, %87, %77, %64, %45, %32, %25, %19, %18
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @ttype(i32*) #1

declare dso_local i32 @luai_numeq(i32, i32) #1

declare dso_local i32 @nvalue(i32*) #1

declare dso_local i32 @bvalue(i32*) #1

declare dso_local i32 @pvalue(i32*) #1

declare dso_local %struct.TYPE_8__* @uvalue(i32*) #1

declare dso_local i32* @get_compTM(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @hvalue(i32*) #1

declare dso_local i32 @gcvalue(i32*) #1

declare dso_local i32 @callTMres(%struct.TYPE_7__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @l_isfalse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
