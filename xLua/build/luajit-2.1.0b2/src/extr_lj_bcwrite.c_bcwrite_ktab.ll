; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_bcwrite.c_bcwrite_ktab.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_bcwrite.c_bcwrite_ktab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*, %struct.TYPE_9__*)* @bcwrite_ktab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcwrite_ktab(%struct.TYPE_10__* %0, i8* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @tvref(i32 %25)
  store i32* %26, i32** %10, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %44, %22
  %33 = load i32, i32* %9, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @tvisnil(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %47

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %9, align 4
  br label %32

47:                                               ; preds = %42, %32
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %47, %3
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %84

56:                                               ; preds = %51
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %12, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.TYPE_8__* @noderef(i32 %62)
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %13, align 8
  store i64 0, i64* %11, align 8
  br label %64

64:                                               ; preds = %80, %56
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp ule i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = call i32 @tvisnil(i32* %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %68
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %11, align 8
  br label %64

83:                                               ; preds = %64
  br label %84

84:                                               ; preds = %83, %51
  %85 = load i8*, i8** %5, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i8* @lj_strfmt_wuleb128(i8* %85, i64 %86)
  store i8* %87, i8** %5, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i8* @lj_strfmt_wuleb128(i8* %88, i64 %89)
  store i8* %90, i8** %5, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @setsbufP(i32* %92, i8* %93)
  %95 = load i64, i64* %7, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %84
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32* @tvref(i32 %100)
  store i32* %101, i32** %15, align 8
  store i64 0, i64* %14, align 8
  br label %102

102:                                              ; preds = %110, %97
  %103 = load i64, i64* %14, align 8
  %104 = load i64, i64* %7, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %102
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = call i32 @bcwrite_ktabk(%struct.TYPE_10__* %107, i32* %108, i32 1)
  br label %110

110:                                              ; preds = %106
  %111 = load i64, i64* %14, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %14, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %15, align 8
  br label %102

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115, %84
  %117 = load i64, i64* %8, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %153

119:                                              ; preds = %116
  %120 = load i64, i64* %8, align 8
  store i64 %120, i64* %16, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call %struct.TYPE_8__* @noderef(i32 %123)
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %127
  store %struct.TYPE_8__* %128, %struct.TYPE_8__** %17, align 8
  br label %129

129:                                              ; preds = %149, %119
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = call i32 @tvisnil(i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %148, label %134

134:                                              ; preds = %129
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = call i32 @bcwrite_ktabk(%struct.TYPE_10__* %135, i32* %137, i32 0)
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = call i32 @bcwrite_ktabk(%struct.TYPE_10__* %139, i32* %141, i32 1)
  %143 = load i64, i64* %16, align 8
  %144 = add i64 %143, -1
  store i64 %144, i64* %16, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %134
  br label %152

147:                                              ; preds = %134
  br label %148

148:                                              ; preds = %147, %129
  br label %149

149:                                              ; preds = %148
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 -1
  store %struct.TYPE_8__* %151, %struct.TYPE_8__** %17, align 8
  br label %129

152:                                              ; preds = %146
  br label %153

153:                                              ; preds = %152, %116
  ret void
}

declare dso_local i32* @tvref(i32) #1

declare dso_local i32 @tvisnil(i32*) #1

declare dso_local %struct.TYPE_8__* @noderef(i32) #1

declare dso_local i8* @lj_strfmt_wuleb128(i8*, i64) #1

declare dso_local i32 @setsbufP(i32*, i8*) #1

declare dso_local i32 @bcwrite_ktabk(%struct.TYPE_10__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
