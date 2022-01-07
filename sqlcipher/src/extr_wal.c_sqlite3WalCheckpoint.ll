; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_wal.c_sqlite3WalCheckpoint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_wal.c_sqlite3WalCheckpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_15__*, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i64 }

@SQLITE_CHECKPOINT_PASSIVE = common dso_local global i32 0, align 4
@SQLITE_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"WAL%p: checkpoint begins\0A\00", align 1
@WAL_CKPT_LOCK = common dso_local global i32 0, align 4
@SQLITE_BUSY = common dso_local global i32 0, align 4
@WAL_WRITE_LOCK = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"WAL%p: checkpoint %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ok\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3WalCheckpoint(%struct.TYPE_18__* %0, i32* %1, i32 %2, i32 (i8*)* %3, i8* %4, i32 %5, i32 %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32 (i8*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32 (i8*)*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 (i8*)* %3, i32 (i8*)** %15, align 8
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32 0, i32* %23, align 4
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %24, align 4
  %27 = load i32 (i8*)*, i32 (i8*)** %15, align 8
  store i32 (i8*)* %27, i32 (i8*)** %25, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @SQLITE_CHECKPOINT_PASSIVE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %10
  %44 = load i32 (i8*)*, i32 (i8*)** %15, align 8
  %45 = icmp eq i32 (i8*)* %44, null
  br label %46

