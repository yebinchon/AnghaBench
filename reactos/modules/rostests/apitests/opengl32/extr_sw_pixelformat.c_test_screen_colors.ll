; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/opengl32/extr_sw_pixelformat.c_test_screen_colors.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/opengl32/extr_sw_pixelformat.c_test_screen_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_color = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to create a window.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"DescribePixelFormat failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Number of pixel formats changed!\0A\00", align 1
@PFD_GENERIC_FORMAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"No generic pixel format!\0A\00", align 1
@test_depths = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [59 x i8] c"We didn't test all generic formats : tested %u, total %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_color**)* @test_screen_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_screen_colors(%struct.test_color** %0) #0 {
  %2 = alloca %struct.test_color**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__, align 4
  store %struct.test_color** %0, %struct.test_color*** %2, align 8
  %11 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %12 = call i32* @CreateWindowA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 10, i32 10, i32 200, i32 200, i32* null, i32* null, i32* null, i32* null)
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %181

20:                                               ; preds = %1
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @GetDC(i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @DescribePixelFormat(i32 %23, i32 0, i32 0, %struct.TYPE_3__* null)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %49, %20
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @DescribePixelFormat(i32 %34, i32 %35, i32 4, %struct.TYPE_3__* %10)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PFD_GENERIC_FORMAT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %52

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %29

52:                                               ; preds = %47, %29
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %118, %52
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 3
  br i1 %60, label %61, label %121

61:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %86, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32*, i32** @test_depths, align 8
  %65 = call i32 @ARRAY_SIZE(i32* %64)
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  %72 = load %struct.test_color**, %struct.test_color*** %2, align 8
  %73 = getelementptr inbounds %struct.test_color*, %struct.test_color** %72, i64 0
  %74 = load %struct.test_color*, %struct.test_color** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.test_color, %struct.test_color* %74, i64 %76
  %78 = load i32*, i32** @test_depths, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @TRUE, align 4
  %84 = load i32, i32* @FALSE, align 4
  %85 = call i32 @test_format(i32 %68, i32 %69, i32 %70, %struct.test_color* %77, i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %67
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %62

89:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %114, %89
  %91 = load i32, i32* %7, align 4
  %92 = load i32*, i32** @test_depths, align 8
  %93 = call i32 @ARRAY_SIZE(i32* %92)
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %117

95:                                               ; preds = %90
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  %100 = load %struct.test_color**, %struct.test_color*** %2, align 8
  %101 = getelementptr inbounds %struct.test_color*, %struct.test_color** %100, i64 0
  %102 = load %struct.test_color*, %struct.test_color** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.test_color, %struct.test_color* %102, i64 %104
  %106 = load i32*, i32** @test_depths, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @TRUE, align 4
  %112 = load i32, i32* @TRUE, align 4
  %113 = call i32 @test_format(i32 %96, i32 %97, i32 %98, %struct.test_color* %105, i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %95
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %90

117:                                              ; preds = %90
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %58

121:                                              ; preds = %58
  %122 = load %struct.test_color**, %struct.test_color*** %2, align 8
  %123 = getelementptr inbounds %struct.test_color*, %struct.test_color** %122, i32 1
  store %struct.test_color** %123, %struct.test_color*** %2, align 8
  br label %124

124:                                              ; preds = %164, %121
  %125 = load %struct.test_color**, %struct.test_color*** %2, align 8
  %126 = load %struct.test_color*, %struct.test_color** %125, align 8
  %127 = icmp ne %struct.test_color* %126, null
  br i1 %127, label %128, label %167

128:                                              ; preds = %124
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %161, %128
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %130, 3
  br i1 %131, label %132, label %164

132:                                              ; preds = %129
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %157, %132
  %134 = load i32, i32* %7, align 4
  %135 = load i32*, i32** @test_depths, align 8
  %136 = call i32 @ARRAY_SIZE(i32* %135)
  %137 = icmp slt i32 %134, %136
  br i1 %137, label %138, label %160

138:                                              ; preds = %133
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* %3, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %3, align 4
  %143 = load %struct.test_color**, %struct.test_color*** %2, align 8
  %144 = getelementptr inbounds %struct.test_color*, %struct.test_color** %143, i64 0
  %145 = load %struct.test_color*, %struct.test_color** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.test_color, %struct.test_color* %145, i64 %147
  %149 = load i32*, i32** @test_depths, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @FALSE, align 4
  %155 = load i32, i32* @FALSE, align 4
  %156 = call i32 @test_format(i32 %139, i32 %140, i32 %141, %struct.test_color* %148, i32 %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %138
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %133

160:                                              ; preds = %133
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %129

164:                                              ; preds = %129
  %165 = load %struct.test_color**, %struct.test_color*** %2, align 8
  %166 = getelementptr inbounds %struct.test_color*, %struct.test_color** %165, i32 1
  store %struct.test_color** %166, %struct.test_color*** %2, align 8
  br label %124

167:                                              ; preds = %124
  %168 = load i32, i32* %3, align 4
  %169 = sub nsw i32 %168, 1
  %170 = load i32, i32* %4, align 4
  %171 = icmp eq i32 %169, %170
  %172 = zext i1 %171 to i32
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* %4, align 4
  %175 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %173, i32 %174)
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @ReleaseDC(i32* %176, i32 %177)
  %179 = load i32*, i32** %9, align 8
  %180 = call i32 @DestroyWindow(i32* %179)
  br label %181

181:                                              ; preds = %167, %15
  ret void
}

declare dso_local i32* @CreateWindowA(i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetDC(i32*) #1

declare dso_local i32 @DescribePixelFormat(i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @test_format(i32, i32, i32, %struct.test_color*, i32, i32, i32) #1

declare dso_local i32 @ReleaseDC(i32*, i32) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
