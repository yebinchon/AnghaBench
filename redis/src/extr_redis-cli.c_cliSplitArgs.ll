; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliSplitArgs.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliSplitArgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"eval \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"e \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @cliSplitArgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cliSplitArgs(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strstr(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @strstr(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i8*, i8** %4, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %16, %11
  %22 = call i32* @sds_malloc(i32 8)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %5, align 8
  store i32 2, i32* %23, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 32
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 2, i32 5
  store i32 %32, i32* %8, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 1
  %36 = call i32 @sdsnewlen(i8* %33, i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %38, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %43, %44
  %46 = call i32 @sdsnewlen(i8* %42, i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %6, align 8
  store i32* %49, i32** %3, align 8
  br label %54

50:                                               ; preds = %16, %2
  %51 = load i8*, i8** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32* @sdssplitargs(i8* %51, i32* %52)
  store i32* %53, i32** %3, align 8
  br label %54

54:                                               ; preds = %50, %21
  %55 = load i32*, i32** %3, align 8
  ret i32* %55
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32* @sds_malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sdsnewlen(i8*, i32) #1

declare dso_local i32* @sdssplitargs(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
