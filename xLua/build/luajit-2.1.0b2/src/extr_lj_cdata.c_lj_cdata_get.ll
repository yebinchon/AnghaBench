; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cdata.c_lj_cdata_get.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cdata.c_lj_cdata_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }

@CTSIZE_PTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_cdata_get(i32* %0, %struct.TYPE_9__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @ctype_isconstval(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = call i32 @cdata_getconst(i32* %17, i32* %18, %struct.TYPE_9__* %19)
  store i32 0, i32* %5, align 4
  br label %98

21:                                               ; preds = %4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @ctype_isbitfield(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @lj_cconv_tv_bf(i32* %28, %struct.TYPE_9__* %29, i32* %30, i32* %31)
  store i32 %32, i32* %5, align 4
  br label %98

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @ctype_ispointer(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @ctype_isfield(i32 %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %40, %34
  %47 = phi i1 [ true, %34 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @lua_assert(i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ctype_cid(i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call %struct.TYPE_9__* @ctype_get(i32* %54, i32 %55)
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %7, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @ctype_isref(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %46
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CTSIZE_PTR, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @lua_assert(i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = bitcast i32* %70 to i32**
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %9, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ctype_cid(i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call %struct.TYPE_9__* @ctype_get(i32* %77, i32 %78)
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %7, align 8
  br label %80

80:                                               ; preds = %62, %46
  br label %81

81:                                               ; preds = %87, %80
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @ctype_isattrib(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i32*, i32** %6, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %90 = call %struct.TYPE_9__* @ctype_child(i32* %88, %struct.TYPE_9__* %89)
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %7, align 8
  br label %81

91:                                               ; preds = %81
  %92 = load i32*, i32** %6, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @lj_cconv_tv_ct(i32* %92, %struct.TYPE_9__* %93, i32 %94, i32* %95, i32* %96)
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %91, %27, %16
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i64 @ctype_isconstval(i32) #1

declare dso_local i32 @cdata_getconst(i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @ctype_isbitfield(i32) #1

declare dso_local i32 @lj_cconv_tv_bf(i32*, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @ctype_ispointer(i32) #1

declare dso_local i64 @ctype_isfield(i32) #1

declare dso_local i32 @ctype_cid(i32) #1

declare dso_local %struct.TYPE_9__* @ctype_get(i32*, i32) #1

declare dso_local i64 @ctype_isref(i32) #1

declare dso_local i64 @ctype_isattrib(i32) #1

declare dso_local %struct.TYPE_9__* @ctype_child(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @lj_cconv_tv_ct(i32*, %struct.TYPE_9__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
