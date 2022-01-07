; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_getKeySizes.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_getKeySizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_12__ = type { i32, i64, i64, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_11__ = type { i8* }

@context = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"MEMORY\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"USAGE\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%s %s %s SAMPLES %u\00", align 1
@REDIS_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Error getting size for key '%s' (%d: %s)\0A\00", align 1
@REDIS_REPLY_INTEGER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"Warning:  %s on '%s' failed (may have changed type)\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"MEMORY USAGE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_11__**, i64*, i32, i32)* @getKeySizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getKeySizes(%struct.TYPE_12__* %0, %struct.TYPE_11__** %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %91, %5
  %14 = load i32, i32* %12, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %94

19:                                               ; preds = %13
  %20 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %21 = load i32, i32* %12, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %20, i64 %22
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %28 = load i32, i32* %12, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %27, i64 %29
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %19
  br label %91

39:                                               ; preds = %35, %26
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** @context, align 8
  %44 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %45 = load i32, i32* %12, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %44, i64 %46
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %53, i64 %55
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (%struct.TYPE_13__*, i8*, i8*, i8*, ...) @redisAppendCommand(%struct.TYPE_13__* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %50, i8* %59)
  br label %90

61:                                               ; preds = %39
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** @context, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %68, i64 %70
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (%struct.TYPE_13__*, i8*, i8*, i8*, ...) @redisAppendCommand(%struct.TYPE_13__* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  br label %89

76:                                               ; preds = %61
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** @context, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %80, i64 %82
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 (%struct.TYPE_13__*, i8*, i8*, i8*, ...) @redisAppendCommand(%struct.TYPE_13__* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %86, i32 %87)
  br label %89

89:                                               ; preds = %76, %64
  br label %90

90:                                               ; preds = %89, %42
  br label %91

91:                                               ; preds = %90, %38
  %92 = load i32, i32* %12, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %13

94:                                               ; preds = %13
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %197, %94
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ult i32 %96, %99
  br i1 %100, label %101, label %200

101:                                              ; preds = %95
  %102 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %103 = load i32, i32* %12, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %102, i64 %104
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = icmp ne %struct.TYPE_11__* %106, null
  br i1 %107, label %108, label %120

108:                                              ; preds = %101
  %109 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %110 = load i32, i32* %12, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %109, i64 %111
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %125, label %117

117:                                              ; preds = %108
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %117, %101
  %121 = load i64*, i64** %8, align 8
  %122 = load i32, i32* %12, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  store i64 0, i64* %124, align 8
  br label %197

125:                                              ; preds = %117, %108
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** @context, align 8
  %127 = bitcast %struct.TYPE_12__** %11 to i8**
  %128 = call i64 @redisGetReply(%struct.TYPE_13__* %126, i8** %127)
  %129 = load i64, i64* @REDIS_OK, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %150

131:                                              ; preds = %125
  %132 = load i32, i32* @stderr, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %135, i64 %137
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** @context, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** @context, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %141, i32 %144, i8* %147)
  %149 = call i32 @exit(i32 1) #3
  unreachable

150:                                              ; preds = %125
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @REDIS_REPLY_INTEGER, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %185

156:                                              ; preds = %150
  %157 = load i32, i32* @stderr, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %156
  %161 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %162 = load i32, i32* %12, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %161, i64 %163
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  br label %169

168:                                              ; preds = %156
  br label %169

169:                                              ; preds = %168, %160
  %170 = phi i8* [ %167, %160 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), %168 ]
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %173, i64 %175
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %170, i8* %179)
  %181 = load i64*, i64** %8, align 8
  %182 = load i32, i32* %12, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  store i64 0, i64* %184, align 8
  br label %193

185:                                              ; preds = %150
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load i64*, i64** %8, align 8
  %190 = load i32, i32* %12, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  store i64 %188, i64* %192, align 8
  br label %193

193:                                              ; preds = %185, %169
  br label %194

194:                                              ; preds = %193
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %196 = call i32 @freeReplyObject(%struct.TYPE_12__* %195)
  br label %197

197:                                              ; preds = %194, %120
  %198 = load i32, i32* %12, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %12, align 4
  br label %95

200:                                              ; preds = %95
  ret void
}

declare dso_local i32 @redisAppendCommand(%struct.TYPE_13__*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @redisGetReply(%struct.TYPE_13__*, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @freeReplyObject(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
