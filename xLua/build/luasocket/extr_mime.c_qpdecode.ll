; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_qpdecode.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_qpdecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qpunbase = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i64, i32*)* @qpdecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qpdecode(i32 %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* %8, align 8
  %15 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 %11, i32* %15, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %86 [
    i32 61, label %19
    i32 13, label %70
  ]

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %20, 3
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %5, align 8
  br label %108

24:                                               ; preds = %19
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 13
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i64 0, i64* %5, align 8
  br label %108

35:                                               ; preds = %29, %24
  %36 = load i32*, i32** @qpunbase, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i32*, i32** @qpunbase, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %50, 15
  br i1 %51, label %55, label %52

52:                                               ; preds = %35
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 15
  br i1 %54, label %55, label %60

55:                                               ; preds = %52, %35
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = bitcast i32* %57 to i8*
  %59 = call i32 @luaL_addlstring(i32* %56, i8* %58, i32 3)
  br label %69

60:                                               ; preds = %52
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %6, align 4
  %63 = shl i32 %62, 4
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %63, %64
  %66 = trunc i32 %65 to i8
  %67 = sext i8 %66 to i32
  %68 = call i32 @luaL_addchar(i32* %61, i32 %67)
  br label %69

69:                                               ; preds = %60, %55
  store i64 0, i64* %5, align 8
  br label %108

70:                                               ; preds = %4
  %71 = load i64, i64* %8, align 8
  %72 = icmp ult i64 %71, 2
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i64, i64* %8, align 8
  store i64 %74, i64* %5, align 8
  br label %108

75:                                               ; preds = %70
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32*, i32** %9, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = bitcast i32* %82 to i8*
  %84 = call i32 @luaL_addlstring(i32* %81, i8* %83, i32 2)
  br label %85

85:                                               ; preds = %80, %75
  store i64 0, i64* %5, align 8
  br label %108

86:                                               ; preds = %4
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 9
  br i1 %90, label %101, label %91

91:                                               ; preds = %86
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %94, 31
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %99, 127
  br i1 %100, label %101, label %107

101:                                              ; preds = %96, %86
  %102 = load i32*, i32** %9, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @luaL_addchar(i32* %102, i32 %105)
  br label %107

107:                                              ; preds = %101, %96, %91
  store i64 0, i64* %5, align 8
  br label %108

108:                                              ; preds = %107, %85, %73, %69, %34, %22
  %109 = load i64, i64* %5, align 8
  ret i64 %109
}

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

declare dso_local i32 @luaL_addchar(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
