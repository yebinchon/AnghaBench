; ModuleID = '/home/carl/AnghaBench/redis/src/extr_lolwut5.c_renderCanvas.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_lolwut5.c_renderCanvas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @renderCanvas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renderCanvas(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8], align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %8 = call i32 (...) @sdsempty()
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %125, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %128

15:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %111, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %114

22:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @lwGetPixel(%struct.TYPE_4__* %23, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i64 @lwGetPixel(%struct.TYPE_4__* %32, i32 %33, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, 2
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 2
  %46 = call i64 @lwGetPixel(%struct.TYPE_4__* %42, i32 %43, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %48, %41
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @lwGetPixel(%struct.TYPE_4__* %52, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, 8
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %51
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i64 @lwGetPixel(%struct.TYPE_4__* %62, i32 %64, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, 16
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %69, %61
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 2
  %78 = call i64 @lwGetPixel(%struct.TYPE_4__* %73, i32 %75, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, 32
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %80, %72
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 3
  %88 = call i64 @lwGetPixel(%struct.TYPE_4__* %84, i32 %85, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, 64
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %83
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 3
  %99 = call i64 @lwGetPixel(%struct.TYPE_4__* %94, i32 %96, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i32, i32* %6, align 4
  %103 = or i32 %102, 128
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %101, %93
  %105 = load i32, i32* %6, align 4
  %106 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %107 = call i32 @lwTranslatePixelsGroup(i32 %105, i8* %106)
  %108 = load i32, i32* %3, align 4
  %109 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %110 = call i32 @sdscatlen(i32 %108, i8* %109, i32 3)
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 2
  store i32 %113, i32* %5, align 4
  br label %16

114:                                              ; preds = %16
  %115 = load i32, i32* %4, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %118, 1
  %120 = icmp ne i32 %115, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @sdscatlen(i32 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %121, %114
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 4
  store i32 %127, i32* %4, align 4
  br label %9

128:                                              ; preds = %9
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @sdsempty(...) #1

declare dso_local i64 @lwGetPixel(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @lwTranslatePixelsGroup(i32, i8*) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
