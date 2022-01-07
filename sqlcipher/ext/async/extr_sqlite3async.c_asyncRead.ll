; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/async/extr_sqlite3async.c_asyncRead.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/async/extr_sqlite3async.c_asyncRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64, i32*, i32, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i8*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, i64*)*, {}* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@ASYNC_MUTEX_QUEUE = common dso_local global i32 0, align 4
@async = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str = private unnamed_addr constant [24 x i8] c"READ %s %d bytes at %d\0A\00", align 1
@ASYNC_WRITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"OVERREAD %d bytes at %d\0A\00", align 1
@SQLITE_IOERR_SHORT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32, i64)* @asyncRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asyncRead(%struct.TYPE_11__* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = bitcast %struct.TYPE_11__* %21 to %struct.TYPE_14__*
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %9, align 8
  %25 = load i32, i32* @SQLITE_OK, align 4
  store i32 %25, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %12, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %13, align 8
  %31 = load i32, i32* @ASYNC_MUTEX_QUEUE, align 4
  %32 = call i32 @async_mutex_enter(i32 %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @async, i32 0, i32 0), align 8
  %34 = load i32, i32* @SQLITE_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @async, i32 0, i32 0), align 8
  store i32 %37, i32* %10, align 4
  br label %180

38:                                               ; preds = %4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = icmp ne %struct.TYPE_10__* %41, null
  br i1 %42, label %43, label %84

43:                                               ; preds = %38
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_11__*, i64*)*, i32 (%struct.TYPE_11__*, i64*)** %47, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %50 = call i32 %48(%struct.TYPE_11__* %49, i64* %11)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @SQLITE_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %180

55:                                               ; preds = %43
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %8, align 8
  %58 = sub nsw i64 %56, %57
  %59 = load i64, i64* %13, align 8
  %60 = call i64 @MIN(i64 %58, i64 %59)
  store i64 %60, i64* %14, align 8
  %61 = load i64, i64* %14, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %55
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = bitcast {}** %67 to i32 (%struct.TYPE_11__*, i8*, i32, i64)**
  %69 = load i32 (%struct.TYPE_11__*, i8*, i32, i64)*, i32 (%struct.TYPE_11__*, i8*, i32, i64)** %68, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %14, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i64, i64* %8, align 8
  %75 = call i32 %69(%struct.TYPE_11__* %70, i8* %71, i32 %73, i64 %74)
  store i32 %75, i32* %10, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %8, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 @ASYNC_TRACE(i8* %81)
  br label %83

83:                                               ; preds = %63, %55
  br label %84

84:                                               ; preds = %83, %38
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @SQLITE_OK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %179

88:                                               ; preds = %84
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %16, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @async, i32 0, i32 1), align 8
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %15, align 8
  br label %93

93:                                               ; preds = %174, %88
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %95 = icmp ne %struct.TYPE_12__* %94, null
  br i1 %95, label %96, label %178

96:                                               ; preds = %93
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ASYNC_WRITE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %173

102:                                              ; preds = %96
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %107 = icmp eq %struct.TYPE_13__* %105, %106
  br i1 %107, label %119, label %108

108:                                              ; preds = %102
  %109 = load i8*, i8** %16, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %173

111:                                              ; preds = %108
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = icmp eq i8* %116, %117
  br i1 %118, label %119, label %173

119:                                              ; preds = %111, %102
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %18, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %8, align 8
  %128 = sub nsw i64 %126, %127
  store i64 %128, i64* %19, align 8
  %129 = load i64, i64* %19, align 8
  %130 = sub nsw i64 0, %129
  store i64 %130, i64* %20, align 8
  %131 = load i64, i64* %20, align 8
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %119
  store i64 0, i64* %20, align 8
  br label %134

134:                                              ; preds = %133, %119
  %135 = load i64, i64* %19, align 8
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i64 0, i64* %19, align 8
  br label %138

138:                                              ; preds = %137, %134
  %139 = load i64, i64* %11, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %18, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i64 @MAX(i64 %139, i64 %144)
  store i64 %145, i64* %11, align 8
  %146 = load i64, i64* %18, align 8
  %147 = load i64, i64* %20, align 8
  %148 = sub nsw i64 %146, %147
  %149 = load i64, i64* %13, align 8
  %150 = load i64, i64* %19, align 8
  %151 = sub nsw i64 %149, %150
  %152 = call i64 @MIN(i64 %148, i64 %151)
  store i64 %152, i64* %17, align 8
  %153 = load i64, i64* %17, align 8
  %154 = icmp sgt i64 %153, 0
  br i1 %154, label %155, label %172

155:                                              ; preds = %138
  %156 = load i8*, i8** %6, align 8
  %157 = load i64, i64* %19, align 8
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = load i64, i64* %20, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i64, i64* %17, align 8
  %165 = call i32 @memcpy(i8* %158, i32* %163, i64 %164)
  %166 = load i64, i64* %17, align 8
  %167 = load i64, i64* %19, align 8
  %168 = load i64, i64* %8, align 8
  %169 = add nsw i64 %167, %168
  %170 = inttoptr i64 %169 to i8*
  %171 = call i32 @ASYNC_TRACE(i8* %170)
  br label %172

172:                                              ; preds = %155, %138
  br label %173

173:                                              ; preds = %172, %111, %108, %96
  br label %174

174:                                              ; preds = %173
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 5
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  store %struct.TYPE_12__* %177, %struct.TYPE_12__** %15, align 8
  br label %93

178:                                              ; preds = %93
  br label %179

179:                                              ; preds = %178, %84
  br label %180

180:                                              ; preds = %179, %54, %36
  %181 = load i32, i32* @ASYNC_MUTEX_QUEUE, align 4
  %182 = call i32 @async_mutex_leave(i32 %181)
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @SQLITE_OK, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %180
  %187 = load i64, i64* %11, align 8
  %188 = load i64, i64* %8, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %188, %190
  %192 = icmp slt i64 %187, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  %194 = load i32, i32* @SQLITE_IOERR_SHORT_READ, align 4
  store i32 %194, i32* %10, align 4
  br label %195

195:                                              ; preds = %193, %186, %180
  %196 = load i32, i32* %10, align 4
  ret i32 %196
}

declare dso_local i32 @async_mutex_enter(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @ASYNC_TRACE(i8*) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @async_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
