; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_disklessLoadMakeBackups.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_disklessLoadMakeBackups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8* }

@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@dbDictType = common dso_local global i32 0, align 4
@keyptrDictType = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @disklessLoadMakeBackups() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %4 = sext i32 %3 to i64
  %5 = mul i64 16, %4
  %6 = trunc i64 %5 to i32
  %7 = call %struct.TYPE_5__* @zmalloc(i32 %6)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %1, align 8
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %35, %0
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %15
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %19
  %21 = bitcast %struct.TYPE_5__* %16 to i8*
  %22 = bitcast %struct.TYPE_5__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  %23 = call i8* @dictCreate(i32* @dbDictType, i32* null)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i8* %23, i8** %28, align 8
  %29 = call i8* @dictCreate(i32* @keyptrDictType, i32* null)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i8* %29, i8** %34, align 8
  br label %35

35:                                               ; preds = %12
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %8

38:                                               ; preds = %8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  ret %struct.TYPE_5__* %39
}

declare dso_local %struct.TYPE_5__* @zmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @dictCreate(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
