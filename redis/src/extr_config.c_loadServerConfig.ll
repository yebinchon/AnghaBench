; ModuleID = '/home/carl/AnghaBench/redis/src/extr_config.c_loadServerConfig.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_config.c_loadServerConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_MAX_LINE = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Fatal error, can't open config file '%s'\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @loadServerConfig(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i32 (...) @sdsempty()
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @CONFIG_MAX_LINE, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %59

17:                                               ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 45
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32*, i32** @stdin, align 8
  store i32* %30, i32** %8, align 8
  br label %41

31:                                               ; preds = %23, %17
  %32 = load i8*, i8** %3, align 8
  %33 = call i32* @fopen(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %33, i32** %8, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* @LL_WARNING, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @serverLog(i32 %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = call i32 @exit(i32 1) #4
  unreachable

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %29
  br label %42

42:                                               ; preds = %48, %41
  %43 = load i32, i32* @CONFIG_MAX_LINE, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32*, i32** %8, align 8
  %46 = call i32* @fgets(i8* %14, i32 %44, i32* %45)
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @sdscat(i32 %49, i8* %14)
  store i32 %50, i32* %5, align 4
  br label %42

51:                                               ; preds = %42
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** @stdin, align 8
  %54 = icmp ne i32* %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @fclose(i32* %56)
  br label %58

58:                                               ; preds = %55, %51
  br label %59

59:                                               ; preds = %58, %2
  %60 = load i8*, i8** %4, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @sdscat(i32 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @sdscat(i32 %65, i8* %66)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @loadServerConfigFromString(i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @sdsfree(i32 %71)
  %73 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %73)
  ret void
}

declare dso_local i32 @sdsempty(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @serverLog(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @sdscat(i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @loadServerConfigFromString(i32) #1

declare dso_local i32 @sdsfree(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
