; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rax.c_raxRecursiveShow.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rax.c_raxRecursiveShow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"%c%.*s%c\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"=%p\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" `-(%c) \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" -> \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raxRecursiveShow(i32 %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 34, i32 91
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %7, align 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 34, i32 93
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %8, align 1
  %30 = load i8, i8* %7, align 1
  %31 = sext i8 %30 to i32
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i8, i8* %8, align 1
  %39 = sext i8 %38 to i32
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32* %37, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %3
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = call i32 @raxGetData(%struct.TYPE_8__* %46)
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %45, %3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %61

57:                                               ; preds = %51
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  br label %61

61:                                               ; preds = %57, %56
  %62 = phi i32 [ 1, %56 ], [ %60, %57 ]
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %66, 1
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 7, i32 4
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %65
  br label %79

79:                                               ; preds = %78, %61
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = call %struct.TYPE_8__** @raxNodeFirstChildPtr(%struct.TYPE_8__* %80)
  store %struct.TYPE_8__** %81, %struct.TYPE_8__*** %11, align 8
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %121, %79
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %124

86:                                               ; preds = %82
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  %87 = load i32, i32* %10, align 4
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %110

89:                                               ; preds = %86
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %91

91:                                               ; preds = %97, %89
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = call i32 @putchar(i8 signext 32)
  br label %97

97:                                               ; preds = %95
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %91

100:                                              ; preds = %91
  %101 = load i8*, i8** %13, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, ...) @printf(i8* %101, i32 %108)
  br label %112

110:                                              ; preds = %86
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %100
  %113 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %114 = call i32 @memcpy(%struct.TYPE_8__** %15, %struct.TYPE_8__** %113, i32 8)
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  call void @raxRecursiveShow(i32 %116, i32 %117, %struct.TYPE_8__* %118)
  %119 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %119, i32 1
  store %struct.TYPE_8__** %120, %struct.TYPE_8__*** %11, align 8
  br label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %82

124:                                              ; preds = %82
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @raxGetData(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__** @raxNodeFirstChildPtr(%struct.TYPE_8__*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__**, %struct.TYPE_8__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
