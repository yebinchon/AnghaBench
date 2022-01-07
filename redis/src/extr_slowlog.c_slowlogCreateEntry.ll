; ModuleID = '/home/carl/AnghaBench/redis/src/extr_slowlog.c_slowlogCreateEntry.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_slowlog.c_slowlogCreateEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32, i64, i8*, i8*, i64, i32, %struct.TYPE_15__** }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i32 }

@SLOWLOG_ENTRY_MAX_ARGC = common dso_local global i32 0, align 4
@OBJ_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"... (%d more arguments)\00", align 1
@SLOWLOG_ENTRY_MAX_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"... (%lu more bytes)\00", align 1
@OBJ_SHARED_REFCOUNT = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @slowlogCreateEntry(%struct.TYPE_16__* %0, %struct.TYPE_15__** %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__** %1, %struct.TYPE_15__*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = call i8* @zmalloc(i32 56)
  %14 = bitcast i8* %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %9, align 8
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @SLOWLOG_ENTRY_MAX_ARGC, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @SLOWLOG_ENTRY_MAX_ARGC, align 4
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %19, %4
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = trunc i64 %27 to i32
  %29 = call i8* @zmalloc(i32 %28)
  %30 = bitcast i8* %29 to %struct.TYPE_15__**
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 6
  store %struct.TYPE_15__** %30, %struct.TYPE_15__*** %32, align 8
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %162, %21
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %165

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = load i64, i64* @OBJ_STRING, align 8
  %48 = call i8* (...) @sdsempty()
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 %49, %50
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = call i8* @sdscatprintf(i8* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = call i8* @createObject(i64 %47, i8* %54)
  %56 = bitcast i8* %55 to %struct.TYPE_15__*
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 6
  %59 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %59, i64 %61
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %62, align 8
  br label %161

63:                                               ; preds = %41, %37
  %64 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %64, i64 %66
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @OBJ_STRING, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %124

73:                                               ; preds = %63
  %74 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %74, i64 %76
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = call i64 @sdsEncodedObject(%struct.TYPE_15__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %124

81:                                               ; preds = %73
  %82 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %82, i64 %84
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @sdslen(i32 %88)
  %90 = load i64, i64* @SLOWLOG_ENTRY_MAX_STRING, align 8
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %92, label %124

92:                                               ; preds = %81
  %93 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %93, i64 %95
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* @SLOWLOG_ENTRY_MAX_STRING, align 8
  %101 = call i8* @sdsnewlen(i32 %99, i64 %100)
  store i8* %101, i8** %12, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %103, i64 %105
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @sdslen(i32 %109)
  %111 = load i64, i64* @SLOWLOG_ENTRY_MAX_STRING, align 8
  %112 = sub i64 %110, %111
  %113 = call i8* @sdscatprintf(i8* %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %112)
  store i8* %113, i8** %12, align 8
  %114 = load i64, i64* @OBJ_STRING, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = call i8* @createObject(i64 %114, i8* %115)
  %117 = bitcast i8* %116 to %struct.TYPE_15__*
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 6
  %120 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %120, i64 %122
  store %struct.TYPE_15__* %117, %struct.TYPE_15__** %123, align 8
  br label %160

124:                                              ; preds = %81, %73, %63
  %125 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %125, i64 %127
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @OBJ_SHARED_REFCOUNT, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %146

134:                                              ; preds = %124
  %135 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %135, i64 %137
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 6
  %142 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %142, i64 %144
  store %struct.TYPE_15__* %139, %struct.TYPE_15__** %145, align 8
  br label %159

146:                                              ; preds = %124
  %147 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %6, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %147, i64 %149
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = call %struct.TYPE_15__* @dupStringObject(%struct.TYPE_15__* %151)
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 6
  %155 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %155, i64 %157
  store %struct.TYPE_15__* %152, %struct.TYPE_15__** %158, align 8
  br label %159

159:                                              ; preds = %146, %134
  br label %160

160:                                              ; preds = %159, %92
  br label %161

161:                                              ; preds = %160, %46
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %10, align 4
  br label %33

165:                                              ; preds = %33
  %166 = call i32 @time(i32* null)
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 8
  %169 = load i64, i64* %8, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 4
  %174 = sext i32 %172 to i64
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 4
  store i64 %174, i64* %176, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %178 = call i32 @getClientPeerId(%struct.TYPE_16__* %177)
  %179 = call i8* @sdsnew(i32 %178)
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %183, align 8
  %185 = icmp ne %struct.TYPE_13__* %184, null
  br i1 %185, label %186, label %193

186:                                              ; preds = %165
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i8* @sdsnew(i32 %191)
  br label %195

193:                                              ; preds = %165
  %194 = call i8* (...) @sdsempty()
  br label %195

195:                                              ; preds = %193, %186
  %196 = phi i8* [ %192, %186 ], [ %194, %193 ]
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 2
  store i8* %196, i8** %198, align 8
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  ret %struct.TYPE_14__* %199
}

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i8* @createObject(i64, i8*) #1

declare dso_local i8* @sdscatprintf(i8*, i8*, i64) #1

declare dso_local i8* @sdsempty(...) #1

declare dso_local i64 @sdsEncodedObject(%struct.TYPE_15__*) #1

declare dso_local i64 @sdslen(i32) #1

declare dso_local i8* @sdsnewlen(i32, i64) #1

declare dso_local %struct.TYPE_15__* @dupStringObject(%struct.TYPE_15__*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i8* @sdsnew(i32) #1

declare dso_local i32 @getClientPeerId(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
