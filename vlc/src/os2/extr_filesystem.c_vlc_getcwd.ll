; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_filesystem.c_vlc_getcwd.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_filesystem.c_vlc_getcwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_PC_PATH_MAX = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_getcwd() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %0
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @stat(i8* %13, %struct.stat* %3)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = call i64 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.stat* %4)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i8*, i8** %2, align 8
  %33 = call i8* @ToLocaleDup(i8* %32)
  store i8* %33, i8** %1, align 8
  br label %80

34:                                               ; preds = %25, %19, %16, %12
  br label %35

35:                                               ; preds = %34, %0
  %36 = load i32, i32* @_PC_PATH_MAX, align 4
  %37 = call i64 @pathconf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %5, align 8
  %42 = icmp sgt i64 %41, 4096
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %35
  br label %46

44:                                               ; preds = %40
  %45 = load i64, i64* %5, align 8
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi i64 [ 4096, %43 ], [ %45, %44 ]
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %76, %46
  %49 = load i64, i64* %6, align 8
  %50 = call i8* @malloc(i64 %49)
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = icmp eq i8* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %79

57:                                               ; preds = %48
  %58 = load i8*, i8** %7, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32* @getcwd(i8* %58, i64 %59)
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i8*, i8** %7, align 8
  %64 = call i8* @ToLocaleDup(i8* %63)
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i8*, i8** %8, align 8
  store i8* %67, i8** %1, align 8
  br label %80

68:                                               ; preds = %57
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i64, i64* @errno, align 8
  %72 = load i64, i64* @ERANGE, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %79

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %6, align 8
  %78 = mul i64 %77, 2
  store i64 %78, i64* %6, align 8
  br label %48

79:                                               ; preds = %74, %56
  store i8* null, i8** %1, align 8
  br label %80

80:                                               ; preds = %79, %62, %31
  %81 = load i8*, i8** %1, align 8
  ret i8* %81
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @ToLocaleDup(i8*) #1

declare dso_local i64 @pathconf(i8*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @getcwd(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
