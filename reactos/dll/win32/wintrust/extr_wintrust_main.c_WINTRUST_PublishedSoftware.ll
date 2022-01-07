; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_wintrust_main.c_WINTRUST_PublishedSoftware.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_wintrust_main.c_WINTRUST_PublishedSoftware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_10__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i32 }

@__const.WINTRUST_PublishedSoftware.fileInfo = private unnamed_addr constant %struct.TYPE_8__ { i32 16, i32 0, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [24 x i8] c"subjectFile->hFile: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"subjectFile->lpPath: %s\0A\00", align 1
@WTD_CHOICE_FILE = common dso_local global i32 0, align 4
@WTD_UI_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_9__*)* @WINTRUST_PublishedSoftware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WINTRUST_PublishedSoftware(i32 %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_8__, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %10 = bitcast %struct.TYPE_9__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 40, i1 false)
  %11 = bitcast i8* %10 to %struct.TYPE_9__*
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i32 40, i32* %12, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %8, align 8
  %16 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_8__* @__const.WINTRUST_PublishedSoftware.fileInfo to i8*), i64 16, i1 false)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @debugstr_w(i32 %23)
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %35, align 8
  %36 = load i32, i32* @WTD_CHOICE_FILE, align 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @WTD_UI_NONE, align 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @WINTRUST_DefaultVerifyAndClose(i32 %40, i32* %41, %struct.TYPE_9__* %7)
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i32) #2

declare dso_local i32 @WINTRUST_DefaultVerifyAndClose(i32, i32*, %struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
