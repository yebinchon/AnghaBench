; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cconv.c_cconv_array_init.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cconv.c_cconv_array_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i64, i32*, i32*, i64)* @cconv_array_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cconv_array_init(i32* %0, %struct.TYPE_7__* %1, i64 %2, i32* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = call %struct.TYPE_7__* @ctype_rawchild(i32* %17, %struct.TYPE_7__* %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %13, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %15, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %15, align 8
  %25 = mul nsw i64 %23, %24
  %26 = load i64, i64* %9, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = call i32 @cconv_err_initov(i32* %29, %struct.TYPE_7__* %30)
  br label %32

32:                                               ; preds = %28, %6
  store i64 0, i64* %16, align 8
  store i64 0, i64* %14, align 8
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i64, i64* %16, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i64, i64* %14, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32*, i32** %11, align 8
  %44 = load i64, i64* %16, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = call i32 @lj_cconv_ct_tv(i32* %38, %struct.TYPE_7__* %39, i32* %42, i32* %45, i32 0)
  br label %47

47:                                               ; preds = %37
  %48 = load i64, i64* %16, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %16, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* %14, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %14, align 8
  br label %33

53:                                               ; preds = %33
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %15, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %69, %57
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load i32*, i32** %10, align 8
  %64 = load i64, i64* %14, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32*, i32** %10, align 8
  %67 = load i64, i64* %15, align 8
  %68 = call i32 @memcpy(i32* %65, i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %62
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* %14, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %14, align 8
  br label %58

73:                                               ; preds = %58
  br label %82

74:                                               ; preds = %53
  %75 = load i32*, i32** %10, align 8
  %76 = load i64, i64* %14, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %14, align 8
  %80 = sub nsw i64 %78, %79
  %81 = call i32 @memset(i32* %77, i32 0, i64 %80)
  br label %82

82:                                               ; preds = %74, %73
  ret void
}

declare dso_local %struct.TYPE_7__* @ctype_rawchild(i32*, %struct.TYPE_7__*) #1

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
