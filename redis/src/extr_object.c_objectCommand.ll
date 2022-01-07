; ModuleID = '/home/carl/AnghaBench/redis/src/extr_object.c_objectCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_object.c_objectCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_20__** }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [117 x i8] c"ENCODING <key> -- Return the kind of internal representation used in order to store the value associated with a key.\00", align 1
@.str.2 = private unnamed_addr constant [157 x i8] c"FREQ <key> -- Return the access frequency index of the key. The returned integer is proportional to the logarithm of the recent access frequency of the key.\00", align 1
@.str.3 = private unnamed_addr constant [136 x i8] c"IDLETIME <key> -- Return the idle time of the key, that is the approximated number of seconds elapsed since the last access to the key.\00", align 1
@.str.4 = private unnamed_addr constant [98 x i8] c"REFCOUNT <key> -- Return the number of references of the value associated with the specified key.\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"refcount\00", align 1
@shared = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"idletime\00", align 1
@server = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@MAXMEMORY_FLAG_LFU = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [168 x i8] c"An LFU maxmemory policy is selected, idle time not tracked. Please note that when switching between policies at runtime LRU and LFU data will take some time to adjust.\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.10 = private unnamed_addr constant [179 x i8] c"An LFU maxmemory policy is not selected, access frequency not tracked. Please note that when switching between policies at runtime LRU and LFU data will take some time to adjust.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @objectCommand(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca [5 x i8*], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %12, i64 1
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strcasecmp(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %9
  %20 = bitcast [5 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 40, i1 false)
  %21 = bitcast i8* %20 to [5 x i8*]*
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.1, i32 0, i32 0), i8** %22, align 16
  %23 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.2, i32 0, i32 0), i8** %23, align 8
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i32 0, i32 2
  store i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.3, i32 0, i32 0), i8** %24, align 16
  %25 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i32 0, i32 3
  store i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.4, i32 0, i32 0), i8** %25, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %27 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %28 = call i32 @addReplyHelp(%struct.TYPE_17__* %26, i8** %27)
  br label %200

29:                                               ; preds = %9, %1
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %32, i64 1
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strcasecmp(i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %66, label %39

39:                                               ; preds = %29
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %66

44:                                               ; preds = %39
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %48, i64 2
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @shared, i32 0, i32 0), align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.TYPE_16__* @objectCommandLookupOrReply(%struct.TYPE_17__* %45, %struct.TYPE_20__* %50, i32 %56)
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %3, align 8
  %58 = icmp eq %struct.TYPE_16__* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  br label %200

60:                                               ; preds = %44
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @addReplyLongLong(%struct.TYPE_17__* %61, i32 %64)
  br label %199

66:                                               ; preds = %39, %29
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %69, i64 1
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @strcasecmp(i32 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %104, label %76

76:                                               ; preds = %66
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 3
  br i1 %80, label %81, label %104

81:                                               ; preds = %76
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %85, i64 2
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %86, align 8
  %88 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @shared, i32 0, i32 0), align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.TYPE_16__* @objectCommandLookupOrReply(%struct.TYPE_17__* %82, %struct.TYPE_20__* %87, i32 %93)
  store %struct.TYPE_16__* %94, %struct.TYPE_16__** %3, align 8
  %95 = icmp eq %struct.TYPE_16__* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %81
  br label %200

97:                                               ; preds = %81
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strEncoding(i32 %101)
  %103 = call i32 @addReplyBulkCString(%struct.TYPE_17__* %98, i32 %102)
  br label %198

104:                                              ; preds = %76, %66
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %107, i64 1
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @strcasecmp(i32 %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %149, label %114

114:                                              ; preds = %104
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 3
  br i1 %118, label %119, label %149

119:                                              ; preds = %114
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %123, i64 2
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %124, align 8
  %126 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @shared, i32 0, i32 0), align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call %struct.TYPE_16__* @objectCommandLookupOrReply(%struct.TYPE_17__* %120, %struct.TYPE_20__* %125, i32 %131)
  store %struct.TYPE_16__* %132, %struct.TYPE_16__** %3, align 8
  %133 = icmp eq %struct.TYPE_16__* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %119
  br label %200

135:                                              ; preds = %119
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 0), align 4
  %137 = load i32, i32* @MAXMEMORY_FLAG_LFU, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %142 = call i32 @addReplyError(%struct.TYPE_17__* %141, i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.8, i64 0, i64 0))
  br label %200

143:                                              ; preds = %135
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %146 = call i32 @estimateObjectIdleTime(%struct.TYPE_16__* %145)
  %147 = sdiv i32 %146, 1000
  %148 = call i32 @addReplyLongLong(%struct.TYPE_17__* %144, i32 %147)
  br label %197

149:                                              ; preds = %114, %104
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %152, i64 1
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @strcasecmp(i32 %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %193, label %159

159:                                              ; preds = %149
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 3
  br i1 %163, label %164, label %193

164:                                              ; preds = %159
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %168, i64 2
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %169, align 8
  %171 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @shared, i32 0, i32 0), align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call %struct.TYPE_16__* @objectCommandLookupOrReply(%struct.TYPE_17__* %165, %struct.TYPE_20__* %170, i32 %176)
  store %struct.TYPE_16__* %177, %struct.TYPE_16__** %3, align 8
  %178 = icmp eq %struct.TYPE_16__* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %164
  br label %200

180:                                              ; preds = %164
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 0), align 4
  %182 = load i32, i32* @MAXMEMORY_FLAG_LFU, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %180
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %187 = call i32 @addReplyError(%struct.TYPE_17__* %186, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.10, i64 0, i64 0))
  br label %200

188:                                              ; preds = %180
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %191 = call i32 @LFUDecrAndReturn(%struct.TYPE_16__* %190)
  %192 = call i32 @addReplyLongLong(%struct.TYPE_17__* %189, i32 %191)
  br label %196

193:                                              ; preds = %159, %149
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %195 = call i32 @addReplySubcommandSyntaxError(%struct.TYPE_17__* %194)
  br label %196

196:                                              ; preds = %193, %188
  br label %197

197:                                              ; preds = %196, %143
  br label %198

198:                                              ; preds = %197, %97
  br label %199

199:                                              ; preds = %198, %60
  br label %200

200:                                              ; preds = %59, %96, %134, %140, %179, %185, %199, %19
  ret void
}

declare dso_local i32 @strcasecmp(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @addReplyHelp(%struct.TYPE_17__*, i8**) #1

declare dso_local %struct.TYPE_16__* @objectCommandLookupOrReply(%struct.TYPE_17__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @addReplyBulkCString(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @strEncoding(i32) #1

declare dso_local i32 @addReplyError(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @estimateObjectIdleTime(%struct.TYPE_16__*) #1

declare dso_local i32 @LFUDecrAndReturn(%struct.TYPE_16__*) #1

declare dso_local i32 @addReplySubcommandSyntaxError(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
