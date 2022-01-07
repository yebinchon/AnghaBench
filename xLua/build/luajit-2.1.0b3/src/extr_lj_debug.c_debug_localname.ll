; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_debug.c_debug_localname.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_debug.c_debug_localname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32 }

@LJ_FR2 = common dso_local global i32 0, align 4
@NO_BCPOS = common dso_local global i64 0, align 8
@PROTO_VARARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"(*vararg)\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"(*temporary)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, %struct.TYPE_10__*, i8**, i32)* @debug_localname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @debug_localname(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 65535
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = ashr i32 %25, 16
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32* @tvref(i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32* %33, i32** %12, align 8
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %4
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  br label %42

41:                                               ; preds = %4
  br label %42

42:                                               ; preds = %41, %36
  %43 = phi i32* [ %40, %36 ], [ null, %41 ]
  store i32* %43, i32** %13, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = call i32* @frame_func(i32* %44)
  store i32* %45, i32** %14, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = call i64 @debug_framepc(%struct.TYPE_9__* %46, i32* %47, i32* %48)
  store i64 %49, i64* %15, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %42
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @LJ_FR2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32* %58, i32** %13, align 8
  br label %59

59:                                               ; preds = %52, %42
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %108

62:                                               ; preds = %59
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* @NO_BCPOS, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %107

66:                                               ; preds = %62
  %67 = load i32*, i32** %14, align 8
  %68 = call %struct.TYPE_11__* @funcproto(i32* %67)
  store %struct.TYPE_11__* %68, %struct.TYPE_11__** %16, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PROTO_VARARG, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %106

75:                                               ; preds = %66
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 0, %79
  %81 = add nsw i32 %78, %80
  store i32 %81, i32* %9, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = call i64 @frame_isvarg(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %75
  %86 = load i32*, i32** %12, align 8
  store i32* %86, i32** %13, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = call i32* @frame_prevd(i32* %87)
  store i32* %88, i32** %12, align 8
  br label %89

89:                                               ; preds = %85, %75
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* @LJ_FR2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32*, i32** %13, align 8
  %98 = icmp ult i32* %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %89
  %100 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %100, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32* %104, i32** %5, align 8
  br label %143

105:                                              ; preds = %89
  br label %106

106:                                              ; preds = %105, %66
  br label %107

107:                                              ; preds = %106, %62
  store i32* null, i32** %5, align 8
  br label %143

108:                                              ; preds = %59
  %109 = load i64, i64* %15, align 8
  %110 = load i64, i64* @NO_BCPOS, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load i32*, i32** %14, align 8
  %114 = call %struct.TYPE_11__* @funcproto(i32* %113)
  %115 = load i64, i64* %15, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sub nsw i32 %116, 1
  %118 = call i8* @debug_varname(%struct.TYPE_11__* %114, i64 %115, i32 %117)
  %119 = load i8**, i8*** %8, align 8
  store i8* %118, i8** %119, align 8
  %120 = icmp ne i8* %118, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %138

122:                                              ; preds = %112, %108
  %123 = load i32, i32* %9, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load i32*, i32** %12, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* @LJ_FR2, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32*, i32** %13, align 8
  %134 = icmp ult i32* %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %125
  %136 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %136, align 8
  br label %137

137:                                              ; preds = %135, %125, %122
  br label %138

138:                                              ; preds = %137, %121
  %139 = load i32*, i32** %12, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32* %142, i32** %5, align 8
  br label %143

143:                                              ; preds = %138, %107, %99
  %144 = load i32*, i32** %5, align 8
  ret i32* %144
}

declare dso_local i32* @tvref(i32) #1

declare dso_local i32* @frame_func(i32*) #1

declare dso_local i64 @debug_framepc(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @funcproto(i32*) #1

declare dso_local i64 @frame_isvarg(i32*) #1

declare dso_local i32* @frame_prevd(i32*) #1

declare dso_local i8* @debug_varname(%struct.TYPE_11__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
