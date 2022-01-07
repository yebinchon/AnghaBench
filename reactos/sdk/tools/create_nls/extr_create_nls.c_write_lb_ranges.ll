; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/create_nls/extr_create_nls.c_write_lb_ranges.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/create_nls/extr_create_nls.c_write_lb_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@MAX_LEADBYTES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i64*)* @write_lb_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_lb_ranges(i32* %0, %struct.TYPE_3__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca [256 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca [256 x i64], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = getelementptr inbounds [256 x i64], [256 x i64]* %10, i64 0, i64 0
  %15 = call i32 @memset(i64* %14, i32 0, i32 2048)
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %55, %3
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @MAX_LEADBYTES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %16
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %51, %20
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %32, %40
  br label %42

42:                                               ; preds = %31, %28
  %43 = phi i1 [ false, %28 ], [ %41, %31 ]
  br i1 %43, label %44, label %54

44:                                               ; preds = %42
  %45 = load i64, i64* %9, align 8
  %46 = add nsw i64 %45, 256
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [256 x i64], [256 x i64]* %10, i64 0, i64 %49
  store i64 %47, i64* %50, align 8
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %28

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 2
  store i32 %57, i32* %11, align 4
  br label %16

58:                                               ; preds = %16
  %59 = getelementptr inbounds [256 x i64], [256 x i64]* %10, i64 0, i64 0
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @fwrite(i64* %59, i32 1, i32 2048, i32* %60)
  %62 = sext i32 %61 to i64
  %63 = icmp ne i64 %62, 2048
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %4, align 4
  br label %136

66:                                               ; preds = %58
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %131, %66
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @MAX_LEADBYTES, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %134

71:                                               ; preds = %67
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %127, %71
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp sle i32 %83, %91
  br label %93

93:                                               ; preds = %82, %79
  %94 = phi i1 [ false, %79 ], [ %92, %82 ]
  br i1 %94, label %95, label %130

95:                                               ; preds = %93
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @MAKEWORD(i32 0, i32 %96)
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %115, %95
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @MAKEWORD(i32 255, i32 %100)
  %102 = icmp sle i32 %99, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %98
  %104 = load i64*, i64** %7, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @MAKEWORD(i32 0, i32 %110)
  %112 = sub nsw i32 %109, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 %113
  store i64 %108, i64* %114, align 8
  br label %115

115:                                              ; preds = %103
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %98

118:                                              ; preds = %98
  %119 = getelementptr inbounds [256 x i64], [256 x i64]* %8, i64 0, i64 0
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @fwrite(i64* %119, i32 1, i32 2048, i32* %120)
  %122 = sext i32 %121 to i64
  %123 = icmp ne i64 %122, 2048
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @FALSE, align 4
  store i32 %125, i32* %4, align 4
  br label %136

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  br label %79

130:                                              ; preds = %93
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 2
  store i32 %133, i32* %11, align 4
  br label %67

134:                                              ; preds = %67
  %135 = load i32, i32* @TRUE, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %134, %124, %64
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @fwrite(i64*, i32, i32, i32*) #1

declare dso_local i32 @MAKEWORD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
