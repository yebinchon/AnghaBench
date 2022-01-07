; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/opengl32/extr_sw_pixelformat.c_test_bitmap_colors.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/opengl32/extr_sw_pixelformat.c_test_bitmap_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_color = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"DescribePixelFormat failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Number of pixel formats changed!\0A\00", align 1
@PFD_GENERIC_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"No generic pixel format!\0A\00", align 1
@test_depths = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"We didn't test all generic formats : tested %u, total %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.test_color**)* @test_bitmap_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bitmap_colors(i32 %0, %struct.test_color** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.test_color**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.test_color** %1, %struct.test_color*** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @DescribePixelFormat(i32 %11, i32 0, i32 0, %struct.TYPE_3__* null)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %17

17:                                               ; preds = %37, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @DescribePixelFormat(i32 %22, i32 %23, i32 4, %struct.TYPE_3__* %8)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PFD_GENERIC_FORMAT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %40

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %17

40:                                               ; preds = %35, %17
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %106, %40
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %49, label %109

49:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %74, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** @test_depths, align 8
  %53 = call i32 @ARRAY_SIZE(i32* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %50
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = load %struct.test_color**, %struct.test_color*** %4, align 8
  %61 = getelementptr inbounds %struct.test_color*, %struct.test_color** %60, i64 0
  %62 = load %struct.test_color*, %struct.test_color** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.test_color, %struct.test_color* %62, i64 %64
  %66 = load i32*, i32** @test_depths, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TRUE, align 4
  %72 = load i32, i32* @FALSE, align 4
  %73 = call i32 @test_format(i32 %56, i32 %57, i32 %58, %struct.test_color* %65, i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %55
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %50

77:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %102, %77
  %79 = load i32, i32* %10, align 4
  %80 = load i32*, i32** @test_depths, align 8
  %81 = call i32 @ARRAY_SIZE(i32* %80)
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %78
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  %88 = load %struct.test_color**, %struct.test_color*** %4, align 8
  %89 = getelementptr inbounds %struct.test_color*, %struct.test_color** %88, i64 0
  %90 = load %struct.test_color*, %struct.test_color** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.test_color, %struct.test_color* %90, i64 %92
  %94 = load i32*, i32** @test_depths, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @TRUE, align 4
  %100 = load i32, i32* @TRUE, align 4
  %101 = call i32 @test_format(i32 %84, i32 %85, i32 %86, %struct.test_color* %93, i32 %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %83
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %78

105:                                              ; preds = %78
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %46

109:                                              ; preds = %46
  %110 = load %struct.test_color**, %struct.test_color*** %4, align 8
  %111 = getelementptr inbounds %struct.test_color*, %struct.test_color** %110, i32 1
  store %struct.test_color** %111, %struct.test_color*** %4, align 8
  br label %112

112:                                              ; preds = %152, %109
  %113 = load %struct.test_color**, %struct.test_color*** %4, align 8
  %114 = load %struct.test_color*, %struct.test_color** %113, align 8
  %115 = icmp ne %struct.test_color* %114, null
  br i1 %115, label %116, label %155

116:                                              ; preds = %112
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %149, %116
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %118, 3
  br i1 %119, label %120, label %152

120:                                              ; preds = %117
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %145, %120
  %122 = load i32, i32* %10, align 4
  %123 = load i32*, i32** @test_depths, align 8
  %124 = call i32 @ARRAY_SIZE(i32* %123)
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %121
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  %131 = load %struct.test_color**, %struct.test_color*** %4, align 8
  %132 = getelementptr inbounds %struct.test_color*, %struct.test_color** %131, i64 0
  %133 = load %struct.test_color*, %struct.test_color** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.test_color, %struct.test_color* %133, i64 %135
  %137 = load i32*, i32** @test_depths, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @FALSE, align 4
  %143 = load i32, i32* @FALSE, align 4
  %144 = call i32 @test_format(i32 %127, i32 %128, i32 %129, %struct.test_color* %136, i32 %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %126
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %121

148:                                              ; preds = %121
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %117

152:                                              ; preds = %117
  %153 = load %struct.test_color**, %struct.test_color*** %4, align 8
  %154 = getelementptr inbounds %struct.test_color*, %struct.test_color** %153, i32 1
  store %struct.test_color** %154, %struct.test_color*** %4, align 8
  br label %112

155:                                              ; preds = %112
  %156 = load i32, i32* %6, align 4
  %157 = sub nsw i32 %156, 1
  %158 = load i32, i32* %5, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %5, align 4
  %163 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %161, i32 %162)
  ret void
}

declare dso_local i32 @DescribePixelFormat(i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @test_format(i32, i32, i32, %struct.test_color*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
