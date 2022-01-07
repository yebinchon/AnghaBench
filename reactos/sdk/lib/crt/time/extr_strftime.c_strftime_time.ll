; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/time/extr_strftime.c_strftime_time.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/time/extr_strftime.c_strftime_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64, %struct.tm*, %struct.TYPE_10__*)* @strftime_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strftime_time(i8* %0, i64* %1, i64 %2, %struct.tm* %3, %struct.TYPE_10__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tm*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.tm* %3, %struct.tm** %10, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %11, align 8
  %14 = load %struct.tm*, %struct.tm** %10, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1900
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 7
  store i64 %17, i64* %18, align 8
  %19 = load %struct.tm*, %struct.tm** %10, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 6
  store i64 %22, i64* %23, align 8
  %24 = load %struct.tm*, %struct.tm** %10, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 5
  store i32 %26, i32* %27, align 8
  %28 = load %struct.tm*, %struct.tm** %10, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  store i32 %30, i32* %31, align 4
  %32 = load %struct.tm*, %struct.tm** %10, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  store i32 %34, i32* %35, align 8
  %36 = load %struct.tm*, %struct.tm** %10, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load %struct.tm*, %struct.tm** %10, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @GetTimeFormatA(i32 %47, i32 0, %struct.TYPE_9__* %12, i32 %52, i8* null, i64 0)
  store i64 %53, i64* %13, align 8
  %54 = load i64, i64* %13, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %5
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64*, i64** %8, align 8
  %60 = load i64, i64* %59, align 8
  %61 = sub i64 %58, %60
  %62 = icmp ult i64 %57, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %56
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = load i64*, i64** %8, align 8
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i64, i64* %9, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %76, %78
  %80 = call i64 @GetTimeFormatA(i32 %66, i32 0, %struct.TYPE_9__* %12, i32 %71, i8* %75, i64 %79)
  store i64 %80, i64* %13, align 8
  br label %81

81:                                               ; preds = %63, %56, %5
  %82 = load i64, i64* %13, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load i8*, i8** %7, align 8
  store i8 0, i8* %85, align 1
  %86 = load i32, i32* @EINVAL, align 4
  %87 = call i32* (...) @_errno()
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %6, align 4
  br label %109

89:                                               ; preds = %81
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64*, i64** %8, align 8
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %91, %93
  %95 = icmp ugt i64 %90, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i8*, i8** %7, align 8
  store i8 0, i8* %97, align 1
  %98 = load i32, i32* @ERANGE, align 4
  %99 = call i32* (...) @_errno()
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* @FALSE, align 4
  store i32 %100, i32* %6, align 4
  br label %109

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %13, align 8
  %104 = sub i64 %103, 1
  %105 = load i64*, i64** %8, align 8
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, %104
  store i64 %107, i64* %105, align 8
  %108 = load i32, i32* @TRUE, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %102, %96, %84
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i64 @GetTimeFormatA(i32, i32, %struct.TYPE_9__*, i32, i8*, i64) #1

declare dso_local i32* @_errno(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
