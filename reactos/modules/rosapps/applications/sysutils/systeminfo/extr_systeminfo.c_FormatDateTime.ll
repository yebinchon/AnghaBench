; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/systeminfo/extr_systeminfo.c_FormatDateTime.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/systeminfo/extr_systeminfo.c_FormatDateTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.tm = type { i64, i64, i64, i64, i64, i64, i64 }

@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@BUFFER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i32] [i32 44, i32 32, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @FormatDateTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FormatDateTime(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.tm*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = call %struct.tm* @localtime(i32* %4)
  store %struct.tm* %9, %struct.tm** %8, align 8
  %10 = load %struct.tm*, %struct.tm** %8, align 8
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 1900, %12
  %14 = inttoptr i64 %13 to i8*
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 7
  store i8* %14, i8** %15, align 8
  %16 = load %struct.tm*, %struct.tm** %8, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 1, %18
  %20 = inttoptr i64 %19 to i8*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  store i8* %20, i8** %21, align 8
  %22 = load %struct.tm*, %struct.tm** %8, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  store i8* %25, i8** %26, align 8
  %27 = load %struct.tm*, %struct.tm** %8, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  store i8* %30, i8** %31, align 8
  %32 = load %struct.tm*, %struct.tm** %8, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  store i8* %35, i8** %36, align 8
  %37 = load %struct.tm*, %struct.tm** %8, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i8* %40, i8** %41, align 8
  %42 = load %struct.tm*, %struct.tm** %8, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @BUFFER_SIZE, align 8
  %51 = sub nsw i64 %50, 2
  %52 = call i32 @GetDateFormatW(i32 %48, i32 0, %struct.TYPE_4__* %7, i32* null, i64 %49, i64 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %2
  %56 = load i32, i32* %6, align 4
  %57 = add i32 %56, -1
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %2
  %59 = load i64, i64* %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = call i64 @swprintf(i64 %62, i8* bitcast ([3 x i32]* @.str to i8*))
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = load i64, i64* @BUFFER_SIZE, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = sub nsw i64 %73, %75
  %77 = call i32 @GetTimeFormatW(i32 %68, i32 0, %struct.TYPE_4__* %7, i32* null, i64 %72, i64 %76)
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @GetDateFormatW(i32, i32, %struct.TYPE_4__*, i32*, i64, i64) #1

declare dso_local i64 @swprintf(i64, i8*) #1

declare dso_local i32 @GetTimeFormatW(i32, i32, %struct.TYPE_4__*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
