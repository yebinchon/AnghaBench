; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/time/extr_strftime.c_strftime_date.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/time/extr_strftime.c_strftime_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64*, i64, i64, %struct.tm*, %struct.TYPE_10__*)* @strftime_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @strftime_date(i8* %0, i64* %1, i64 %2, i64 %3, %struct.tm* %4, %struct.TYPE_10__* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tm*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.tm* %4, %struct.tm** %12, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %13, align 8
  %17 = load %struct.tm*, %struct.tm** %12, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1900
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 7
  store i64 %20, i64* %21, align 8
  %22 = load %struct.tm*, %struct.tm** %12, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 6
  store i64 %25, i64* %26, align 8
  %27 = load %struct.tm*, %struct.tm** %12, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 5
  store i32 %29, i32* %30, align 8
  %31 = load %struct.tm*, %struct.tm** %12, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  %35 = load %struct.tm*, %struct.tm** %12, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  store i32 %37, i32* %38, align 8
  %39 = load %struct.tm*, %struct.tm** %12, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load %struct.tm*, %struct.tm** %12, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %6
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  br label %62

56:                                               ; preds = %6
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  br label %62

62:                                               ; preds = %56, %50
  %63 = phi i8* [ %55, %50 ], [ %61, %56 ]
  store i8* %63, i8** %14, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = call i64 @GetDateFormatA(i32 %66, i32 0, %struct.TYPE_9__* %15, i8* %67, i8* null, i64 0)
  store i64 %68, i64* %16, align 8
  %69 = load i64, i64* %16, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %62
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64*, i64** %9, align 8
  %75 = load i64, i64* %74, align 8
  %76 = sub i64 %73, %75
  %77 = icmp ult i64 %72, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %71
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load i64*, i64** %9, align 8
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i64, i64* %10, align 8
  %88 = load i64*, i64** %9, align 8
  %89 = load i64, i64* %88, align 8
  %90 = sub i64 %87, %89
  %91 = call i64 @GetDateFormatA(i32 %81, i32 0, %struct.TYPE_9__* %15, i8* %82, i8* %86, i64 %90)
  store i64 %91, i64* %16, align 8
  br label %92

92:                                               ; preds = %78, %71, %62
  %93 = load i64, i64* %16, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = load i8*, i8** %8, align 8
  store i8 0, i8* %96, align 1
  %97 = load i32, i32* @EINVAL, align 4
  %98 = call i32* (...) @_errno()
  store i32 %97, i32* %98, align 4
  %99 = load i64, i64* @FALSE, align 8
  store i64 %99, i64* %7, align 8
  br label %120

100:                                              ; preds = %92
  %101 = load i64, i64* %16, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64*, i64** %9, align 8
  %104 = load i64, i64* %103, align 8
  %105 = sub i64 %102, %104
  %106 = icmp ugt i64 %101, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load i8*, i8** %8, align 8
  store i8 0, i8* %108, align 1
  %109 = load i32, i32* @ERANGE, align 4
  %110 = call i32* (...) @_errno()
  store i32 %109, i32* %110, align 4
  %111 = load i64, i64* @FALSE, align 8
  store i64 %111, i64* %7, align 8
  br label %120

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %16, align 8
  %115 = sub i64 %114, 1
  %116 = load i64*, i64** %9, align 8
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, %115
  store i64 %118, i64* %116, align 8
  %119 = load i64, i64* @TRUE, align 8
  store i64 %119, i64* %7, align 8
  br label %120

120:                                              ; preds = %113, %107, %95
  %121 = load i64, i64* %7, align 8
  ret i64 %121
}

declare dso_local i64 @GetDateFormatA(i32, i32, %struct.TYPE_9__*, i8*, i8*, i64) #1

declare dso_local i32* @_errno(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
