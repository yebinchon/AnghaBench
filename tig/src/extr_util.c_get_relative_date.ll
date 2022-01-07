; ModuleID = '/home/carl/AnghaBench/tig/src/extr_util.c_get_relative_date.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_util.c_get_relative_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32 }
%struct.time = type { i64, i64 }
%struct.timeval = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@reldate = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%s%ld%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%ld %s%s %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ago\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ahead\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.time*, i8*, i64, i32)* @get_relative_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_relative_date(%struct.time* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.time*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.time* %0, %struct.time** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.time*, %struct.time** %6, align 8
  %15 = getelementptr inbounds %struct.time, %struct.time* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.time*, %struct.time** %6, align 8
  %18 = getelementptr inbounds %struct.time, %struct.time* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  store i64 %20, i64* %11, align 8
  %21 = call i64 @time_now(%struct.timeval* %10, i32* null)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %129

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %30, %32
  br label %39

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = sub nsw i64 %36, %37
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i64 [ %33, %29 ], [ %38, %34 ]
  store i64 %40, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %125, %39
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @reldate, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %128

46:                                               ; preds = %41
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @reldate, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %47, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @reldate, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %125

64:                                               ; preds = %55, %46
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @reldate, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %12, align 8
  %72 = sdiv i64 %71, %70
  store i64 %72, i64* %12, align 8
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %64
  %76 = load i8*, i8** %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp sge i64 %79, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %84 = ptrtoint i8* %83 to i64
  %85 = load i64, i64* %12, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @reldate, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 (i8*, i64, i32*, i8*, i64, i64, i8*, ...) @string_nformat(i8* %76, i64 %77, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %84, i64 %85, i8* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %75
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %129

97:                                               ; preds = %75
  br label %123

98:                                               ; preds = %64
  %99 = load i8*, i8** %7, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** @reldate, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %12, align 8
  %110 = icmp sgt i64 %109, 1
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %113 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %11, align 8
  %116 = icmp sge i64 %114, %115
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %119 = call i32 (i8*, i64, i32*, i8*, i64, i64, i8*, ...) @string_nformat(i8* %99, i64 %100, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %101, i64 %108, i8* %112, i8* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %98
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %129

122:                                              ; preds = %98
  br label %123

123:                                              ; preds = %122, %97
  %124 = load i8*, i8** %7, align 8
  store i8* %124, i8** %5, align 8
  br label %129

125:                                              ; preds = %63
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %41

128:                                              ; preds = %41
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %129

129:                                              ; preds = %128, %123, %121, %96, %23
  %130 = load i8*, i8** %5, align 8
  ret i8* %130
}

declare dso_local i64 @time_now(%struct.timeval*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @string_nformat(i8*, i64, i32*, i8*, i64, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
