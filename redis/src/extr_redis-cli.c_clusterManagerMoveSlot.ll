; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerMoveSlot.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerMoveSlot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i8*, i32, i32, i32*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i64, i32, i32 }

@CLUSTER_MANAGER_OPT_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Moving slot %d from %s:%d to %s:%d: \00", align 1
@stdout = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@CLUSTER_MANAGER_OPT_VERBOSE = common dso_local global i32 0, align 4
@CLUSTER_MANAGER_OPT_COLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"importing\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"migrating\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@cluster_manager = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@CLUSTER_MANAGER_FLAG_SLAVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"CLUSTER SETSLOT %d %s %s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@CLUSTER_MANAGER_OPT_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32, i8**)* @clusterManagerMoveSlot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerMoveSlot(%struct.TYPE_21__* %0, %struct.TYPE_21__* %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @CLUSTER_MANAGER_OPT_QUIET, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %29, i32 %32, i8* %35, i32 %38)
  %40 = load i32, i32* @stdout, align 4
  %41 = call i32 @fflush(i32 %40)
  br label %42

42:                                               ; preds = %25, %5
  %43 = load i8**, i8*** %11, align 8
  %44 = icmp ne i8** %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i8**, i8*** %11, align 8
  store i8* null, i8** %46, align 8
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @config, i32 0, i32 0, i32 0), align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @config, i32 0, i32 0, i32 1), align 4
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @CLUSTER_MANAGER_OPT_VERBOSE, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @CLUSTER_MANAGER_OPT_COLD, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %47
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i8**, i8*** %11, align 8
  %63 = call i32 @clusterManagerSetSlot(%struct.TYPE_21__* %59, %struct.TYPE_21__* %60, i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %186

67:                                               ; preds = %58
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i8**, i8*** %11, align 8
  %72 = call i32 @clusterManagerSetSlot(%struct.TYPE_21__* %68, %struct.TYPE_21__* %69, i32 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %186

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %47
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i8**, i8*** %11, align 8
  %85 = call i32 @clusterManagerMigrateKeysInSlot(%struct.TYPE_21__* %78, %struct.TYPE_21__* %79, i32 %80, i32 %81, i32 %82, i32 %83, i8** %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @CLUSTER_MANAGER_OPT_QUIET, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %77
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %77
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  store i32 0, i32* %6, align 4
  br label %186

96:                                               ; preds = %92
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %167, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @cluster_manager, i32 0, i32 0), align 4
  %101 = call i32 @listRewind(i32 %100, i32* %17)
  br label %102

102:                                              ; preds = %165, %115, %99
  %103 = call %struct.TYPE_20__* @listNext(i32* %17)
  store %struct.TYPE_20__* %103, %struct.TYPE_20__** %18, align 8
  %104 = icmp ne %struct.TYPE_20__* %103, null
  br i1 %104, label %105, label %166

105:                                              ; preds = %102
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %107, align 8
  store %struct.TYPE_21__* %108, %struct.TYPE_21__** %19, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @CLUSTER_MANAGER_FLAG_SLAVE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %102

116:                                              ; preds = %105
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = call %struct.TYPE_19__* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_21__* %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  store %struct.TYPE_19__* %122, %struct.TYPE_19__** %20, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %124 = icmp ne %struct.TYPE_19__* %123, null
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %116
  store i32 0, i32* %6, align 4
  br label %186

129:                                              ; preds = %116
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %159

135:                                              ; preds = %129
  store i32 0, i32* %16, align 4
  %136 = load i8**, i8*** %11, align 8
  %137 = icmp ne i8** %136, null
  br i1 %137, label %138, label %158

138:                                              ; preds = %135
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 1
  %145 = trunc i64 %144 to i32
  %146 = call i8* @zmalloc(i32 %145)
  %147 = load i8**, i8*** %11, align 8
  store i8* %146, i8** %147, align 8
  %148 = load i8**, i8*** %11, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @strcpy(i8* %149, i32 %152)
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %155 = load i8**, i8*** %11, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(%struct.TYPE_21__* %154, i8* %156)
  br label %158

158:                                              ; preds = %138, %135
  br label %159

159:                                              ; preds = %158, %129
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %161 = call i32 @freeReplyObject(%struct.TYPE_19__* %160)
  %162 = load i32, i32* %16, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %159
  store i32 0, i32* %6, align 4
  br label %186

165:                                              ; preds = %159
  br label %102

166:                                              ; preds = %102
  br label %167

167:                                              ; preds = %166, %96
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @CLUSTER_MANAGER_OPT_UPDATE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %167
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 0, i32* %178, align 4
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 1, i32* %184, align 4
  br label %185

185:                                              ; preds = %172, %167
  store i32 1, i32* %6, align 4
  br label %186

186:                                              ; preds = %185, %164, %128, %95, %75, %66
  %187 = load i32, i32* %6, align 4
  ret i32 %187
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @clusterManagerSetSlot(%struct.TYPE_21__*, %struct.TYPE_21__*, i32, i8*, i8**) #1

declare dso_local i32 @clusterManagerMigrateKeysInSlot(%struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32, i32, i32, i8**) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_20__* @listNext(i32*) #1

declare dso_local %struct.TYPE_19__* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_21__*, i8*, i32, i8*, i32) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
