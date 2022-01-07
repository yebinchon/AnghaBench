; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/stdio/extr_findgen.c__tfindnext.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/stdio/extr_findgen.c__tfindnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tfinddata_t = type { i32, i64, i8*, i8*, i8*, i32 }
%struct.TYPE_3__ = type { i32, i64, i64, i32, i32, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_tfindnext(i64 %0, %struct._tfinddata_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct._tfinddata_t*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  store i64 %0, i64* %4, align 8
  store %struct._tfinddata_t* %1, %struct._tfinddata_t** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @FindNextFile(i32 %8, %struct.TYPE_3__* %6)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = call i32 (...) @GetLastError()
  %13 = call i32 @_dosmaperr(i32 %12)
  store i32 -1, i32* %3, align 4
  br label %51

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct._tfinddata_t*, %struct._tfinddata_t** %5, align 8
  %18 = getelementptr inbounds %struct._tfinddata_t, %struct._tfinddata_t* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  %20 = call i64 @FileTimeToUnixTime(i32* %19, i32* null)
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct._tfinddata_t*, %struct._tfinddata_t** %5, align 8
  %23 = getelementptr inbounds %struct._tfinddata_t, %struct._tfinddata_t* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %25 = call i64 @FileTimeToUnixTime(i32* %24, i32* null)
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct._tfinddata_t*, %struct._tfinddata_t** %5, align 8
  %28 = getelementptr inbounds %struct._tfinddata_t, %struct._tfinddata_t* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %30 = call i64 @FileTimeToUnixTime(i32* %29, i32* null)
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct._tfinddata_t*, %struct._tfinddata_t** %5, align 8
  %33 = getelementptr inbounds %struct._tfinddata_t, %struct._tfinddata_t* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = shl i32 %36, 32
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %38, %40
  %42 = load %struct._tfinddata_t*, %struct._tfinddata_t** %5, align 8
  %43 = getelementptr inbounds %struct._tfinddata_t, %struct._tfinddata_t* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct._tfinddata_t*, %struct._tfinddata_t** %5, align 8
  %45 = getelementptr inbounds %struct._tfinddata_t, %struct._tfinddata_t* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MAX_PATH, align 4
  %50 = call i32 @_tcsncpy(i32 %46, i32 %48, i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %14, %11
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @FindNextFile(i32, %struct.TYPE_3__*) #1

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
