; ModuleID = '/home/carl/AnghaBench/redis/src/extr_db.c_xreadGetKeys.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_db.c_xreadGetKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redisCommand = type { i32 }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"noack\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"streams\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xreadGetKeys(%struct.redisCommand* %0, %struct.TYPE_3__** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.redisCommand*, align 8
  %7 = alloca %struct.TYPE_3__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.redisCommand* %0, %struct.redisCommand** %6, align 8
  store %struct.TYPE_3__** %1, %struct.TYPE_3__*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %16 = call i32 @UNUSED(%struct.redisCommand* %15)
  store i32 -1, i32* %13, align 4
  store i32 1, i32* %10, align 4
  br label %17

17:                                               ; preds = %65, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %22, i64 %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %14, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = call i32 @strcasecmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %64

35:                                               ; preds = %21
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 @strcasecmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %63

42:                                               ; preds = %35
  %43 = load i8*, i8** %14, align 8
  %44 = call i32 @strcasecmp(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 2
  store i32 %48, i32* %10, align 4
  br label %62

49:                                               ; preds = %42
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @strcasecmp(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %61

54:                                               ; preds = %49
  %55 = load i8*, i8** %14, align 8
  %56 = call i32 @strcasecmp(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %13, align 4
  br label %68

60:                                               ; preds = %54
  br label %68

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %46
  br label %63

63:                                               ; preds = %62, %39
  br label %64

64:                                               ; preds = %63, %32
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %17

68:                                               ; preds = %60, %58, %17
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %86, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = srem i32 %83, 2
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82, %79, %76
  %87 = load i32*, i32** %9, align 8
  store i32 0, i32* %87, align 4
  store i32* null, i32** %5, align 8
  br label %120

88:                                               ; preds = %82
  %89 = load i32, i32* %11, align 4
  %90 = sdiv i32 %89, 2
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 4, %92
  %94 = trunc i64 %93 to i32
  %95 = call i32* @zmalloc(i32 %94)
  store i32* %95, i32** %12, align 8
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %113, %88
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %11, align 4
  %102 = sub nsw i32 %100, %101
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %98
  %105 = load i32, i32* %10, align 4
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %13, align 4
  %109 = sub nsw i32 %107, %108
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  store i32 %105, i32* %112, align 4
  br label %113

113:                                              ; preds = %104
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %98

116:                                              ; preds = %98
  %117 = load i32, i32* %11, align 4
  %118 = load i32*, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32*, i32** %12, align 8
  store i32* %119, i32** %5, align 8
  br label %120

120:                                              ; preds = %116, %86
  %121 = load i32*, i32** %5, align 8
  ret i32* %121
}

declare dso_local i32 @UNUSED(%struct.redisCommand*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32* @zmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
