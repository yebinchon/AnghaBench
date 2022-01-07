; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_set.c_smoveCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_set.c_smoveCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_28__*, %struct.TYPE_26__** }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { i32 }

@shared = common dso_local global %struct.TYPE_29__ zeroinitializer, align 4
@OBJ_SET = common dso_local global i32 0, align 4
@NOTIFY_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"srem\00", align 1
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@server = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"sadd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smoveCommand(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  %6 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %9 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %11, i64 1
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %14 = call %struct.TYPE_26__* @lookupKeyWrite(%struct.TYPE_28__* %8, %struct.TYPE_26__* %13)
  store %struct.TYPE_26__* %14, %struct.TYPE_26__** %3, align 8
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %20, i64 2
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %23 = call %struct.TYPE_26__* @lookupKeyWrite(%struct.TYPE_28__* %17, %struct.TYPE_26__* %22)
  store %struct.TYPE_26__* %23, %struct.TYPE_26__** %4, align 8
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %26, i64 3
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  store %struct.TYPE_26__* %28, %struct.TYPE_26__** %5, align 8
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %30 = icmp eq %struct.TYPE_26__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @shared, i32 0, i32 1), align 4
  %34 = call i32 @addReply(%struct.TYPE_27__* %32, i32 %33)
  br label %183

35:                                               ; preds = %1
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %38 = load i32, i32* @OBJ_SET, align 4
  %39 = call i64 @checkType(%struct.TYPE_27__* %36, %struct.TYPE_26__* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %43 = icmp ne %struct.TYPE_26__* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %47 = load i32, i32* @OBJ_SET, align 4
  %48 = call i64 @checkType(%struct.TYPE_27__* %45, %struct.TYPE_26__* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %35
  br label %183

51:                                               ; preds = %44, %41
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %54 = icmp eq %struct.TYPE_26__* %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @setTypeIsMember(%struct.TYPE_26__* %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @shared, i32 0, i32 0), align 4
  br label %67

65:                                               ; preds = %55
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @shared, i32 0, i32 1), align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = call i32 @addReply(%struct.TYPE_27__* %56, i32 %68)
  br label %183

70:                                               ; preds = %51
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @setTypeRemove(%struct.TYPE_26__* %71, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @shared, i32 0, i32 1), align 4
  %80 = call i32 @addReply(%struct.TYPE_27__* %78, i32 %79)
  br label %183

81:                                               ; preds = %70
  %82 = load i32, i32* @NOTIFY_SET, align 4
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %85, i64 1
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %86, align 8
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @notifyKeyspaceEvent(i32 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_26__* %87, i32 %92)
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %95 = call i64 @setTypeSize(%struct.TYPE_26__* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %81
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %99, align 8
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %103, i64 1
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %104, align 8
  %106 = call i32 @dbDelete(%struct.TYPE_28__* %100, %struct.TYPE_26__* %105)
  %107 = load i32, i32* @NOTIFY_GENERIC, align 4
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %110, i64 1
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %111, align 8
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @notifyKeyspaceEvent(i32 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_26__* %112, i32 %117)
  br label %119

119:                                              ; preds = %97, %81
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %121 = icmp ne %struct.TYPE_26__* %120, null
  br i1 %121, label %137, label %122

122:                                              ; preds = %119
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call %struct.TYPE_26__* @setTypeCreate(i32 %125)
  store %struct.TYPE_26__* %126, %struct.TYPE_26__** %4, align 8
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %128, align 8
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %132, i64 2
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %133, align 8
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %136 = call i32 @dbAdd(%struct.TYPE_28__* %129, %struct.TYPE_26__* %134, %struct.TYPE_26__* %135)
  br label %137

137:                                              ; preds = %122, %119
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %139, align 8
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %143, i64 1
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %144, align 8
  %146 = call i32 @signalModifiedKey(%struct.TYPE_28__* %140, %struct.TYPE_26__* %145)
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %148, align 8
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %152, i64 2
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %153, align 8
  %155 = call i32 @signalModifiedKey(%struct.TYPE_28__* %149, %struct.TYPE_26__* %154)
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0), align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0), align 4
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @setTypeAdd(%struct.TYPE_26__* %158, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %137
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0), align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0), align 4
  %167 = load i32, i32* @NOTIFY_SET, align 4
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %170, i64 2
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %171, align 8
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @notifyKeyspaceEvent(i32 %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_26__* %172, i32 %177)
  br label %179

179:                                              ; preds = %164, %137
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @shared, i32 0, i32 0), align 4
  %182 = call i32 @addReply(%struct.TYPE_27__* %180, i32 %181)
  br label %183

183:                                              ; preds = %179, %77, %67, %50, %31
  ret void
}

declare dso_local %struct.TYPE_26__* @lookupKeyWrite(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i32 @addReply(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_27__*, %struct.TYPE_26__*, i32) #1

declare dso_local i64 @setTypeIsMember(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @setTypeRemove(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_26__*, i32) #1

declare dso_local i64 @setTypeSize(%struct.TYPE_26__*) #1

declare dso_local i32 @dbDelete(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @setTypeCreate(i32) #1

declare dso_local i32 @dbAdd(%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i64 @setTypeAdd(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
