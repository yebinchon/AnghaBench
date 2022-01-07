; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_helloCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_helloCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { i32, i64, i32, i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i8* }

@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"-NOPROTO unsupported protocol version\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"AUTH\00", align 1
@C_ERR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"-WRONGPASS invalid username-password pair\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SETNAME\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Syntax error in HELLO option '%s'\00", align 1
@.str.5 = private unnamed_addr constant [207 x i8] c"-NOAUTH HELLO must be called with the client already authenticated, otherwise the HELLO AUTH <user> <pass> option can be used to authenticate the client and select the RESP protocol version at the same time\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"redis\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@REDIS_VERSION = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@server = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"sentinel\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"cluster\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"standalone\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"replica\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"modules\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @helloCommand(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %9, i64 1
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %12 = call i64 @getLongLongFromObject(%struct.TYPE_18__* %11, i64* %3)
  %13 = load i64, i64* @C_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = icmp slt i64 %16, 2
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %3, align 8
  %20 = icmp sgt i64 %19, 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %15, %1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %23 = call i32 @addReplyError(%struct.TYPE_16__* %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %180

24:                                               ; preds = %18
  store i32 2, i32* %4, align 4
  br label %25

25:                                               ; preds = %110, %24
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %113

31:                                               ; preds = %25
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %40, i64 %42
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @strcasecmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %80, label %50

50:                                               ; preds = %31
  %51 = load i32, i32* %5, align 4
  %52 = icmp sge i32 %51, 2
  br i1 %52, label %53, label %80

53:                                               ; preds = %50
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %57, i64 %60
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %61, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %65, i64 %68
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = call i64 @ACLAuthenticateUser(%struct.TYPE_16__* %54, %struct.TYPE_18__* %62, %struct.TYPE_18__* %70)
  %72 = load i64, i64* @C_ERR, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %53
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %76 = call i32 @addReplyError(%struct.TYPE_16__* %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %180

77:                                               ; preds = %53
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %4, align 4
  br label %109

80:                                               ; preds = %50, %31
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @strcasecmp(i8* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %104, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %84
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %91, i64 %94
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = call i64 @clientSetNameOrReply(%struct.TYPE_16__* %88, %struct.TYPE_18__* %96)
  %98 = load i64, i64* @C_ERR, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  br label %180

101:                                              ; preds = %87
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %108

104:                                              ; preds = %84, %80
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @addReplyErrorFormat(%struct.TYPE_16__* %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %106)
  br label %180

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %77
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %25

113:                                              ; preds = %25
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %120 = call i32 @addReplyError(%struct.TYPE_16__* %119, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.5, i64 0, i64 0))
  br label %180

121:                                              ; preds = %113
  %122 = load i64, i64* %3, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %126 = call i32 @addReplyMapLen(%struct.TYPE_16__* %125, i32 7)
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %128 = call i32 @addReplyBulkCString(%struct.TYPE_16__* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %130 = call i32 @addReplyBulkCString(%struct.TYPE_16__* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %132 = call i32 @addReplyBulkCString(%struct.TYPE_16__* %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %134 = load i8*, i8** @REDIS_VERSION, align 8
  %135 = call i32 @addReplyBulkCString(%struct.TYPE_16__* %133, i8* %134)
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %137 = call i32 @addReplyBulkCString(%struct.TYPE_16__* %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %139 = call i32 @addReplyLongLong(%struct.TYPE_16__* %138, i32 3)
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %141 = call i32 @addReplyBulkCString(%struct.TYPE_16__* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @addReplyLongLong(%struct.TYPE_16__* %142, i32 %145)
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %148 = call i32 @addReplyBulkCString(%struct.TYPE_16__* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 1), align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %121
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %153 = call i32 @addReplyBulkCString(%struct.TYPE_16__* %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %121
  %155 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 2), align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %159 = call i32 @addReplyBulkCString(%struct.TYPE_16__* %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %163

160:                                              ; preds = %154
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %162 = call i32 @addReplyBulkCString(%struct.TYPE_16__* %161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %157
  %164 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 1), align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %175, label %166

166:                                              ; preds = %163
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %168 = call i32 @addReplyBulkCString(%struct.TYPE_16__* %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %170 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 8
  %171 = icmp ne i64 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)
  %174 = call i32 @addReplyBulkCString(%struct.TYPE_16__* %169, i8* %173)
  br label %175

175:                                              ; preds = %166, %163
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %177 = call i32 @addReplyBulkCString(%struct.TYPE_16__* %176, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %179 = call i32 @addReplyLoadedModules(%struct.TYPE_16__* %178)
  br label %180

180:                                              ; preds = %175, %118, %104, %100, %74, %21
  ret void
}

declare dso_local i64 @getLongLongFromObject(%struct.TYPE_18__*, i64*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @ACLAuthenticateUser(%struct.TYPE_16__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i64 @clientSetNameOrReply(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @addReplyMapLen(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @addReplyBulkCString(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @addReplyLoadedModules(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
