; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_LogRaw.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_LogRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@LOG_MAX_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@LL_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@LL_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"notice\00", align 1
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"<%s> \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"module\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RM_LogRaw(%struct.TYPE_4__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @LOG_MAX_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @LL_DEBUG, align 4
  store i32 %22, i32* %12, align 4
  br label %46

23:                                               ; preds = %4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @LL_VERBOSE, align 4
  store i32 %28, i32* %12, align 4
  br label %45

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strcasecmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @LL_NOTICE, align 4
  store i32 %34, i32* %12, align 4
  br label %44

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strcasecmp(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @LL_WARNING, align 4
  store i32 %40, i32* %12, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @LL_VERBOSE, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %33
  br label %45

45:                                               ; preds = %44, %27
  br label %46

46:                                               ; preds = %45, %21
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %13, align 4
  br label %73

51:                                               ; preds = %46
  %52 = trunc i64 %15 to i32
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = icmp ne %struct.TYPE_4__* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  br label %60

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i8* [ %58, %55 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %59 ]
  %62 = call i64 @snprintf(i8* %17, i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds i8, i8* %17, i64 %63
  %65 = load i64, i64* %11, align 8
  %66 = sub i64 %15, %65
  %67 = trunc i64 %66 to i32
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @vsnprintf(i8* %64, i32 %67, i8* %68, i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @serverLogRaw(i32 %71, i8* %17)
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %60, %50
  %74 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %13, align 4
  switch i32 %75, label %77 [
    i32 0, label %76
    i32 1, label %76
  ]

76:                                               ; preds = %73, %73
  ret void

77:                                               ; preds = %73
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @serverLogRaw(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
