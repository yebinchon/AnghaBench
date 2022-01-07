; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_benchzstd.c_BMK_benchCLevel.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_benchzstd.c_BMK_benchCLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [41 x i8] c"Note : switching to real-time priority \0A\00", align 1
@SET_REALTIME_PRIORITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"bench %s %s: input %u bytes, %u seconds, %u KB blocks\0A\00", align 1
@ZSTD_VERSION_STRING = common dso_local global i32 0, align 4
@ZSTD_GIT_COMMIT_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*, i32, i32, i32*, i8*, i64, i32, i8*, %struct.TYPE_4__*)* @BMK_benchCLevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BMK_benchCLevel(i8* %0, i64 %1, i64* %2, i32 %3, i32 %4, i32* %5, i8* %6, i64 %7, i32 %8, i8* %9, %struct.TYPE_4__* %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_4__*, align 8
  %23 = alloca i8*, align 8
  store i8* %0, i8** %12, align 8
  store i64 %1, i64* %13, align 8
  store i64* %2, i64** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i8* %6, i8** %18, align 8
  store i64 %7, i64* %19, align 8
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %22, align 8
  %24 = load i8*, i8** %21, align 8
  %25 = call i8* @strrchr(i8* %24, i8 signext 92)
  store i8* %25, i8** %23, align 8
  %26 = load i8*, i8** %23, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %11
  %29 = load i8*, i8** %21, align 8
  %30 = call i8* @strrchr(i8* %29, i8 signext 47)
  store i8* %30, i8** %23, align 8
  br label %31

31:                                               ; preds = %28, %11
  %32 = load i8*, i8** %23, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i8*, i8** %23, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %36, i8** %21, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = call i32 @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @SET_REALTIME_PRIORITY, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %20, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @ZSTD_VERSION_STRING, align 4
  %55 = load i32, i32* @ZSTD_GIT_COMMIT_STRING, align 4
  %56 = load i64, i64* %13, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = ashr i32 %63, 10
  %65 = call i32 @DISPLAY(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55, i32 %57, i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %53, %48, %45
  %67 = load i8*, i8** %12, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i64*, i64** %14, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32*, i32** %17, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = load i64, i64* %19, align 8
  %75 = load i32, i32* %20, align 4
  %76 = load i8*, i8** %21, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %78 = call i32 @BMK_benchMemAdvanced(i8* %67, i64 %68, i32* null, i32 0, i64* %69, i32 %70, i32 %71, i32* %72, i8* %73, i64 %74, i32 %75, i8* %76, %struct.TYPE_4__* %77)
  ret i32 %78
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*) #1

declare dso_local i32 @DISPLAY(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BMK_benchMemAdvanced(i8*, i64, i32*, i32, i64*, i32, i32, i32*, i8*, i64, i32, i8*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
