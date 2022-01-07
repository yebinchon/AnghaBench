; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_recyclebin.c_test_query_recyclebin.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_recyclebin.c_test_query_recyclebin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i8*, i32, i32*, i32*, i32*, i32, i32* }

@__const.test_query_recyclebin.info1 = private unnamed_addr constant %struct.TYPE_5__ { i32 20, i32 -559038737, i32 -559038737, i32 0, i32 0 }, align 4
@__const.test_query_recyclebin.info2 = private unnamed_addr constant %struct.TYPE_5__ { i32 20, i32 -559038737, i32 -559038737, i32 0, i32 0 }, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"GetTempPath failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"trash\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"GetTempFileName failed\0A\00", align 1
@S_OK = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"SHQueryRecycleBinA failed with error 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"i64Size not set\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"i64NumItems not set\0A\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"Failure to open file %s\0A\00", align 1
@FO_DELETE = common dso_local global i32 0, align 4
@FOF_FILESONLY = common dso_local global i32 0, align 4
@FOF_NOCONFIRMATION = common dso_local global i32 0, align 4
@FOF_SILENT = common dso_local global i32 0, align 4
@FOF_ALLOWUNDO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Deletion was not successful\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Expected recycle bin to have 0x%s bytes\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Expected recycle bin to have 0x%s items\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_query_recyclebin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_query_recyclebin() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_5__* @__const.test_query_recyclebin.info1 to i8*), i64 20, i1 false)
  %11 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_5__* @__const.test_query_recyclebin.info2 to i8*), i64 20, i1 false)
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = sub nsw i32 %12, 14
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %21 = trunc i64 %14 to i32
  %22 = call i32 @GetTempPathA(i32 %21, i8* %16)
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @GetTempFileNameA(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* %20)
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @strlen(i8* %20)
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %20, i64 %28
  store i8 0, i8* %29, align 1
  %30 = call i8* @pSHQueryRecycleBinA(i8* %20, %struct.TYPE_5__* %1)
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** @S_OK, align 8
  %33 = icmp eq i8* %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, -559038737
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, -559038737
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %47 = load i32, i32* @GENERIC_WRITE, align 4
  %48 = load i32, i32* @CREATE_ALWAYS, align 4
  %49 = call i64 @CreateFileA(i8* %20, i32 %47, i32 0, i32* null, i32 %48, i32 0, i32* null)
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %52 = icmp ne i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %20)
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @strlen(i8* %20)
  %57 = call i32 @WriteFile(i64 %55, i8* %20, i32 %56, i64* %3, i32* null)
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @CloseHandle(i64 %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 6
  store i32* null, i32** %60, align 8
  %61 = load i32, i32* @FO_DELETE, align 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i8* %20, i8** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  store i32* null, i32** %64, align 8
  %65 = load i32, i32* @FOF_FILESONLY, align 4
  %66 = load i32, i32* @FOF_NOCONFIRMATION, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @FOF_SILENT, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @FOF_ALLOWUNDO, align 4
  %71 = or i32 %69, %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i32* null, i32** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = call i32 @pSHFileOperationA(%struct.TYPE_6__* %6)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %80 = call i8* @pSHQueryRecycleBinA(i8* %20, %struct.TYPE_5__* %2)
  store i8* %80, i8** %4, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = load i8*, i8** @S_OK, align 8
  %83 = icmp eq i8* %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %3, align 8
  %94 = add nsw i64 %92, %93
  %95 = icmp eq i64 %89, %94
  %96 = zext i1 %95 to i32
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %3, align 8
  %101 = add nsw i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = call i8* @wine_dbgstr_longlong(i32 %102)
  %104 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %103)
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  %110 = icmp eq i32 %106, %109
  %111 = zext i1 %110 to i32
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  %115 = call i8* @wine_dbgstr_longlong(i32 %114)
  %116 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8* %115)
  %117 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %117)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ok(i32, i8*, ...) #3

declare dso_local i32 @GetTempPathA(i32, i8*) #3

declare dso_local i32 @GetTempFileNameA(i8*, i8*, i32, i8*) #3

declare dso_local i32 @strlen(i8*) #3

declare dso_local i8* @pSHQueryRecycleBinA(i8*, %struct.TYPE_5__*) #3

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #3

declare dso_local i32 @WriteFile(i64, i8*, i32, i64*, i32*) #3

declare dso_local i32 @CloseHandle(i64) #3

declare dso_local i32 @pSHFileOperationA(%struct.TYPE_6__*) #3

declare dso_local i8* @wine_dbgstr_longlong(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
