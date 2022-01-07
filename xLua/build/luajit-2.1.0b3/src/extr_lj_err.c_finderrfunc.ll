; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_err.c_finderrfunc.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_err.c_finderrfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@LJ_FR2 = common dso_local global i32 0, align 4
@FF_xpcall = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*)* @finderrfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @finderrfunc(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 -1
  store i32* %10, i32** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32* @tvref(i32 %13)
  %15 = load i32, i32* @LJ_FR2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32* %17, i32** %5, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %115, %1
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ugt i32* %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i1 [ false, %21 ], [ %27, %25 ]
  br i1 %29, label %30, label %116

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %58, %30
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @cframe_raw(i8* %32)
  %34 = call i32 @cframe_nres(i8* %33)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %31
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @cframe_nres(i8* %39)
  %41 = sub nsw i32 0, %40
  %42 = call i32* @restorestack(%struct.TYPE_8__* %38, i32 %41)
  %43 = icmp uge i32* %37, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %59

45:                                               ; preds = %36
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @cframe_errfunc(i8* %46)
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @cframe_errfunc(i8* %50)
  store i64 %51, i64* %2, align 8
  br label %117

52:                                               ; preds = %45
  %53 = load i8*, i8** %6, align 8
  %54 = call i8* @cframe_prev(i8* %53)
  store i8* %54, i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i64 0, i64* %2, align 8
  br label %117

58:                                               ; preds = %52
  br label %31

59:                                               ; preds = %44, %31
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @frame_typep(i32* %60)
  switch i32 %61, label %113 [
    i32 132, label %62
    i32 131, label %62
    i32 135, label %65
    i32 128, label %68
    i32 134, label %71
    i32 133, label %81
    i32 130, label %96
    i32 129, label %96
  ]

62:                                               ; preds = %59, %59
  %63 = load i32*, i32** %4, align 8
  %64 = call i32* @frame_prevl(i32* %63)
  store i32* %64, i32** %4, align 8
  br label %115

65:                                               ; preds = %59
  %66 = load i8*, i8** %6, align 8
  %67 = call i8* @cframe_prev(i8* %66)
  store i8* %67, i8** %6, align 8
  br label %68

68:                                               ; preds = %59, %65
  %69 = load i32*, i32** %4, align 8
  %70 = call i32* @frame_prevd(i32* %69)
  store i32* %70, i32** %4, align 8
  br label %115

71:                                               ; preds = %59
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @frame_iscont_fficb(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i8*, i8** %6, align 8
  %77 = call i8* @cframe_prev(i8* %76)
  store i8* %77, i8** %6, align 8
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i32*, i32** %4, align 8
  %80 = call i32* @frame_prevd(i32* %79)
  store i32* %80, i32** %4, align 8
  br label %115

81:                                               ; preds = %59
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @cframe_canyield(i8* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i64 0, i64* %2, align 8
  br label %117

86:                                               ; preds = %81
  %87 = load i8*, i8** %6, align 8
  %88 = call i64 @cframe_errfunc(i8* %87)
  %89 = icmp sge i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i8*, i8** %6, align 8
  %92 = call i64 @cframe_errfunc(i8* %91)
  store i64 %92, i64* %2, align 8
  br label %117

93:                                               ; preds = %86
  %94 = load i32*, i32** %4, align 8
  %95 = call i32* @frame_prevd(i32* %94)
  store i32* %95, i32** %4, align 8
  br label %115

96:                                               ; preds = %59, %59
  %97 = load i32*, i32** %4, align 8
  %98 = call i32* @frame_prevd(i32* %97)
  %99 = call %struct.TYPE_9__* @frame_func(i32* %98)
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @FF_xpcall, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %96
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = call i32* @frame_prevd(i32* %107)
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = ptrtoint i32* %109 to i32
  %111 = call i64 @savestack(%struct.TYPE_8__* %106, i32 %110)
  store i64 %111, i64* %2, align 8
  br label %117

112:                                              ; preds = %96
  store i64 0, i64* %2, align 8
  br label %117

113:                                              ; preds = %59
  %114 = call i32 @lua_assert(i32 0)
  store i64 0, i64* %2, align 8
  br label %117

115:                                              ; preds = %93, %78, %68, %62
  br label %21

116:                                              ; preds = %28
  store i64 0, i64* %2, align 8
  br label %117

117:                                              ; preds = %116, %113, %112, %105, %90, %85, %57, %49
  %118 = load i64, i64* %2, align 8
  ret i64 %118
}

declare dso_local i32* @tvref(i32) #1

declare dso_local i32 @cframe_nres(i8*) #1

declare dso_local i8* @cframe_raw(i8*) #1

declare dso_local i32* @restorestack(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @cframe_errfunc(i8*) #1

declare dso_local i8* @cframe_prev(i8*) #1

declare dso_local i32 @frame_typep(i32*) #1

declare dso_local i32* @frame_prevl(i32*) #1

declare dso_local i32* @frame_prevd(i32*) #1

declare dso_local i32 @frame_iscont_fficb(i32*) #1

declare dso_local i32 @cframe_canyield(i8*) #1

declare dso_local %struct.TYPE_9__* @frame_func(i32*) #1

declare dso_local i64 @savestack(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
