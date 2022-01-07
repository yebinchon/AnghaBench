; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_string.c_string_fmt_tostring.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_string.c_string_fmt_tostring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32* }

@MM_tostring = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32, i32)* @string_fmt_tostring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @string_fmt_tostring(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = getelementptr inbounds i32, i32* %15, i64 -1
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ult i32* %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @lua_assert(i32 %22)
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @tvisstr(i32* %24)
  %26 = call i64 @LJ_LIKELY(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32*, i32** %8, align 8
  %30 = call i32* @strV(i32* %29)
  store i32* %30, i32** %4, align 8
  br label %75

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %34, label %71

34:                                               ; preds = %31
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @MM_tostring, align 4
  %38 = call i32* @lj_meta_lookup(%struct.TYPE_7__* %35, i32* %36, i32 %37)
  store i32* %38, i32** %9, align 8
  %39 = call i32 @tvisnil(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %71, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %44, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @copyTV(%struct.TYPE_7__* %42, i32* %45, i32* %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %51, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @copyTV(%struct.TYPE_7__* %49, i32* %52, i32* %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = call i32 @lua_call(%struct.TYPE_7__* %56, i32 1, i32 1)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = getelementptr inbounds i32, i32* %64, i64 -1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 -1
  store i32* %69, i32** %67, align 8
  %70 = call i32 @copyTV(%struct.TYPE_7__* %58, i32* %65, i32* %69)
  store i32* null, i32** %4, align 8
  br label %75

71:                                               ; preds = %34, %31
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32* @lj_strfmt_obj(%struct.TYPE_7__* %72, i32* %73)
  store i32* %74, i32** %4, align 8
  br label %75

75:                                               ; preds = %71, %41, %28
  %76 = load i32*, i32** %4, align 8
  ret i32* %76
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @LJ_LIKELY(i32) #1

declare dso_local i32 @tvisstr(i32*) #1

declare dso_local i32* @strV(i32*) #1

declare dso_local i32 @tvisnil(i32*) #1

declare dso_local i32* @lj_meta_lookup(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @copyTV(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @lua_call(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32* @lj_strfmt_obj(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
