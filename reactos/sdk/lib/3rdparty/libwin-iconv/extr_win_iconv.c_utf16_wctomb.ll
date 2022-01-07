; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_utf16_wctomb.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_utf16_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@FLAG_USE_BOM = common dso_local global i32 0, align 4
@UNICODE_MODE_BOM_DONE = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\FF\FE\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\FE\FF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32*, i32)* @utf16_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf16_wctomb(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @FLAG_USE_BOM, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %69

19:                                               ; preds = %5
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @UNICODE_MODE_BOM_DONE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %69, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @UNICODE_MODE_BOM_DONE, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @E2BIG, align 4
  %36 = call i32 @seterror(i32 %35)
  store i32 %36, i32* %6, align 4
  br label %171

37:                                               ; preds = %26
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1200
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @memcpy(i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %54

45:                                               ; preds = %37
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1201
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @memcpy(i32* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %42
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %11, align 4
  %61 = sub nsw i32 %60, 2
  %62 = call i32 @utf16_wctomb(%struct.TYPE_3__* %55, i32* %56, i32 %57, i32* %59, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  store i32 -1, i32* %6, align 4
  br label %171

66:                                               ; preds = %54
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 2
  store i32 %68, i32* %6, align 4
  br label %171

69:                                               ; preds = %19, %5
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @E2BIG, align 4
  %74 = call i32 @seterror(i32 %73)
  store i32 %74, i32* %6, align 4
  br label %171

75:                                               ; preds = %69
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1200
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 255
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 65280
  %91 = ashr i32 %90, 8
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 %91, i32* %93, align 4
  br label %114

94:                                               ; preds = %75
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 1201
  br i1 %98, label %99, label %113

99:                                               ; preds = %94
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 65280
  %104 = ashr i32 %103, 8
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %104, i32* %106, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 255
  %111 = load i32*, i32** %10, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %99, %94
  br label %114

114:                                              ; preds = %113, %80
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp sle i32 55296, %117
  br i1 %118, label %119, label %170

119:                                              ; preds = %114
  %120 = load i32*, i32** %8, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp sle i32 %122, 56319
  br i1 %123, label %124, label %170

124:                                              ; preds = %119
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %125, 4
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* @E2BIG, align 4
  %129 = call i32 @seterror(i32 %128)
  store i32 %129, i32* %6, align 4
  br label %171

130:                                              ; preds = %124
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 1200
  br i1 %134, label %135, label %149

135:                                              ; preds = %130
  %136 = load i32*, i32** %8, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 255
  %140 = load i32*, i32** %10, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  store i32 %139, i32* %141, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 65280
  %146 = ashr i32 %145, 8
  %147 = load i32*, i32** %10, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 3
  store i32 %146, i32* %148, align 4
  br label %169

149:                                              ; preds = %130
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 1201
  br i1 %153, label %154, label %168

154:                                              ; preds = %149
  %155 = load i32*, i32** %8, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 65280
  %159 = ashr i32 %158, 8
  %160 = load i32*, i32** %10, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  store i32 %159, i32* %161, align 4
  %162 = load i32*, i32** %8, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 255
  %166 = load i32*, i32** %10, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 3
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %154, %149
  br label %169

169:                                              ; preds = %168, %135
  store i32 4, i32* %6, align 4
  br label %171

170:                                              ; preds = %119, %114
  store i32 2, i32* %6, align 4
  br label %171

171:                                              ; preds = %170, %169, %127, %72, %66, %65, %34
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local i32 @seterror(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
