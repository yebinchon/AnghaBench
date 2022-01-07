; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest8.c_doWriterCrash2.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest8.c_doWriterCrash2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [11 x i8] c"autowork=0\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"testdb.lsm\00", align 1
@TEST_CKSUM_BYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"testdb.lsm-shm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @doWriterCrash2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doWriterCrash2(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %11 = call i32 @tdb_lsm_open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1, i32** %4)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %119

14:                                               ; preds = %1
  %15 = load i32, i32* @TEST_CKSUM_BYTES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @TEST_CKSUM_BYTES, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = call %struct.TYPE_6__* @testMalloc(i32 24)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %6, align 8
  %23 = call %struct.TYPE_6__* @testMalloc(i32 24)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %7, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @setupDatabase1(i32* %24, i32** %5)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = bitcast %struct.TYPE_6__* %26 to i8*
  %28 = call i32 @testReadFile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* %27, i32 24, i32* %3)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @testCksumDatabase(i32* %29, i8* %18)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @testBegin(i32* %31, i32 2, i32* %3)
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @testWriteDatasourceRange(i32* %33, i32* %34, i32 30000, i32 200, i32* %3)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @testCommit(i32* %36, i32 0, i32* %3)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = bitcast %struct.TYPE_6__* %38 to i8*
  %40 = call i32 @testReadFile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* %39, i32 24, i32* %3)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @testCksumDatabase(i32* %41, i8* %21)
  %43 = call i32 @doLiveRecovery(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32* %3)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = call i32 @memcpy(%struct.TYPE_7__* %45, %struct.TYPE_7__* %47, i32 8)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = bitcast %struct.TYPE_6__* %51 to i8*
  %53 = call i32 @testWriteFile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* %52, i32 24, i32* %3)
  %54 = call i32 @doLiveRecovery(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %18, i32* %3)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = call i32 @memcpy(%struct.TYPE_7__* %56, %struct.TYPE_7__* %58, i32 8)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = call i32 @memcpy(%struct.TYPE_7__* %61, %struct.TYPE_7__* %63, i32 8)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = bitcast %struct.TYPE_6__* %67 to i8*
  %69 = call i32 @testWriteFile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* %68, i32 24, i32* %3)
  %70 = call i32 @doLiveRecovery(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32* %3)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = call i32 @memcpy(%struct.TYPE_7__* %72, %struct.TYPE_7__* %74, i32 8)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 5, i32* %80, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 6, i32* %85, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = bitcast %struct.TYPE_6__* %88 to i8*
  %90 = call i32 @testWriteFile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* %89, i32 24, i32* %3)
  %91 = call i32 @doLiveRecovery(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32* %3)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = call i32 @memcpy(%struct.TYPE_7__* %93, %struct.TYPE_7__* %95, i32 8)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  store i32 5, i32* %101, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 6, i32* %106, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = bitcast %struct.TYPE_6__* %109 to i8*
  %111 = call i32 @testWriteFile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* %110, i32 24, i32* %3)
  %112 = call i32 @doLiveRecovery(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32* %3)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = call i32 @testFree(%struct.TYPE_6__* %113)
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %116 = call i32 @testFree(%struct.TYPE_6__* %115)
  %117 = call i32 @testClose(i32** %4)
  %118 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %118)
  br label %119

119:                                              ; preds = %14, %1
  %120 = load i32, i32* %3, align 4
  %121 = load i32*, i32** %2, align 8
  store i32 %120, i32* %121, align 4
  ret void
}

declare dso_local i32 @tdb_lsm_open(i8*, i8*, i32, i32**) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_6__* @testMalloc(i32) #1

declare dso_local i32 @setupDatabase1(i32*, i32**) #1

declare dso_local i32 @testReadFile(i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @testCksumDatabase(i32*, i8*) #1

declare dso_local i32 @testBegin(i32*, i32, i32*) #1

declare dso_local i32 @testWriteDatasourceRange(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @testCommit(i32*, i32, i32*) #1

declare dso_local i32 @doLiveRecovery(i8*, i8*, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @testWriteFile(i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @testFree(%struct.TYPE_6__*) #1

declare dso_local i32 @testClose(i32**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
