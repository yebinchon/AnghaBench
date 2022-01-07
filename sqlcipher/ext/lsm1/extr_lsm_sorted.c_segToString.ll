; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_segToString.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_segToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"root=%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"size=%d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"/%s %*s%s\\\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"|%s %*s%s|\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_3__*, i32)* @segToString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @segToString(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i8* (i32*, i8*, ...) @lsmMallocPrintf(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %29)
  store i8* %30, i8** %12, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load i32*, i32** %4, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i8* (i32*, i8*, ...) @lsmMallocPrintf(i32* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  store i8* %36, i8** %13, align 8
  br label %41

37:                                               ; preds = %3
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i8* (i32*, i8*, ...) @lsmMallocPrintf(i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  store i8* %40, i8** %13, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 2
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = sub nsw i32 %43, %45
  %47 = sub nsw i32 %46, 1
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = sub nsw i32 %47, %49
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @LSM_MAX(i32 0, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %41
  %56 = load i32*, i32** %4, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = call i8* (i32*, i8*, ...) @lsmMallocPrintf(i32* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %57, i32 %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  store i8* %60, i8** %11, align 8
  br label %67

61:                                               ; preds = %41
  %62 = load i32*, i32** %4, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load i8*, i8** %13, align 8
  %66 = call i8* (i32*, i8*, ...) @lsmMallocPrintf(i32* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %63, i32 %64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  store i8* %66, i8** %11, align 8
  br label %67

67:                                               ; preds = %61, %55
  %68 = load i32*, i32** %4, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @lsmFree(i32* %68, i8* %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 @lsmFree(i32* %71, i8* %72)
  %74 = load i8*, i8** %11, align 8
  ret i8* %74
}

declare dso_local i8* @lsmMallocPrintf(i32*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @LSM_MAX(i32, i32) #1

declare dso_local i32 @lsmFree(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
