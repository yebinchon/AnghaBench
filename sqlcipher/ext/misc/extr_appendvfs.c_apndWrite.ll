; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_appendvfs.c_apndWrite.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_appendvfs.c_apndWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { {}*, i32 (%struct.TYPE_12__*, i64*)* }
%struct.TYPE_13__ = type { i64, i64 }

@APND_MAX_SIZE = common dso_local global i64 0, align 8
@SQLITE_FULL = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@APND_MARK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32, i64)* @apndWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apndWrite(%struct.TYPE_12__* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = bitcast %struct.TYPE_12__* %13 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %11, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = call %struct.TYPE_12__* @ORIGFILE(%struct.TYPE_12__* %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %6, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load i64, i64* @APND_MAX_SIZE, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @SQLITE_FULL, align 4
  store i32 %24, i32* %5, align 4
  br label %104

25:                                               ; preds = %4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.TYPE_12__*, i8*, i32, i64)**
  %31 = load i32 (%struct.TYPE_12__*, i8*, i32, i64)*, i32 (%struct.TYPE_12__*, i8*, i32, i64)** %30, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = call i32 %31(%struct.TYPE_12__* %32, i8* %33, i32 %34, i64 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @SQLITE_OK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %102

44:                                               ; preds = %25
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %102

57:                                               ; preds = %44
  store i64 0, i64* %12, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32 (%struct.TYPE_12__*, i64*)*, i32 (%struct.TYPE_12__*, i64*)** %61, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = call i32 %62(%struct.TYPE_12__* %63, i64* %12)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @SQLITE_OK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %57
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* @APND_MARK_SIZE, align 8
  %71 = sub nsw i64 %69, %70
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %81, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %68
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %99 = call i32 @apndWriteMark(%struct.TYPE_13__* %97, %struct.TYPE_12__* %98)
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %86, %68
  br label %101

101:                                              ; preds = %100, %57
  br label %102

102:                                              ; preds = %101, %44, %25
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %23
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.TYPE_12__* @ORIGFILE(%struct.TYPE_12__*) #1

declare dso_local i32 @apndWriteMark(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
