; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vfslog.c_vlogRead.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vfslog.c_vlogRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*, i8*, i32, i32)* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"CHNGCTR-READ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @vlogRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlogRead(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_8__*, i8*, i32, i32)*, i32 (%struct.TYPE_8__*, i8*, i32, i32)** %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 %28(%struct.TYPE_8__* %31, i8* %32, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = call i64 (...) @vlog_time()
  %37 = load i64, i64* %10, align 8
  %38 = sub nsw i64 %36, %37
  store i64 %38, i64* %11, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @SQLITE_OK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %4
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 0
  %46 = call i32 @vlogSignature(i8* %43, i32 %44, i8* %45)
  br label %49

47:                                               ; preds = %4
  %48 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %48, align 16
  br label %49

49:                                               ; preds = %47, %42
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 0
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @vlogLogPrint(%struct.TYPE_7__* %52, i64 %53, i64 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i8* %57, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @SQLITE_OK, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %114

63:                                               ; preds = %49
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = icmp ne %struct.TYPE_7__* %66, null
  br i1 %67, label %68, label %114

68:                                               ; preds = %63
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %114

75:                                               ; preds = %68
  %76 = load i32, i32* %8, align 4
  %77 = icmp sle i32 %76, 24
  br i1 %77, label %78, label %114

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %79, %80
  %82 = icmp sge i32 %81, 28
  br i1 %82, label %83, label %114

83:                                               ; preds = %78
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 24, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  store i8* %88, i8** %14, align 8
  store i32 -1, i32* %16, align 4
  store i8* null, i8** %17, align 8
  %89 = load i8*, i8** %14, align 8
  %90 = call i32 @bigToNative(i8* %89)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %91, %92
  %94 = icmp sge i32 %93, 40
  br i1 %94, label %95, label %105

95:                                               ; preds = %83
  %96 = getelementptr inbounds [12 x i8], [12 x i8]* %18, i64 0, i64 0
  store i8* %96, i8** %17, align 8
  %97 = getelementptr inbounds [12 x i8], [12 x i8]* %18, i64 0, i64 0
  %98 = load i8*, i8** %14, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 8
  %100 = call i32 @bigToNative(i8* %99)
  %101 = call i32 @sqlite3_snprintf(i32 12, i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load i8*, i8** %14, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 12
  %104 = call i32 @bigToNative(i8* %103)
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %95, %83
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i8*, i8** %17, align 8
  %113 = call i32 @vlogLogPrint(%struct.TYPE_7__* %108, i64 %109, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %111, i8* %112, i32 0)
  br label %114

114:                                              ; preds = %105, %78, %75, %68, %63, %49
  %115 = load i32, i32* %9, align 4
  ret i32 %115
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
