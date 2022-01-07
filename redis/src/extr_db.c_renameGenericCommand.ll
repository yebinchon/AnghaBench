; ModuleID = '/home/carl/AnghaBench/redis/src/extr_db.c_renameGenericCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_db.c_renameGenericCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_23__*, %struct.TYPE_24__** }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@shared = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"rename_from\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"rename_to\00", align 1
@server = common dso_local global %struct.TYPE_26__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @renameGenericCommand(%struct.TYPE_22__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %10, i64 1
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %17, i64 2
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @sdscmp(i32 %14, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %29, i64 1
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @shared, i32 0, i32 3), align 4
  %33 = call i32* @lookupKeyWriteOrReply(%struct.TYPE_22__* %26, %struct.TYPE_24__* %31, i32 %32)
  store i32* %33, i32** %5, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %180

36:                                               ; preds = %25
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @shared, i32 0, i32 2), align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @shared, i32 0, i32 0), align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = call i32 @addReply(%struct.TYPE_22__* %40, i32 %48)
  br label %180

50:                                               ; preds = %36
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @incrRefCount(i32* %51)
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %54, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %58, i64 1
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %59, align 8
  %61 = call i64 @getExpire(%struct.TYPE_23__* %55, %struct.TYPE_24__* %60)
  store i64 %61, i64* %6, align 8
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %63, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %67, i64 2
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %68, align 8
  %70 = call i32* @lookupKeyWrite(%struct.TYPE_23__* %64, %struct.TYPE_24__* %69)
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %91

72:                                               ; preds = %50
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @decrRefCount(i32* %76)
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @shared, i32 0, i32 2), align 4
  %80 = call i32 @addReply(%struct.TYPE_22__* %78, i32 %79)
  br label %180

81:                                               ; preds = %72
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %83, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %87, i64 2
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %88, align 8
  %90 = call i32 @dbDelete(%struct.TYPE_23__* %84, %struct.TYPE_24__* %89)
  br label %91

91:                                               ; preds = %81, %50
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %93, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %97, i64 2
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %98, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @dbAdd(%struct.TYPE_23__* %94, %struct.TYPE_24__* %99, i32* %100)
  %102 = load i64, i64* %6, align 8
  %103 = icmp ne i64 %102, -1
  br i1 %103, label %104, label %116

104:                                              ; preds = %91
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %107, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %111, i64 2
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %112, align 8
  %114 = load i64, i64* %6, align 8
  %115 = call i32 @setExpire(%struct.TYPE_22__* %105, %struct.TYPE_23__* %108, %struct.TYPE_24__* %113, i64 %114)
  br label %116

116:                                              ; preds = %104, %91
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %118, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %122, i64 1
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %123, align 8
  %125 = call i32 @dbDelete(%struct.TYPE_23__* %119, %struct.TYPE_24__* %124)
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %127, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %131, i64 1
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %132, align 8
  %134 = call i32 @signalModifiedKey(%struct.TYPE_23__* %128, %struct.TYPE_24__* %133)
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %136, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %140, i64 2
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %141, align 8
  %143 = call i32 @signalModifiedKey(%struct.TYPE_23__* %137, %struct.TYPE_24__* %142)
  %144 = load i32, i32* @NOTIFY_GENERIC, align 4
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %147, i64 1
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %148, align 8
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @notifyKeyspaceEvent(i32 %144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %149, i32 %154)
  %156 = load i32, i32* @NOTIFY_GENERIC, align 4
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %159, i64 2
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %160, align 8
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @notifyKeyspaceEvent(i32 %156, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_24__* %161, i32 %166)
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @server, i32 0, i32 0), align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @server, i32 0, i32 0), align 4
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %171 = load i32, i32* %4, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %116
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @shared, i32 0, i32 1), align 4
  br label %177

175:                                              ; preds = %116
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @shared, i32 0, i32 0), align 4
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi i32 [ %174, %173 ], [ %176, %175 ]
  %179 = call i32 @addReply(%struct.TYPE_22__* %170, i32 %178)
  br label %180

180:                                              ; preds = %177, %75, %47, %35
  ret void
}

declare dso_local i64 @sdscmp(i32, i32) #1

declare dso_local i32* @lookupKeyWriteOrReply(%struct.TYPE_22__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @incrRefCount(i32*) #1

declare dso_local i64 @getExpire(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32* @lookupKeyWrite(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @decrRefCount(i32*) #1

declare dso_local i32 @dbDelete(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @dbAdd(%struct.TYPE_23__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @setExpire(%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_24__*, i64) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
