; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cconv.c_lj_cconv_ct_init.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cconv.c_lj_cconv_ct_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_cconv_ct_init(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %6
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @memset(i32* %16, i32 0, i32 %17)
  br label %69

19:                                               ; preds = %6
  %20 = load i32, i32* %12, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @lj_cconv_multi_init(i32* %23, %struct.TYPE_8__* %24, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @lj_cconv_ct_tv(i32* %29, %struct.TYPE_8__* %30, i32* %31, i32* %32, i32 0)
  br label %68

34:                                               ; preds = %22, %19
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ctype_isarray(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @cconv_array_init(i32* %41, %struct.TYPE_8__* %42, i32 %43, i32* %44, i32* %45, i32 %46)
  br label %67

48:                                               ; preds = %34
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ctype_isstruct(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @cconv_struct_init(i32* %55, %struct.TYPE_8__* %56, i32 %57, i32* %58, i32* %59, i32 %60)
  br label %66

62:                                               ; preds = %48
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = call i32 @cconv_err_initov(i32* %63, %struct.TYPE_8__* %64)
  br label %66

66:                                               ; preds = %62, %54
  br label %67

67:                                               ; preds = %66, %40
  br label %68

68:                                               ; preds = %67, %28
  br label %69

69:                                               ; preds = %68, %15
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @lj_cconv_multi_init(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @lj_cconv_ct_tv(i32*, %struct.TYPE_8__*, i32*, i32*, i32) #1

declare dso_local i64 @ctype_isarray(i32) #1

declare dso_local i32 @cconv_array_init(i32*, %struct.TYPE_8__*, i32, i32*, i32*, i32) #1

declare dso_local i64 @ctype_isstruct(i32) #1

declare dso_local i32 @cconv_struct_init(i32*, %struct.TYPE_8__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @cconv_err_initov(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
