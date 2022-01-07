; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuSetupCheckpoint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuSetupCheckpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32, i64, i32, %struct.TYPE_14__*, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_17__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_17__*)*, i64 (%struct.TYPE_17__*, i32)* }
%struct.TYPE_18__ = type { i64, i32 }

@SQLITE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"SELECT * FROM sqlite_master\00", align 1
@RBU_STAGE_CAPTURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"PRAGMA main.wal_checkpoint=restart\00", align 1
@SQLITE_INTERNAL = common dso_local global i32 0, align 4
@RBU_STAGE_CKPT = common dso_local global i64 0, align 8
@SQLITE_DONE = common dso_local global i64 0, align 8
@RBU_STAGE_DONE = common dso_local global i64 0, align 8
@SQLITE_SYNC_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_18__*)* @rbuSetupCheckpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbuSetupCheckpoint(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %10 = icmp eq %struct.TYPE_18__* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 6
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SQLITE_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @sqlite3_exec(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0)
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %19, %11
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SQLITE_OK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load i64, i64* @RBU_STAGE_CAPTURE, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 6
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @sqlite3_exec(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32 0)
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SQLITE_INTERNAL, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %46, %34
  br label %52

52:                                               ; preds = %51, %28
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SQLITE_OK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %89

58:                                               ; preds = %52
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %58
  %64 = load i64, i64* @RBU_STAGE_CKPT, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 6
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %68 = icmp ne %struct.TYPE_18__* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  br label %74

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %69
  %75 = phi i32 [ %72, %69 ], [ 0, %73 ]
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @rbuMalloc(%struct.TYPE_16__* %78, i32 %81)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = call i64 @rbuShmChecksum(%struct.TYPE_16__* %85)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 3
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %74, %58, %52
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SQLITE_OK, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %172

95:                                               ; preds = %89
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %102 = icmp ne %struct.TYPE_18__* %101, null
  br i1 %102, label %103, label %118

103:                                              ; preds = %100
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %106, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %103, %95
  %112 = load i64, i64* @SQLITE_DONE, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load i64, i64* @RBU_STAGE_DONE, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 6
  store i64 %115, i64* %117, align 8
  br label %171

118:                                              ; preds = %103, %100
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 5
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  store %struct.TYPE_17__* %123, %struct.TYPE_17__** %7, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 5
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  store %struct.TYPE_17__* %130, %struct.TYPE_17__** %8, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %140, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %143 = call i32 %141(%struct.TYPE_17__* %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %144, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %118
  %150 = load i32, i32* %6, align 4
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = sdiv i32 %150, %153
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 8
  br label %160

157:                                              ; preds = %118
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 4
  store i32 1, i32* %159, align 8
  br label %160

160:                                              ; preds = %157, %149
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load i64 (%struct.TYPE_17__*, i32)*, i64 (%struct.TYPE_17__*, i32)** %164, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %167 = load i32, i32* @SQLITE_SYNC_NORMAL, align 4
  %168 = call i64 %165(%struct.TYPE_17__* %166, i32 %167)
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  br label %171

171:                                              ; preds = %160, %111
  br label %172

172:                                              ; preds = %171, %89
  ret void
}

declare dso_local i8* @sqlite3_exec(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rbuMalloc(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @rbuShmChecksum(%struct.TYPE_16__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
