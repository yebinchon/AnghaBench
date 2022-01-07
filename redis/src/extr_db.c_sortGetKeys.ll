; ModuleID = '/home/carl/AnghaBench/redis/src/extr_db.c_sortGetKeys.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_db.c_sortGetKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redisCommand = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.anon = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"by\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"store\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sortGetKeys(%struct.redisCommand* %0, %struct.TYPE_3__** %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.redisCommand*, align 8
  %6 = alloca %struct.TYPE_3__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [4 x %struct.anon], align 16
  store %struct.redisCommand* %0, %struct.redisCommand** %5, align 8
  store %struct.TYPE_3__** %1, %struct.TYPE_3__*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.redisCommand*, %struct.redisCommand** %5, align 8
  %16 = call i32 @UNUSED(%struct.redisCommand* %15)
  store i32 0, i32* %11, align 4
  %17 = call i32* @zmalloc(i32 8)
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = load i32, i32* %11, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %11, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32 1, i32* %22, align 4
  %23 = bitcast [4 x %struct.anon]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 64, i1 false)
  %24 = bitcast i8* %23 to [4 x %struct.anon]*
  %25 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %26, align 16
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 1
  store i32 2, i32* %27, align 8
  %28 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %24, i32 0, i32 1
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %29, align 16
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 1
  store i32 1, i32* %30, align 8
  %31 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %24, i32 0, i32 2
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %32, align 16
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 1
  store i32 1, i32* %33, align 8
  store i32 2, i32* %9, align 4
  br label %34

34:                                               ; preds = %97, %4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %100

38:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %93, %38
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %14, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 16
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %96

46:                                               ; preds = %39
  %47 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %47, i64 %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %14, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 16
  %59 = call i32 @strcasecmp(i32 %53, i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* %14, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %96

69:                                               ; preds = %46
  %70 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %70, i64 %72
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @strcasecmp(i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %69
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  store i32 1, i32* %13, align 4
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32*, i32** %12, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  br label %96

91:                                               ; preds = %79, %69
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %39

96:                                               ; preds = %84, %61, %39
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %34

100:                                              ; preds = %34
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32*, i32** %8, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32*, i32** %12, align 8
  ret i32* %105
}

declare dso_local i32 @UNUSED(%struct.redisCommand*) #1

declare dso_local i32* @zmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @strcasecmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
