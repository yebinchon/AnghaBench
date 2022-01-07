; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_moduleCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_moduleCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"LIST -- Return a list of loaded modules.\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"LOAD <path> [arg ...] -- Load a module library from <path>.\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"UNLOAD <name> -- Unload a module.\00", align 1
@__const.moduleCommand.help = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@C_OK = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"Error loading the extension. Please check the server logs.\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"unload\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"no such module with that name\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"the module exports one or more module-side data types, can't unload\00", align 1
@.str.9 = private unnamed_addr constant [86 x i8] c"the module exports APIs used by other modules. Please unload them first and try again\00", align 1
@.str.10 = private unnamed_addr constant [73 x i8] c"the module has blocked clients. Please wait them unblocked and try again\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"operation not possible.\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Error unloading module: %s\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moduleCommand(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [4 x i8*], align 16
  %5 = alloca %struct.TYPE_11__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %10, i64 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %3, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = bitcast [4 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([4 x i8*]* @__const.moduleCommand.help to i8*), i64 32, i1 false)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %27 = call i32 @addReplyHelp(%struct.TYPE_12__* %25, i8** %26)
  br label %127

28:                                               ; preds = %19, %1
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strcasecmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %73, label %32

32:                                               ; preds = %28
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %35, 3
  br i1 %36, label %37, label %73

37:                                               ; preds = %32
  store %struct.TYPE_11__** null, %struct.TYPE_11__*** %5, align 8
  store i32 0, i32* %6, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 3
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 3
  store i32 %46, i32* %6, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %49, i64 3
  store %struct.TYPE_11__** %50, %struct.TYPE_11__*** %5, align 8
  br label %51

51:                                               ; preds = %42, %37
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %54, i64 2
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %60 = bitcast %struct.TYPE_11__** %59 to i8**
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @moduleLoad(i8* %58, i8** %60, i32 %61)
  %63 = load i64, i64* @C_OK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %51
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shared, i32 0, i32 0), align 4
  %68 = call i32 @addReply(%struct.TYPE_12__* %66, i32 %67)
  br label %72

69:                                               ; preds = %51
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = call i32 @addReplyError(%struct.TYPE_12__* %70, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %65
  br label %126

73:                                               ; preds = %32, %28
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @strcasecmp(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %109, label %77

77:                                               ; preds = %73
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %109

82:                                               ; preds = %77
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %85, i64 2
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @moduleUnload(i8* %89)
  %91 = load i64, i64* @C_OK, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %82
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shared, i32 0, i32 0), align 4
  %96 = call i32 @addReply(%struct.TYPE_12__* %94, i32 %95)
  br label %108

97:                                               ; preds = %82
  %98 = load i32, i32* @errno, align 4
  switch i32 %98, label %103 [
    i32 129, label %99
    i32 130, label %100
    i32 128, label %101
    i32 131, label %102
  ]

99:                                               ; preds = %97
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %104

100:                                              ; preds = %97
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %104

101:                                              ; preds = %97
  store i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  br label %104

102:                                              ; preds = %97
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.10, i64 0, i64 0), i8** %7, align 8
  br label %104

103:                                              ; preds = %97
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8** %7, align 8
  br label %104

104:                                              ; preds = %103, %102, %101, %100, %99
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 @addReplyErrorFormat(%struct.TYPE_12__* %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %104, %93
  br label %125

109:                                              ; preds = %77, %73
  %110 = load i8*, i8** %3, align 8
  %111 = call i32 @strcasecmp(i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %109
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %120 = call i32 @addReplyLoadedModules(%struct.TYPE_12__* %119)
  br label %124

121:                                              ; preds = %113, %109
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %123 = call i32 @addReplySubcommandSyntaxError(%struct.TYPE_12__* %122)
  br label %127

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124, %108
  br label %126

126:                                              ; preds = %125, %72
  br label %127

127:                                              ; preds = %121, %126, %23
  ret void
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @addReplyHelp(%struct.TYPE_12__*, i8**) #1

declare dso_local i64 @moduleLoad(i8*, i8**, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @addReplyError(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @moduleUnload(i8*) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @addReplyLoadedModules(%struct.TYPE_12__*) #1

declare dso_local i32 @addReplySubcommandSyntaxError(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
