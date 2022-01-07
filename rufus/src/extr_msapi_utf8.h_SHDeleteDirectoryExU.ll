; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_SHDeleteDirectoryExU.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_SHDeleteDirectoryExU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32, i32, i32*, i32, i32, i32 }

@FO_DELETE = common dso_local global i32 0, align 4
@wpszPath = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @SHDeleteDirectoryExU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SHDeleteDirectoryExU(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = add nsw i32 %11, 2
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @walloc(i8* %14, i64 %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %17, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %22 = load i32, i32* @FO_DELETE, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %26 = load i32, i32* @wpszPath, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %28, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 5
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 6
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 7
  store i32 0, i32* %35, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @wpszPath, align 4
  %38 = load i64, i64* %8, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @utf8_to_wchar_no_alloc(i8* %36, i32 %37, i32 %39)
  %41 = call i32 @SHFileOperationW(%struct.TYPE_3__* %9)
  store i32 %41, i32* %7, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @wfree(i8* %42)
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @walloc(i8*, i64) #1

declare dso_local i32 @utf8_to_wchar_no_alloc(i8*, i32, i32) #1

declare dso_local i32 @SHFileOperationW(%struct.TYPE_3__*) #1

declare dso_local i32 @wfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
