; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_chattr-util.c_chattr_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_chattr-util.c_chattr_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@FS_IOC_GETFLAGS = common dso_local global i32 0, align 4
@FS_IOC_SETFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chattr_fd(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @fstat(i32 %17, %struct.stat* %12)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @errno, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %85

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @S_ISDIR(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @S_ISREG(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOTTY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %85

36:                                               ; preds = %28, %23
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %85

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @FS_IOC_GETFLAGS, align 4
  %46 = call i64 @ioctl(i32 %44, i32 %45, i32* %10)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @errno, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %85

51:                                               ; preds = %43
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %8, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %56, %57
  %59 = or i32 %55, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %51
  %64 = load i32*, i32** %9, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %63
  store i32 0, i32* %5, align 4
  br label %85

70:                                               ; preds = %51
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @FS_IOC_SETFLAGS, align 4
  %73 = call i64 @ioctl(i32 %71, i32 %72, i32* %11)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @errno, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %85

78:                                               ; preds = %70
  %79 = load i32*, i32** %9, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %78
  store i32 1, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %75, %69, %48, %42, %33, %20
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
