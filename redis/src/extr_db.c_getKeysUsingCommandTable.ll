; ModuleID = '/home/carl/AnghaBench/redis/src/extr_db.c_getKeysUsingCommandTable.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_db.c_getKeysUsingCommandTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redisCommand = type { i32, i32, i32, i64, i64 }

@CMD_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"Redis built-in command declared keys positions not matching the arity requirements.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @getKeysUsingCommandTable(%struct.redisCommand* %0, i32** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.redisCommand*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.redisCommand* %0, %struct.redisCommand** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32**, i32*** %7, align 8
  %15 = call i32 @UNUSED(i32** %14)
  %16 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %17 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  store i32 0, i32* %21, align 4
  store i32* null, i32** %5, align 8
  br label %92

22:                                               ; preds = %4
  %23 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %24 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %35 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %33, %36
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32* @zmalloc(i32 %41)
  store i32* %42, i32** %13, align 8
  %43 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %44 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %80, %32
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %56 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CMD_MODULE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %54
  %62 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %63 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61, %54
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @zfree(i32* %67)
  %69 = load i32*, i32** %9, align 8
  store i32 0, i32* %69, align 4
  store i32* null, i32** %5, align 8
  br label %92

70:                                               ; preds = %61
  %71 = call i32 @serverPanic(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %72, %50
  %74 = load i32, i32* %10, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  store i32 %74, i32* %79, align 4
  br label %80

80:                                               ; preds = %73
  %81 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %82 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %10, align 4
  br label %46

88:                                               ; preds = %46
  %89 = load i32, i32* %11, align 4
  %90 = load i32*, i32** %9, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %13, align 8
  store i32* %91, i32** %5, align 8
  br label %92

92:                                               ; preds = %88, %66, %20
  %93 = load i32*, i32** %5, align 8
  ret i32* %93
}

declare dso_local i32 @UNUSED(i32**) #1

declare dso_local i32* @zmalloc(i32) #1

declare dso_local i32 @zfree(i32*) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
