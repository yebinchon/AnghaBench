; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_fs_fixup_line.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_fs_fixup_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_6__*, i8*, i32)* @fs_fixup_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_fixup_line(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 1
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %9, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %28, 1
  store i64 %29, i64* %12, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @setmref(i32 %40, i8* %41)
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 256
  %45 = zext i1 %44 to i32
  %46 = call i64 @LJ_LIKELY(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %4
  %49 = load i8*, i8** %7, align 8
  %50 = bitcast i8* %49 to i64*
  store i64* %50, i64** %13, align 8
  br label %51

51:                                               ; preds = %73, %48
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %62, 256
  br label %64

64:                                               ; preds = %61, %51
  %65 = phi i1 [ false, %51 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @lua_assert(i32 %66)
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64*, i64** %13, align 8
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  store i64 %69, i64* %72, align 8
  br label %73

73:                                               ; preds = %64
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %11, align 8
  %76 = load i64, i64* %12, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %51, label %78

78:                                               ; preds = %73
  br label %143

79:                                               ; preds = %4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 65536
  %82 = zext i1 %81 to i32
  %83 = call i64 @LJ_LIKELY(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %79
  %86 = load i8*, i8** %7, align 8
  %87 = bitcast i8* %86 to i64*
  store i64* %87, i64** %15, align 8
  br label %88

88:                                               ; preds = %110, %85
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %90 = load i64, i64* %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = sub nsw i32 %93, %94
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load i32, i32* %16, align 4
  %100 = icmp slt i32 %99, 65536
  br label %101

101:                                              ; preds = %98, %88
  %102 = phi i1 [ false, %88 ], [ %100, %98 ]
  %103 = zext i1 %102 to i32
  %104 = call i32 @lua_assert(i32 %103)
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64*, i64** %15, align 8
  %108 = load i64, i64* %11, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  store i64 %106, i64* %109, align 8
  br label %110

110:                                              ; preds = %101
  %111 = load i64, i64* %11, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %11, align 8
  %113 = load i64, i64* %12, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %88, label %115

115:                                              ; preds = %110
  br label %142

116:                                              ; preds = %79
  %117 = load i8*, i8** %7, align 8
  %118 = bitcast i8* %117 to i64*
  store i64* %118, i64** %17, align 8
  br label %119

119:                                              ; preds = %136, %116
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %121 = load i64, i64* %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %10, align 4
  %126 = sub nsw i32 %124, %125
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = icmp sge i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @lua_assert(i32 %129)
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = load i64*, i64** %17, align 8
  %134 = load i64, i64* %11, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  store i64 %132, i64* %135, align 8
  br label %136

136:                                              ; preds = %119
  %137 = load i64, i64* %11, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %11, align 8
  %139 = load i64, i64* %12, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %119, label %141

141:                                              ; preds = %136
  br label %142

142:                                              ; preds = %141, %115
  br label %143

143:                                              ; preds = %142, %78
  ret void
}

declare dso_local i32 @setmref(i32, i8*) #1

declare dso_local i64 @LJ_LIKELY(i32) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
