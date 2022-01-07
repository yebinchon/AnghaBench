; ModuleID = '/home/carl/AnghaBench/vlc/src/config/extr_chain.c_config_ChainParseOptions.c'
source_filename = "/home/carl/AnghaBench/vlc/src/config/extr_chain.c_config_ChainParseOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_4__*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"=,{} \09\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"={\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @config_ChainParseOptions(%struct.TYPE_4__** %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  store %struct.TYPE_4__** %9, %struct.TYPE_4__*** %5, align 8
  store i32 1, i32* %6, align 4
  br label %10

10:                                               ; preds = %59, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %4, align 8
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @SKIPSPACE(i8* %17)
  store i32 0, i32* %6, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @strcspn(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %59

24:                                               ; preds = %16
  %25 = call %struct.TYPE_4__* @malloc(i32 24)
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %8, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %65

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @strndup(i8* %30, i64 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 %35
  store i8* %37, i8** %4, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %43, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store %struct.TYPE_4__** %45, %struct.TYPE_4__*** %5, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @SKIPSPACE(i8* %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %29
  %53 = call i32* @ChainGetValue(i8** %4)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @SKIPSPACE(i8* %56)
  br label %58

58:                                               ; preds = %52, %29
  br label %59

59:                                               ; preds = %58, %23
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @memchr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8 signext %61, i32 2)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br i1 %64, label %10, label %65

65:                                               ; preds = %59, %28
  %66 = load i8*, i8** %4, align 8
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @SKIPSPACE(i8* %73)
  %75 = load i8*, i8** %4, align 8
  ret i8* %75
}

declare dso_local i32 @SKIPSPACE(i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @strndup(i8*, i64) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32* @ChainGetValue(i8**) #1

declare dso_local i32 @memchr(i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