46:                                               ; preds = %43, %10
  %47 = phi i1 [ true, %10 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @SQLITE_READONLY, align 4
  store i32 %55, i32* %11, align 4
  br label %217

56:                                               ; preds = %46
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %58 = bitcast %struct.TYPE_18__* %57 to i8*
  %59 = call i32 @WALTRACE(i8* %58)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %61 = load i32, i32* @WAL_CKPT_LOCK, align 4
  %62 = call i32 @walLockExclusive(%struct.TYPE_18__* %60, i32 %61, i32 1)
  store i32 %62, i32* %22, align 4
  %63 = load i32, i32* %22, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %56
  %66 = load i32, i32* %22, align 4
  %67 = load i32, i32* @SQLITE_BUSY, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @testcase(i32 %69)
  %71 = load i32 (i8*)*, i32 (i8*)** %15, align 8
  %72 = icmp ne i32 (i8*)* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @testcase(i32 %73)
  %75 = load i32, i32* %22, align 4
  store i32 %75, i32* %11, align 4
  br label %217

76:                                               ; preds = %56
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @SQLITE_CHECKPOINT_PASSIVE, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %76
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %84 = load i32 (i8*)*, i32 (i8*)** %15, align 8
  %85 = load i8*, i8** %16, align 8
  %86 = load i32, i32* @WAL_WRITE_LOCK, align 4
  %87 = call i32 @walBusyLock(%struct.TYPE_18__* %83, i32 (i8*)* %84, i8* %85, i32 %86, i32 1)
  store i32 %87, i32* %22, align 4
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* @SQLITE_OK, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  br label %102

94:                                               ; preds = %82
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* @SQLITE_BUSY, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* @SQLITE_CHECKPOINT_PASSIVE, align 4
  store i32 %99, i32* %24, align 4
  store i32 (i8*)* null, i32 (i8*)** %25, align 8
  %100 = load i32, i32* @SQLITE_OK, align 4
  store i32 %100, i32* %22, align 4
  br label %101

101:                                              ; preds = %98, %94
  br label %102

102:                                              ; preds = %101, %91
  br label %103

103:                                              ; preds = %102, %76
  %104 = load i32, i32* %22, align 4
  %105 = load i32, i32* @SQLITE_OK, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %127

107:                                              ; preds = %103
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %109 = call i32 @walIndexReadHdr(%struct.TYPE_18__* %108, i32* %23)
  store i32 %109, i32* %22, align 4
  %110 = load i32, i32* %23, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %107
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp sge i32 %119, 3
  br i1 %120, label %121, label %126

121:                                              ; preds = %112
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = call i32 @sqlite3OsUnfetch(%struct.TYPE_15__* %124, i32 0, i32 0)
  br label %126

126:                                              ; preds = %121, %112, %107
  br label %127

127:                                              ; preds = %126, %103
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* @SQLITE_OK, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %183

131:                                              ; preds = %127
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %139 = call i32 @walPagesize(%struct.TYPE_18__* %138)
  %140 = load i32, i32* %18, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %143, i32* %22, align 4
  br label %153

144:                                              ; preds = %137, %131
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %146 = load i32*, i32** %13, align 8
  %147 = load i32, i32* %24, align 4
  %148 = load i32 (i8*)*, i32 (i8*)** %25, align 8
  %149 = load i8*, i8** %16, align 8
  %150 = load i32, i32* %17, align 4
  %151 = load i32*, i32** %19, align 8
  %152 = call i32 @walCheckpoint(%struct.TYPE_18__* %145, i32* %146, i32 %147, i32 (i8*)* %148, i8* %149, i32 %150, i32* %151)
  store i32 %152, i32* %22, align 4
  br label %153

153:                                              ; preds = %144, %142
  %154 = load i32, i32* %22, align 4
  %155 = load i32, i32* @SQLITE_OK, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %22, align 4
  %159 = load i32, i32* @SQLITE_BUSY, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %182

161:                                              ; preds = %157, %153
  %162 = load i32*, i32** %20, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %171

164:                                              ; preds = %161
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  %170 = load i32*, i32** %20, align 8
  store i32 %169, i32* %170, align 4
  br label %171

171:                                              ; preds = %164, %161
  %172 = load i32*, i32** %21, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %176 = call %struct.TYPE_19__* @walCkptInfo(%struct.TYPE_18__* %175)
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = load i32*, i32** %21, align 8
  store i32 %179, i32* %180, align 4
  br label %181

181:                                              ; preds = %174, %171
  br label %182

182:                                              ; preds = %181, %157
  br label %183

183:                                              ; preds = %182, %127
  %184 = load i32, i32* %23, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 2
  %189 = call i32 @memset(%struct.TYPE_16__* %188, i32 0, i32 4)
  br label %190

190:                                              ; preds = %186, %183
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %192 = call i32 @sqlite3WalEndWriteTransaction(%struct.TYPE_18__* %191)
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %194 = load i32, i32* @WAL_CKPT_LOCK, align 4
  %195 = call i32 @walUnlockExclusive(%struct.TYPE_18__* %193, i32 %194, i32 1)
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  store i32 0, i32* %197, align 8
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %199 = load i32, i32* %22, align 4
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %203 = call i32 @WALTRACE(i8* %202)
  %204 = load i32, i32* %22, align 4
  %205 = load i32, i32* @SQLITE_OK, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %190
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %24, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = load i32, i32* @SQLITE_BUSY, align 4
  br label %215

213:                                              ; preds = %207, %190
  %214 = load i32, i32* %22, align 4
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi i32 [ %212, %211 ], [ %214, %213 ]
  store i32 %216, i32* %11, align 4
  br label %217

217:                                              ; preds = %215, %65, %54
  %218 = load i32, i32* %11, align 4
  ret i32 %218
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @WALTRACE(i8*) #1

declare dso_local i32 @walLockExclusive(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @walBusyLock(%struct.TYPE_18__*, i32 (i8*)*, i8*, i32, i32) #1

declare dso_local i32 @walIndexReadHdr(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @sqlite3OsUnfetch(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @walPagesize(%struct.TYPE_18__*) #1

declare dso_local i32 @walCheckpoint(%struct.TYPE_18__*, i32*, i32, i32 (i8*)*, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_19__* @walCkptInfo(%struct.TYPE_18__*) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @sqlite3WalEndWriteTransaction(%struct.TYPE_18__*) #1

declare dso_local i32 @walUnlockExclusive(%struct.TYPE_18__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
