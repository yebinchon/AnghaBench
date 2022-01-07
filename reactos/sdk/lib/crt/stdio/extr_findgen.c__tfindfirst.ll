; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/stdio/extr_findgen.c__tfindfirst.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/stdio/extr_findgen.c__tfindfirst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tfinddata_t = type { i32, i64, i8*, i8*, i8*, i32 }
%struct.TYPE_3__ = type { i32, i64, i64, i32, i32, i32, i32 }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_tfindfirst(i32* %0, %struct._tfinddata_t* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct._tfinddata_t*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct._tfinddata_t* %1, %struct._tfinddata_t** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @FindFirstFile(i32* %8, %struct.TYPE_3__* %6)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 (...) @GetLastError()
  %15 = call i32 @_dosmaperr(i32 %14)
  store i64 -1, i64* %3, align 8
  br label %54

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct._tfinddata_t*, %struct._tfinddata_t** %5, align 8
  %20 = getelementptr inbounds %struct._tfinddata_t, %struct._tfinddata_t* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  %22 = call i64 @FileTimeToUnixTime(i32* %21, i32* null)
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct._tfinddata_t*, %struct._tfinddata_t** %5, align 8
  %25 = getelementptr inbounds %struct._tfinddata_t, %struct._tfinddata_t* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %27 = call i64 @FileTimeToUnixTime(i32* %26, i32* null)
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct._tfinddata_t*, %struct._tfinddata_t** %5, align 8
  %30 = getelementptr inbounds %struct._tfinddata_t, %struct._tfinddata_t* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %32 = call i64 @FileTimeToUnixTime(i32* %31, i32* null)
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct._tfinddata_t*, %struct._tfinddata_t** %5, align 8
  %35 = getelementptr inbounds %struct._tfinddata_t, %struct._tfinddata_t* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = shl i32 %38, 32
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %40, %42
  %44 = load %struct._tfinddata_t*, %struct._tfinddata_t** %5, align 8
  %45 = getelementptr inbounds %struct._tfinddata_t, %struct._tfinddata_t* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct._tfinddata_t*, %struct._tfinddata_t** %5, align 8
  %47 = getelementptr inbounds %struct._tfinddata_t, %struct._tfinddata_t* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MAX_PATH, align 4
  %52 = call i32 @_tcsncpy(i32 %48, i32 %50, i32 %51)
  %53 = load i64, i64* %7, align 8
  store i64 %53, i64* %3, align 8
  br label %54

54:                                               ; preds = %16, %13
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

declare dso_local i64 @FindFirstFile(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @_dosmaperr(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @FileTimeToUnixTime(i32*, i32*) #1

declare dso_local i32 @_tcsncpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
