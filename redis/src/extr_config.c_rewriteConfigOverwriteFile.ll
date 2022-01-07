; ModuleID = '/home/carl/AnghaBench/redis/src/extr_config.c_rewriteConfigOverwriteFile.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_config.c_rewriteConfigOverwriteFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rewriteConfigOverwriteFile(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = load i32, i32* @O_CREAT, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @open(i8* %12, i32 %15, i32 420)
  store i32 %16, i32* %7, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @sdslen(i8* %17)
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %82

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @fstat(i32 %23, %struct.stat* %10)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @close(i32 %27)
  store i32 -1, i32* %3, align 4
  br label %82

29:                                               ; preds = %22
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @sdsdup(i8* %30)
  store i8* %31, i8** %11, align 8
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @sdsgrowzero(i8* %41, i32 %43)
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 10, i8* %48, align 1
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %54, 1
  %56 = call i32 @memset(i8* %53, i8 signext 35, i32 %55)
  br label %57

57:                                               ; preds = %36, %29
  %58 = load i32, i32* %7, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = call i32 @write(i32 %58, i8* %59, i32 %61)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 -1, i32* %6, align 4
  br label %76

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @ftruncate(i32 %69, i32 %70)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %68
  br label %75

75:                                               ; preds = %74, %65
  br label %76

76:                                               ; preds = %75, %64
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @sdsfree(i8* %77)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @close(i32 %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %76, %26, %21
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @sdsdup(i8*) #1

declare dso_local i8* @sdsgrowzero(i8*, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @sdsfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
