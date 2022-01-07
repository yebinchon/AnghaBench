; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-check-aof.c_readLong.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-check-aof.c_readLong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@epos = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Expected prefix '%c', got: '%c'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readLong(i32* %0, i8 signext %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8 %1, i8* %6, align 1
  store i64* %2, i64** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @ftello(i32* %10)
  store i32 %11, i32* @epos, align 4
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %13 = load i32*, i32** %5, align 8
  %14 = call i32* @fgets(i8* %12, i32 128, i32* %13)
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

17:                                               ; preds = %3
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %19 = load i8, i8* %18, align 16
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* %6, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i8, i8* %6, align 1
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %27 = load i8, i8* %26, align 16
  %28 = call i32 @ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8 signext %25, i8 signext %27)
  store i32 0, i32* %4, align 4
  br label %36

29:                                               ; preds = %17
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = call i64 @strtol(i8* %31, i8** %9, i32 10)
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @consumeNewline(i8* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %29, %24, %16
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @ftello(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @ERROR(i8*, i8 signext, i8 signext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @consumeNewline(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
