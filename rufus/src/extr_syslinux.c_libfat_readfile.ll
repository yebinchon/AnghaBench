; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_syslinux.c_libfat_readfile.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_syslinux.c_libfat_readfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@FILE_BEGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Could not set pointer to position %llu: %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not read sector %llu: %s\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Sector %llu: Read %d bytes instead of %d requested\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libfat_readfile(i64 %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = mul i64 %12, %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load i64, i64* %6, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @FILE_BEGIN, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @SetFilePointerEx(i32 %17, i64 %20, i32* null, i32 %18)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (...) @WindowsErrorString()
  %27 = sext i32 %26 to i64
  %28 = call i32 (i8*, i64, i64, ...) @uprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %27)
  store i32 0, i32* %5, align 4
  br label %53

29:                                               ; preds = %4
  %30 = load i64, i64* %6, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @ReadFile(i32 %31, i8* %32, i64 %33, i64* %11, i32* null)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load i64, i64* %9, align 8
  %38 = call i32 (...) @WindowsErrorString()
  %39 = sext i32 %38 to i64
  %40 = call i32 (i8*, i64, i64, ...) @uprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %37, i64 %39)
  store i32 0, i32* %5, align 4
  br label %53

41:                                               ; preds = %29
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 (i8*, i64, i64, ...) @uprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %46, i64 %47, i64 %48)
  store i32 0, i32* %5, align 4
  br label %53

50:                                               ; preds = %41
  %51 = load i64, i64* %8, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %45, %36, %23
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @SetFilePointerEx(i32, i64, i32*, i32) #1

declare dso_local i32 @uprintf(i8*, i64, i64, ...) #1

declare dso_local i32 @WindowsErrorString(...) #1

declare dso_local i32 @ReadFile(i32, i8*, i64, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
