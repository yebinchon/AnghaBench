; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_qpencode.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_qpencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qpclass = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i64, i8*, i32*)* @qpencode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qpencode(i64 %0, i64* %1, i64 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i64 %0, i64* %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64*, i64** %8, align 8
  %14 = load i64, i64* %9, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %9, align 8
  %16 = getelementptr inbounds i64, i64* %13, i64 %14
  store i64 %12, i64* %16, align 8
  br label %17

17:                                               ; preds = %91, %5
  %18 = load i64, i64* %9, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %104

20:                                               ; preds = %17
  %21 = load i32*, i32** @qpclass, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %85 [
    i32 130, label %27
    i32 129, label %48
    i32 128, label %79
  ]

27:                                               ; preds = %20
  %28 = load i64, i64* %9, align 8
  %29 = icmp ult i64 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64, i64* %9, align 8
  store i64 %31, i64* %6, align 8
  br label %105

32:                                               ; preds = %27
  %33 = load i64*, i64** %8, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 10
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32*, i32** %11, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @luaL_addstring(i32* %38, i8* %39)
  store i64 0, i64* %6, align 8
  br label %105

41:                                               ; preds = %32
  %42 = load i64*, i64** %8, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @qpquote(i64 %44, i32* %45)
  br label %47

47:                                               ; preds = %41
  br label %91

48:                                               ; preds = %20
  %49 = load i64, i64* %9, align 8
  %50 = icmp ult i64 %49, 3
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %6, align 8
  br label %105

53:                                               ; preds = %48
  %54 = load i64*, i64** %8, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 13
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load i64*, i64** %8, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 10
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load i64*, i64** %8, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @qpquote(i64 %66, i32* %67)
  %69 = load i32*, i32** %11, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @luaL_addstring(i32* %69, i8* %70)
  store i64 0, i64* %6, align 8
  br label %105

72:                                               ; preds = %58, %53
  %73 = load i32*, i32** %11, align 8
  %74 = load i64*, i64** %8, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @luaL_addchar(i32* %73, i64 %76)
  br label %78

78:                                               ; preds = %72
  br label %91

79:                                               ; preds = %20
  %80 = load i64*, i64** %8, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @qpquote(i64 %82, i32* %83)
  br label %91

85:                                               ; preds = %20
  %86 = load i32*, i32** %11, align 8
  %87 = load i64*, i64** %8, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @luaL_addchar(i32* %86, i64 %89)
  br label %91

91:                                               ; preds = %85, %79, %78, %47
  %92 = load i64*, i64** %8, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %8, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  store i64 %94, i64* %96, align 8
  %97 = load i64*, i64** %8, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %8, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %9, align 8
  %103 = add i64 %102, -1
  store i64 %103, i64* %9, align 8
  br label %17

104:                                              ; preds = %17
  store i64 0, i64* %6, align 8
  br label %105

105:                                              ; preds = %104, %63, %51, %37, %30
  %106 = load i64, i64* %6, align 8
  ret i64 %106
}

declare dso_local i32 @luaL_addstring(i32*, i8*) #1

declare dso_local i32 @qpquote(i64, i32*) #1

declare dso_local i32 @luaL_addchar(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
