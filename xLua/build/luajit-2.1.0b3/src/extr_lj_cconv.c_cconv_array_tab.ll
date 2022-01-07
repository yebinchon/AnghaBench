; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cconv.c_cconv_array_tab.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cconv.c_cconv_array_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@CTSIZE_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i32*, i32*, i32)* @cconv_array_tab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cconv_array_tab(i32* %0, %struct.TYPE_7__* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = call %struct.TYPE_7__* @ctype_rawchild(i32* %17, %struct.TYPE_7__* %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %12, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %11, align 8
  br label %26

26:                                               ; preds = %62, %5
  %27 = load i32*, i32** %9, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i64 @lj_tab_getint(i32* %27, i64 %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %16, align 8
  %31 = load i32*, i32** %16, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32*, i32** %16, align 8
  %35 = call i64 @tvisnil(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33, %26
  %38 = load i64, i64* %11, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %62

41:                                               ; preds = %37
  br label %65

42:                                               ; preds = %33
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = call i32 @cconv_err_initov(i32* %47, %struct.TYPE_7__* %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i64, i64* %15, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32*, i32** %16, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @lj_cconv_ct_tv(i32* %51, %struct.TYPE_7__* %52, i32* %55, i32* %56, i32 %57)
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* %15, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %15, align 8
  br label %62

62:                                               ; preds = %50, %40
  %63 = load i64, i64* %11, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %11, align 8
  br label %26

65:                                               ; preds = %41
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* @CTSIZE_INVALID, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %99

69:                                               ; preds = %65
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %85, %73
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* %13, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load i32*, i32** %8, align 8
  %80 = load i64, i64* %15, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32*, i32** %8, align 8
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @memcpy(i32* %81, i32* %82, i64 %83)
  br label %85

85:                                               ; preds = %78
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* %15, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %15, align 8
  br label %74

89:                                               ; preds = %74
  br label %98

90:                                               ; preds = %69
  %91 = load i32*, i32** %8, align 8
  %92 = load i64, i64* %15, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* %15, align 8
  %96 = sub nsw i64 %94, %95
  %97 = call i32 @memset(i32* %93, i32 0, i64 %96)
  br label %98

98:                                               ; preds = %90, %89
  br label %99

99:                                               ; preds = %98, %65
  ret void
}

declare dso_local %struct.TYPE_7__* @ctype_rawchild(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @lj_tab_getint(i32*, i64) #1

declare dso_local i64 @tvisnil(i32*) #1

declare dso_local i32 @cconv_err_initov(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @lj_cconv_ct_tv(i32*, %struct.TYPE_7__*, i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
