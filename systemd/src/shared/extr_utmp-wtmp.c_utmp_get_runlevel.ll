; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_utmp-wtmp.c_utmp_get_runlevel.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_utmp-wtmp.c_utmp_get_runlevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i32, i32 }

@RUN_LVL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"RUNLEVEL\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"PREVLEVEL\00", align 1
@_PATH_UTMPX = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utmp_get_runlevel(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.utmpx*, align 8
  %7 = alloca %struct.utmpx, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %7, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %7, i32 0, i32 1
  %14 = load i32, i32* @RUN_LVL, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @assert(i32* %15)
  %17 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %54

20:                                               ; preds = %2
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %20
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i32*, i32** %4, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %26
  %35 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  br label %52

50:                                               ; preds = %38, %34
  %51 = load i32*, i32** %5, align 8
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %50, %44
  br label %53

53:                                               ; preds = %52, %26
  store i32 0, i32* %3, align 4
  br label %90

54:                                               ; preds = %20, %2
  %55 = load i32, i32* @_PATH_UTMPX, align 4
  %56 = call i64 @utmpxname(i32 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @errno, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %90

61:                                               ; preds = %54
  %62 = call i32 (...) @setutxent()
  %63 = call %struct.utmpx* @getutxid(%struct.utmpx* %7)
  store %struct.utmpx* %63, %struct.utmpx** %6, align 8
  %64 = load %struct.utmpx*, %struct.utmpx** %6, align 8
  %65 = icmp ne %struct.utmpx* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @errno, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %87

69:                                               ; preds = %61
  %70 = load %struct.utmpx*, %struct.utmpx** %6, align 8
  %71 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 255
  store i32 %73, i32* %10, align 4
  %74 = load %struct.utmpx*, %struct.utmpx** %6, align 8
  %75 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 8
  %78 = and i32 %77, 255
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32*, i32** %4, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %69
  %84 = load i32, i32* %11, align 4
  %85 = load i32*, i32** %5, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %69
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %86, %66
  %88 = call i32 (...) @endutxent()
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %58, %53
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @utmpxname(i32) #1

declare dso_local i32 @setutxent(...) #1

declare dso_local %struct.utmpx* @getutxid(%struct.utmpx*) #1

declare dso_local i32 @endutxent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
