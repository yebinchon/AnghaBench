; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_strscan.c_strscan_bin.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_strscan.c_strscan_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@STRSCAN_ERROR = common dso_local global i32 0, align 4
@STRSCAN_OPT_TONUM = common dso_local global i32 0, align 4
@STRSCAN_OPT_C = common dso_local global i32 0, align 4
@STRSCAN_NUM = common dso_local global i32 0, align 4
@c0000000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32, i32, i32, i32, i32)* @strscan_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strscan_bin(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %7
  %21 = load i32, i32* %15, align 4
  %22 = icmp sgt i32 %21, 64
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %7
  %24 = load i32, i32* @STRSCAN_ERROR, align 4
  store i32 %24, i32* %8, align 4
  br label %133

25:                                               ; preds = %20
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %17, align 4
  br label %27

27:                                               ; preds = %44, %25
  %28 = load i32, i32* %17, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, -2
  %34 = icmp ne i32 %33, 48
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @STRSCAN_ERROR, align 4
  store i32 %36, i32* %8, align 4
  br label %133

37:                                               ; preds = %30
  %38 = load i32, i32* %16, align 4
  %39 = shl i32 %38, 1
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 1
  %43 = or i32 %39, %42
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %17, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %17, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %9, align 8
  br label %27

49:                                               ; preds = %27
  %50 = load i32, i32* %11, align 4
  switch i32 %50, label %111 [
    i32 130, label %51
    i32 129, label %81
    i32 131, label %98
    i32 128, label %98
  ]

51:                                               ; preds = %49
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @STRSCAN_OPT_TONUM, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %14, align 4
  %59 = add i32 -2147483648, %58
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %16, align 4
  %66 = sub nsw i32 0, %65
  br label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %16, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i32 [ %66, %64 ], [ %68, %67 ]
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  store i32 130, i32* %8, align 4
  br label %133

73:                                               ; preds = %56, %51
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @STRSCAN_OPT_C, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @STRSCAN_NUM, align 4
  store i32 %79, i32* %11, align 4
  br label %112

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %49, %80
  %82 = load i32, i32* %15, align 4
  %83 = icmp sgt i32 %82, 32
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @STRSCAN_ERROR, align 4
  store i32 %85, i32* %8, align 4
  br label %133

86:                                               ; preds = %81
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %16, align 4
  %91 = sub nsw i32 0, %90
  br label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %16, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = phi i32 [ %91, %89 ], [ %93, %92 ]
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  store i32 129, i32* %8, align 4
  br label %133

98:                                               ; preds = %49, %49
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %16, align 4
  %103 = sub nsw i32 0, %102
  br label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %16, align 4
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi i32 [ %103, %101 ], [ %105, %104 ]
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %8, align 4
  br label %133

111:                                              ; preds = %49
  br label %112

112:                                              ; preds = %111, %78
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* @c0000000, align 4
  %115 = call i32 @U64x(i32 %114, i32 0)
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %112
  %119 = load i32, i32* %16, align 4
  %120 = ashr i32 %119, 2
  %121 = load i32, i32* %16, align 4
  %122 = and i32 %121, 3
  %123 = or i32 %120, %122
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 2
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %118, %112
  %127 = load i32, i32* %16, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @strscan_double(i32 %127, %struct.TYPE_4__* %128, i32 %129, i32 %130)
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %126, %106, %94, %84, %69, %35, %23
  %134 = load i32, i32* %8, align 4
  ret i32 %134
}

declare dso_local i32 @U64x(i32, i32) #1

declare dso_local i32 @strscan_double(i32, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
