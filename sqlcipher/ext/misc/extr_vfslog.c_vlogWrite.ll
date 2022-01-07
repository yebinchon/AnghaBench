; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vfslog.c_vlogWrite.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vfslog.c_vlogWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*, i8*, i32, i32)* }

@.str = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"CHNGCTR-WRITE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @vlogWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlogWrite(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca [40 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca [12 x i8], align 1
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %12, align 8
  %21 = call i64 (...) @vlog_time()
  store i64 %21, i64* %10, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 0
  %25 = call i32 @vlogSignature(i8* %22, i32 %23, i8* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_8__*, i8*, i32, i32)*, i32 (%struct.TYPE_8__*, i8*, i32, i32)** %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 %32(%struct.TYPE_8__* %35, i8* %36, i32 %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = call i64 (...) @vlog_time()
  %41 = load i64, i64* %10, align 8
  %42 = sub nsw i64 %40, %41
  store i64 %42, i64* %11, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 0
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @vlogLogPrint(%struct.TYPE_7__* %45, i64 %46, i64 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i8* %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @SQLITE_OK, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %107

56:                                               ; preds = %4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = icmp ne %struct.TYPE_7__* %59, null
  br i1 %60, label %61, label %107

61:                                               ; preds = %56
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %107

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  %70 = icmp sle i32 %69, 24
  br i1 %70, label %71, label %107

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %72, %73
  %75 = icmp sge i32 %74, 28
  br i1 %75, label %76, label %107

76:                                               ; preds = %71
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 24, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  store i8* %81, i8** %14, align 8
  store i32 -1, i32* %16, align 4
  store i8* null, i8** %17, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = call i32 @bigToNative(i8* %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %84, %85
  %87 = icmp sge i32 %86, 40
  br i1 %87, label %88, label %98

88:                                               ; preds = %76
  %89 = getelementptr inbounds [12 x i8], [12 x i8]* %18, i64 0, i64 0
  store i8* %89, i8** %17, align 8
  %90 = getelementptr inbounds [12 x i8], [12 x i8]* %18, i64 0, i64 0
  %91 = load i8*, i8** %14, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 8
  %93 = call i32 @bigToNative(i8* %92)
  %94 = call i32 @sqlite3_snprintf(i32 12, i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i8*, i8** %14, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 12
  %97 = call i32 @bigToNative(i8* %96)
  store i32 %97, i32* %16, align 4
  br label %98

98:                                               ; preds = %88, %76
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i8*, i8** %17, align 8
  %106 = call i32 @vlogLogPrint(%struct.TYPE_7__* %101, i64 %102, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %104, i8* %105, i32 0)
  br label %107

107:                                              ; preds = %98, %71, %68, %61, %56, %4
  %108 = load i32, i32* %9, align 4
  ret i32 %108
}

declare dso_local i64 @vlog_time(...) #1

declare dso_local i32 @vlogSignature(i8*, i32, i8*) #1

declare dso_local i32 @vlogLogPrint(%struct.TYPE_7__*, i64, i64, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @bigToNative(i8*) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
