; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_list.c_blockingPopGenericCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_list.c_blockingPopGenericCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_29__**, %struct.TYPE_31__* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_31__ = type { i32 }

@UNIT_SECONDS = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@OBJ_LIST = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_32__ zeroinitializer, align 4
@LIST_HEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lpop\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rpop\00", align 1
@NOTIFY_LIST = common dso_local global i32 0, align 4
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@server = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@CLIENT_MULTI = common dso_local global i32 0, align 4
@BLOCKED_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blockingPopGenericCommand(%struct.TYPE_30__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %11 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %12, align 8
  %14 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %13, i64 %18
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %21 = load i32, i32* @UNIT_SECONDS, align 4
  %22 = call i64 @getTimeoutFromObjectOrReply(%struct.TYPE_30__* %10, %struct.TYPE_29__* %20, i32* %6, i32 %21)
  %23 = load i64, i64* @C_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %196

26:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %27

27:                                               ; preds = %170, %26
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %173

34:                                               ; preds = %27
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %36, align 8
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %40, i64 %42
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %43, align 8
  %45 = call %struct.TYPE_29__* @lookupKeyWrite(%struct.TYPE_31__* %37, %struct.TYPE_29__* %44)
  store %struct.TYPE_29__* %45, %struct.TYPE_29__** %5, align 8
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %47 = icmp ne %struct.TYPE_29__* %46, null
  br i1 %47, label %48, label %169

48:                                               ; preds = %34
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @OBJ_LIST, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @shared, i32 0, i32 2), align 4
  %57 = call i32 @addReply(%struct.TYPE_30__* %55, i32 %56)
  br label %196

58:                                               ; preds = %48
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %60 = call i64 @listTypeLength(%struct.TYPE_29__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %167

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @LIST_HEAD, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %67, i8** %8, align 8
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call %struct.TYPE_29__* @listTypePop(%struct.TYPE_29__* %68, i32 %69)
  store %struct.TYPE_29__* %70, %struct.TYPE_29__** %9, align 8
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %72 = icmp ne %struct.TYPE_29__* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @serverAssert(i32 %73)
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %76 = call i32 @addReplyArrayLen(%struct.TYPE_30__* %75, i32 2)
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %80, i64 %82
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %83, align 8
  %85 = call i32 @addReplyBulk(%struct.TYPE_30__* %77, %struct.TYPE_29__* %84)
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %88 = call i32 @addReplyBulk(%struct.TYPE_30__* %86, %struct.TYPE_29__* %87)
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %90 = call i32 @decrRefCount(%struct.TYPE_29__* %89)
  %91 = load i32, i32* @NOTIFY_LIST, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %95, i64 %97
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %98, align 8
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @notifyKeyspaceEvent(i32 %91, i8* %92, %struct.TYPE_29__* %99, i32 %104)
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %107 = call i64 @listTypeLength(%struct.TYPE_29__* %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %135

109:                                              ; preds = %62
  %110 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %111, align 8
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %115, i64 %117
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %118, align 8
  %120 = call i32 @dbDelete(%struct.TYPE_31__* %112, %struct.TYPE_29__* %119)
  %121 = load i32, i32* @NOTIFY_GENERIC, align 4
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %124, i64 %126
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %127, align 8
  %129 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @notifyKeyspaceEvent(i32 %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_29__* %128, i32 %133)
  br label %135

135:                                              ; preds = %109, %62
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %137, align 8
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %141, i64 %143
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %144, align 8
  %146 = call i32 @signalModifiedKey(%struct.TYPE_31__* %138, %struct.TYPE_29__* %145)
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @server, i32 0, i32 0), align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @server, i32 0, i32 0), align 4
  %149 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @LIST_HEAD, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %135
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @shared, i32 0, i32 1), align 4
  br label %157

155:                                              ; preds = %135
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @shared, i32 0, i32 0), align 4
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %161, i64 %163
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %164, align 8
  %166 = call i32 @rewriteClientCommandVector(%struct.TYPE_30__* %149, i32 2, i32 %158, %struct.TYPE_29__* %165)
  br label %196

167:                                              ; preds = %58
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168, %34
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %7, align 4
  br label %27

173:                                              ; preds = %27
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @CLIENT_MULTI, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %173
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %182 = call i32 @addReplyNullArray(%struct.TYPE_30__* %181)
  br label %196

183:                                              ; preds = %173
  %184 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %185 = load i32, i32* @BLOCKED_LIST, align 4
  %186 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %188, i64 1
  %190 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sub nsw i32 %192, 2
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @blockForKeys(%struct.TYPE_30__* %184, i32 %185, %struct.TYPE_29__** %189, i32 %193, i32 %194, i32* null, i32* null)
  br label %196

196:                                              ; preds = %183, %180, %157, %54, %25
  ret void
}

declare dso_local i64 @getTimeoutFromObjectOrReply(%struct.TYPE_30__*, %struct.TYPE_29__*, i32*, i32) #1

declare dso_local %struct.TYPE_29__* @lookupKeyWrite(%struct.TYPE_31__*, %struct.TYPE_29__*) #1

declare dso_local i32 @addReply(%struct.TYPE_30__*, i32) #1

declare dso_local i64 @listTypeLength(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @listTypePop(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @addReplyBulk(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_29__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @dbDelete(%struct.TYPE_31__*, %struct.TYPE_29__*) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_31__*, %struct.TYPE_29__*) #1

declare dso_local i32 @rewriteClientCommandVector(%struct.TYPE_30__*, i32, i32, %struct.TYPE_29__*) #1

declare dso_local i32 @addReplyNullArray(%struct.TYPE_30__*) #1

declare dso_local i32 @blockForKeys(%struct.TYPE_30__*, i32, %struct.TYPE_29__**, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
