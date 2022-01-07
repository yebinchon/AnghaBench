; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showlocks.c_showLocksInRange.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showlocks.c_showLocksInRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flock = type { i64, i64, i64, i32, i32 }

@F_WRLCK = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@F_GETLK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"start: %-12d len: %-5d pid: %-5d type: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"WRLCK\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"RDLCK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @showLocksInRange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @showLocksInRange(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.flock, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i64, i64* @F_WRLCK, align 8
  %11 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = load i32, i32* @SEEK_SET, align 4
  %13 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 4
  store i32 %12, i32* %13, align 4
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 1
  store i64 %14, i64* %15, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = sub nsw i64 %16, %17
  %19 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 2
  store i64 %18, i64* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @F_GETLK, align 4
  %22 = call i32 @fcntl(i32 %20, i32 %21, %struct.flock* %9)
  %23 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @F_UNLCK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %81

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @F_WRLCK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %43 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %36, i8* %42)
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %28
  %51 = load i32, i32* %5, align 4
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, 1
  %56 = call i32 @showLocksInRange(i32 %51, i64 %52, i64 %55)
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %50, %28
  %60 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %61, %63
  %65 = load i64, i64* %7, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %59
  %68 = load i32, i32* %5, align 4
  %69 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %70, %72
  %74 = add nsw i64 %73, 1
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @showLocksInRange(i32 %68, i64 %74, i64 %75)
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %67, %59
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %27
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @fcntl(i32, i32, %struct.flock*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
