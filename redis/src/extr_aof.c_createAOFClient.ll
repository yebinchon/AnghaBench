; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_createAOFClient.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_createAOFClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, i8*, i32*, i32*, i8*, i64, i64, i32, i32, i64, i64, i32*, i64, i64, i32, i32*, i32*, i32 }

@CLIENT_ID_AOF = common dso_local global i32 0, align 4
@BLOCKED_NONE = common dso_local global i32 0, align 4
@SLAVE_STATE_WAIT_BGSAVE_START = common dso_local global i32 0, align 4
@freeClientReplyValue = common dso_local global i32 0, align 4
@dupClientReplyValue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.client* @createAOFClient() #0 {
  %1 = alloca %struct.client*, align 8
  %2 = call %struct.client* @zmalloc(i32 136)
  store %struct.client* %2, %struct.client** %1, align 8
  %3 = load %struct.client*, %struct.client** %1, align 8
  %4 = call i32 @selectDb(%struct.client* %3, i32 0)
  %5 = load i32, i32* @CLIENT_ID_AOF, align 4
  %6 = load %struct.client*, %struct.client** %1, align 8
  %7 = getelementptr inbounds %struct.client, %struct.client* %6, i32 0, i32 17
  store i32 %5, i32* %7, align 8
  %8 = load %struct.client*, %struct.client** %1, align 8
  %9 = getelementptr inbounds %struct.client, %struct.client* %8, i32 0, i32 16
  store i32* null, i32** %9, align 8
  %10 = load %struct.client*, %struct.client** %1, align 8
  %11 = getelementptr inbounds %struct.client, %struct.client* %10, i32 0, i32 15
  store i32* null, i32** %11, align 8
  %12 = call i32 (...) @sdsempty()
  %13 = load %struct.client*, %struct.client** %1, align 8
  %14 = getelementptr inbounds %struct.client, %struct.client* %13, i32 0, i32 14
  store i32 %12, i32* %14, align 8
  %15 = load %struct.client*, %struct.client** %1, align 8
  %16 = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 13
  store i64 0, i64* %16, align 8
  %17 = load %struct.client*, %struct.client** %1, align 8
  %18 = getelementptr inbounds %struct.client, %struct.client* %17, i32 0, i32 12
  store i64 0, i64* %18, align 8
  %19 = load %struct.client*, %struct.client** %1, align 8
  %20 = getelementptr inbounds %struct.client, %struct.client* %19, i32 0, i32 11
  store i32* null, i32** %20, align 8
  %21 = load %struct.client*, %struct.client** %1, align 8
  %22 = getelementptr inbounds %struct.client, %struct.client* %21, i32 0, i32 10
  store i64 0, i64* %22, align 8
  %23 = load %struct.client*, %struct.client** %1, align 8
  %24 = getelementptr inbounds %struct.client, %struct.client* %23, i32 0, i32 9
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @BLOCKED_NONE, align 4
  %26 = load %struct.client*, %struct.client** %1, align 8
  %27 = getelementptr inbounds %struct.client, %struct.client* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @SLAVE_STATE_WAIT_BGSAVE_START, align 4
  %29 = load %struct.client*, %struct.client** %1, align 8
  %30 = getelementptr inbounds %struct.client, %struct.client* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = call i8* (...) @listCreate()
  %32 = load %struct.client*, %struct.client** %1, align 8
  %33 = getelementptr inbounds %struct.client, %struct.client* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.client*, %struct.client** %1, align 8
  %35 = getelementptr inbounds %struct.client, %struct.client* %34, i32 0, i32 6
  store i64 0, i64* %35, align 8
  %36 = load %struct.client*, %struct.client** %1, align 8
  %37 = getelementptr inbounds %struct.client, %struct.client* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = call i8* (...) @listCreate()
  %39 = load %struct.client*, %struct.client** %1, align 8
  %40 = getelementptr inbounds %struct.client, %struct.client* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load %struct.client*, %struct.client** %1, align 8
  %42 = getelementptr inbounds %struct.client, %struct.client* %41, i32 0, i32 3
  store i32* null, i32** %42, align 8
  %43 = load %struct.client*, %struct.client** %1, align 8
  %44 = getelementptr inbounds %struct.client, %struct.client* %43, i32 0, i32 0
  store i32 2, i32* %44, align 8
  %45 = load %struct.client*, %struct.client** %1, align 8
  %46 = getelementptr inbounds %struct.client, %struct.client* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  %47 = load %struct.client*, %struct.client** %1, align 8
  %48 = getelementptr inbounds %struct.client, %struct.client* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* @freeClientReplyValue, align 4
  %51 = call i32 @listSetFreeMethod(i8* %49, i32 %50)
  %52 = load %struct.client*, %struct.client** %1, align 8
  %53 = getelementptr inbounds %struct.client, %struct.client* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @dupClientReplyValue, align 4
  %56 = call i32 @listSetDupMethod(i8* %54, i32 %55)
  %57 = load %struct.client*, %struct.client** %1, align 8
  %58 = call i32 @initClientMultiState(%struct.client* %57)
  %59 = load %struct.client*, %struct.client** %1, align 8
  ret %struct.client* %59
}

declare dso_local %struct.client* @zmalloc(i32) #1

declare dso_local i32 @selectDb(%struct.client*, i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i8* @listCreate(...) #1

declare dso_local i32 @listSetFreeMethod(i8*, i32) #1

declare dso_local i32 @listSetDupMethod(i8*, i32) #1

declare dso_local i32 @initClientMultiState(%struct.client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
