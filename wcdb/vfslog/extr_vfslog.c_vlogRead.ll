; ModuleID = '/home/carl/AnghaBench/wcdb/vfslog/extr_vfslog.c_vlogRead.c'
source_filename = "/home/carl/AnghaBench/wcdb/vfslog/extr_vfslog.c_vlogRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*, i8*, i32, i32)* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@VLOG_OP_CHNGCTR_READ = common dso_local global i32 0, align 4
@VLOG_OP_READ = common dso_local global i32 0, align 4
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
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca [12 x i8], align 1
  %18 = alloca [40 x i8], align 16
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
  br i1 %41, label %42, label %95

42:                                               ; preds = %4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  br i1 %46, label %47, label %95

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %95

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  %56 = icmp sle i32 %55, 24
  br i1 %56, label %57, label %95

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %58, %59
  %61 = icmp sge i32 %60, 28
  br i1 %61, label %62, label %95

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 24, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8* %67, i8** %13, align 8
  store i32 -1, i32* %15, align 4
  store i8* null, i8** %16, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 @bigToNative(i8* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %70, %71
  %73 = icmp sge i32 %72, 40
  br i1 %73, label %74, label %84

74:                                               ; preds = %62
  %75 = getelementptr inbounds [12 x i8], [12 x i8]* %17, i64 0, i64 0
  store i8* %75, i8** %16, align 8
  %76 = getelementptr inbounds [12 x i8], [12 x i8]* %17, i64 0, i64 0
  %77 = load i8*, i8** %13, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 8
  %79 = call i32 @bigToNative(i8* %78)
  %80 = call i32 @sqlite3_snprintf(i32 12, i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i8*, i8** %13, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 12
  %83 = call i32 @bigToNative(i8* %82)
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %74, %62
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i32, i32* @VLOG_OP_CHNGCTR_READ, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i8*, i8** %16, align 8
  %94 = call i32 @vlogLogPrint(%struct.TYPE_7__* %87, i64 %88, i64 %89, i32 %90, i32 %91, i32 %92, i8* %93, i32 0)
  br label %135

95:                                               ; preds = %57, %54, %47, %42, %4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @SQLITE_OK, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = getelementptr inbounds [40 x i8], [40 x i8]* %18, i64 0, i64 0
  %103 = call i32 @vlogSignature(i8* %100, i32 %101, i8* %102)
  br label %106

104:                                              ; preds = %95
  %105 = getelementptr inbounds [40 x i8], [40 x i8]* %18, i64 0, i64 0
  store i8 0, i8* %105, align 16
  br label %106

106:                                              ; preds = %104, %99
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @sqlite3_mutex_enter(i32 %111)
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  store i32 %113, i32* %117, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @sqlite3_mutex_leave(i32 %122)
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* %11, align 8
  %129 = load i32, i32* @VLOG_OP_READ, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %8, align 4
  %132 = getelementptr inbounds [40 x i8], [40 x i8]* %18, i64 0, i64 0
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @vlogLogPrint(%struct.TYPE_7__* %126, i64 %127, i64 %128, i32 %129, i32 %130, i32 %131, i8* %132, i32 %133)
  br label %135

135:                                              ; preds = %106, %84
  %136 = load i32, i32* %9, align 4
  ret i32 %136
}

declare dso_local i64 @vlog_time(...) #1

declare dso_local i32 @bigToNative(i8*) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @vlogLogPrint(%struct.TYPE_7__*, i64, i64, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @vlogSignature(i8*, i32, i8*) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
