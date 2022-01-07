; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_memjrnlRead.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_memjrnlRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_6__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_IOERR_SHORT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i64)* @memjrnlRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memjrnlRead(i32* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %10, align 8
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %8, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %25, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = icmp ne %struct.TYPE_9__* %42, null
  br label %44

44:                                               ; preds = %38, %4
  %45 = phi i1 [ true, %4 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %54, %44
  store i64 0, i64* %14, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %13, align 8
  br label %61

61:                                               ; preds = %81, %57
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %63 = call i64 @ALWAYS(%struct.TYPE_9__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i64, i64* %14, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load i64, i64* %8, align 8
  %72 = icmp sle i64 %70, %71
  br label %73

73:                                               ; preds = %65, %61
  %74 = phi i1 [ false, %61 ], [ %72, %65 ]
  br i1 %74, label %75, label %85

75:                                               ; preds = %73
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %14, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %14, align 8
  br label %81

81:                                               ; preds = %75
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %13, align 8
  br label %61

85:                                               ; preds = %73
  br label %95

86:                                               ; preds = %54
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %13, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %92 = icmp ne %struct.TYPE_9__* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  br label %95

95:                                               ; preds = %86, %85
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = srem i64 %96, %99
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %147, %95
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %105, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = sub nsw i64 %113, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @MIN(i32 %110, i32 %117)
  store i32 %118, i32* %16, align 4
  %119 = load i32*, i32** %10, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i32*
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @memcpy(i32* %119, i32* %126, i32 %127)
  %129 = load i32, i32* %16, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32* %132, i32** %10, align 8
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %11, align 4
  %135 = sub nsw i32 %134, %133
  store i32 %135, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %136

136:                                              ; preds = %102
  %137 = load i32, i32* %11, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  store %struct.TYPE_9__* %142, %struct.TYPE_9__** %13, align 8
  %143 = icmp ne %struct.TYPE_9__* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i32, i32* %11, align 4
  %146 = icmp sgt i32 %145, 0
  br label %147

147:                                              ; preds = %144, %139, %136
  %148 = phi i1 [ false, %139 ], [ false, %136 ], [ %146, %144 ]
  br i1 %148, label %102, label %149

149:                                              ; preds = %147
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %151 = icmp ne %struct.TYPE_9__* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i64, i64* %8, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %153, %155
  br label %158

157:                                              ; preds = %149
  br label %158

158:                                              ; preds = %157, %152
  %159 = phi i64 [ %156, %152 ], [ 0, %157 ]
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  store i64 %159, i64* %162, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  store %struct.TYPE_9__* %163, %struct.TYPE_9__** %166, align 8
  %167 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %167
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ALWAYS(%struct.TYPE_9__*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
