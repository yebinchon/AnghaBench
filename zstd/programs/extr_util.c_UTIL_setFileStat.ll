; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_util.c_UTIL_setFileStat.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_util.c_UTIL_setFileStat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, %struct.timespec, i32 }
%struct.timespec = type { i32, i32 }
%struct.utimbuf = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@AT_FDCWD = common dso_local global i32 0, align 4
@UTIME_NOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UTIL_setFileStat(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.utimbuf, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @UTIL_isRegularFile(i8* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %49

12:                                               ; preds = %2
  %13 = call i32 @time(i32* null)
  %14 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %7, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @utime(i8* %19, %struct.utimbuf* %7)
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @chown(i8* %25, i32 %28, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 4095
  %42 = call i64 @chmod(i8* %37, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  store i64 0, i64* @errno, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %12, %11
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @UTIL_isRegularFile(i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @utime(i8*, %struct.utimbuf*) #1

declare dso_local i64 @chown(i8*, i32, i32) #1

declare dso_local i64 @chmod(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
