; ModuleID = '/home/carl/AnghaBench/redis/src/extr_config.c_configCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_config.c_configCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32 }

@server = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Only CONFIG GET is allowed during loading\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [86 x i8] c"GET <pattern> -- Return parameters matching the glob-like <pattern> and their values.\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"SET <parameter> <value> -- Set parameter to value.\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"RESETSTAT -- Reset statistics reported by INFO.\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"REWRITE -- Rewrite the configuration file.\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"resetstat\00", align 1
@shared = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"rewrite\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"The server is running without a config file\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"CONFIG REWRITE failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"Rewriting config file: %s\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"CONFIG REWRITE executed with success.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @configCommand(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca [5 x i8*], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 1), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %9, i64 1
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @strcasecmp(i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %6
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %18 = call i32 @addReplyError(%struct.TYPE_14__* %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %149

19:                                               ; preds = %6, %1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %27, i64 1
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @strcasecmp(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %24
  %35 = bitcast [5 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 40, i1 false)
  %36 = bitcast i8* %35 to [5 x i8*]*
  %37 = getelementptr inbounds [5 x i8*], [5 x i8*]* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3, i32 0, i32 0), i8** %37, align 16
  %38 = getelementptr inbounds [5 x i8*], [5 x i8*]* %36, i32 0, i32 1
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i8** %38, align 8
  %39 = getelementptr inbounds [5 x i8*], [5 x i8*]* %36, i32 0, i32 2
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), i8** %39, align 16
  %40 = getelementptr inbounds [5 x i8*], [5 x i8*]* %36, i32 0, i32 3
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0), i8** %40, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %42 = getelementptr inbounds [5 x i8*], [5 x i8*]* %3, i64 0, i64 0
  %43 = call i32 @addReplyHelp(%struct.TYPE_14__* %41, i8** %42)
  br label %149

44:                                               ; preds = %24, %19
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %47, i64 1
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @strcasecmp(i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %44
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 4
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %61 = call i32 @configSetCommand(%struct.TYPE_14__* %60)
  br label %148

62:                                               ; preds = %54, %44
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %65, i64 1
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @strcasecmp(i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %62
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %79 = call i32 @configGetCommand(%struct.TYPE_14__* %78)
  br label %147

80:                                               ; preds = %72, %62
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %83, i64 1
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @strcasecmp(i32 %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %80
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = call i32 (...) @resetServerStats()
  %97 = call i32 (...) @resetCommandTableStats()
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @shared, i32 0, i32 0), align 4
  %100 = call i32 @addReply(%struct.TYPE_14__* %98, i32 %99)
  br label %146

101:                                              ; preds = %90, %80
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %104, i64 1
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @strcasecmp(i32 %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %142, label %111

111:                                              ; preds = %101
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %142

116:                                              ; preds = %111
  %117 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 0), align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %121 = call i32 @addReplyError(%struct.TYPE_14__* %120, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  br label %149

122:                                              ; preds = %116
  %123 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 0), align 8
  %124 = call i32 @rewriteConfig(i32* %123)
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load i32, i32* @LL_WARNING, align 4
  %128 = load i32, i32* @errno, align 4
  %129 = call i32 @strerror(i32 %128)
  %130 = call i32 (i32, i8*, ...) @serverLog(i32 %127, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %129)
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %132 = load i32, i32* @errno, align 4
  %133 = call i32 @strerror(i32 %132)
  %134 = call i32 @addReplyErrorFormat(%struct.TYPE_14__* %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %133)
  br label %141

135:                                              ; preds = %122
  %136 = load i32, i32* @LL_WARNING, align 4
  %137 = call i32 (i32, i8*, ...) @serverLog(i32 %136, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @shared, i32 0, i32 0), align 4
  %140 = call i32 @addReply(%struct.TYPE_14__* %138, i32 %139)
  br label %141

141:                                              ; preds = %135, %126
  br label %145

142:                                              ; preds = %111, %101
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %144 = call i32 @addReplySubcommandSyntaxError(%struct.TYPE_14__* %143)
  br label %149

145:                                              ; preds = %141
  br label %146

146:                                              ; preds = %145, %95
  br label %147

147:                                              ; preds = %146, %77
  br label %148

148:                                              ; preds = %147, %59
  br label %149

149:                                              ; preds = %16, %119, %142, %148, %34
  ret void
}

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_14__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @addReplyHelp(%struct.TYPE_14__*, i8**) #1

declare dso_local i32 @configSetCommand(%struct.TYPE_14__*) #1

declare dso_local i32 @configGetCommand(%struct.TYPE_14__*) #1

declare dso_local i32 @resetServerStats(...) #1

declare dso_local i32 @resetCommandTableStats(...) #1

declare dso_local i32 @addReply(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @rewriteConfig(i32*) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @addReplySubcommandSyntaxError(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
