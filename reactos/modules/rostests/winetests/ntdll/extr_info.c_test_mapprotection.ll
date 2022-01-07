; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_mapprotection.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_mapprotection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }

@MEM_EXECUTE_OPTION_ENABLE = common dso_local global i32 0, align 4
@ProcessExecuteFlags = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Invalid Parameter on ProcessExecuteFlags query?\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_INVALID_INFO_CLASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Expected STATUS_SUCCESS, got %08x\0A\00", align 1
@STANDARD_RIGHTS_REQUIRED = common dso_local global i32 0, align 4
@SECTION_QUERY = common dso_local global i32 0, align 4
@SECTION_MAP_READ = common dso_local global i32 0, align 4
@SECTION_MAP_WRITE = common dso_local global i32 0, align 4
@SECTION_MAP_EXECUTE = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@SEC_COMMIT = common dso_local global i32 0, align 4
@SEC_NOCACHE = common dso_local global i32 0, align 4
@ViewShare = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"trying to execute code in the readwrite only mapped anon file...\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"...done.\0A\00", align 1
@MemoryBasicInformation = common dso_local global i32 0, align 4
@PAGE_NOCACHE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"addr.Protect is not PAGE_READWRITE, but 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mapprotection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mapprotection() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca void ()*, align 8
  %13 = load i32, i32* @MEM_EXECUTE_OPTION_ENABLE, align 4
  store i32 %13, i32* %6, align 4
  %14 = call i32 (...) @GetCurrentProcess()
  %15 = load i32, i32* @ProcessExecuteFlags, align 4
  %16 = call i32 @pNtQueryInformationProcess(i32 %14, i32 %15, i32* %4, i32 4, i32* %5)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %0
  %21 = call i32 @skip(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %137

22:                                               ; preds = %0
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @STATUS_SUCCESS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @STATUS_INVALID_INFO_CLASS, align 4
  %29 = icmp eq i32 %27, %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ true, %22 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = call i32 (...) @GetCurrentProcess()
  %36 = load i32, i32* @ProcessExecuteFlags, align 4
  %37 = call i32 @pNtSetInformationProcess(i32 %35, i32 %36, i32* %6, i32 4)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @STATUS_SUCCESS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @STATUS_INVALID_INFO_CLASS, align 4
  %44 = icmp eq i32 %42, %43
  br label %45

45:                                               ; preds = %41, %30
  %46 = phi i1 [ true, %30 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 8192, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @STANDARD_RIGHTS_REQUIRED, align 4
  %55 = load i32, i32* @SECTION_QUERY, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @SECTION_MAP_READ, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SECTION_MAP_WRITE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @SECTION_MAP_EXECUTE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @PAGE_READWRITE, align 4
  %64 = load i32, i32* @SEC_COMMIT, align 4
  %65 = load i32, i32* @SEC_NOCACHE, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @pNtCreateSection(i32* %1, i32 %62, i32* null, %struct.TYPE_9__* %7, i32 %63, i32 %66, i32 0)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @STATUS_SUCCESS, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %9, align 4
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  store i32 8192, i32* %11, align 4
  store i8* null, i8** %2, align 8
  %78 = load i32, i32* %1, align 4
  %79 = call i32 (...) @GetCurrentProcess()
  %80 = load i32, i32* @ViewShare, align 4
  %81 = load i32, i32* @PAGE_READWRITE, align 4
  %82 = call i32 @pNtMapViewOfSection(i32 %78, i32 %79, i8** %2, i32 0, i32 0, %struct.TYPE_9__* %8, i32* %11, i32 %80, i32 0, i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @STATUS_SUCCESS, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load i8*, i8** %2, align 8
  store i8 -61, i8* %89, align 1
  %90 = call i32 @trace(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i8*, i8** %2, align 8
  %92 = bitcast i8* %91 to void ()*
  store void ()* %92, void ()** %12, align 8
  %93 = load void ()*, void ()** %12, align 8
  call void %93()
  %94 = call i32 @trace(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %95 = call i32 (...) @GetCurrentProcess()
  %96 = load i8*, i8** %2, align 8
  %97 = load i32, i32* @MemoryBasicInformation, align 4
  %98 = call i32 @pNtQueryVirtualMemory(i32 %95, i8* %96, i32 %97, %struct.TYPE_8__* %3, i32 4, i32* %10)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @STATUS_SUCCESS, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %9, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp eq i64 %106, 4
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %9, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @PAGE_NOCACHE, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  %116 = load i32, i32* @PAGE_READWRITE, align 4
  %117 = icmp eq i32 %115, %116
  %118 = zext i1 %117 to i32
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %120)
  %122 = call i32 (...) @GetCurrentProcess()
  %123 = load i8*, i8** %2, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 4176
  %125 = call i32 @pNtUnmapViewOfSection(i32 %122, i8* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @STATUS_SUCCESS, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %9, align 4
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %1, align 4
  %133 = call i32 @pNtClose(i32 %132)
  %134 = call i32 (...) @GetCurrentProcess()
  %135 = load i32, i32* @ProcessExecuteFlags, align 4
  %136 = call i32 @pNtSetInformationProcess(i32 %134, i32 %135, i32* %4, i32 4)
  br label %137

137:                                              ; preds = %45, %20
  ret void
}

declare dso_local i32 @pNtQueryInformationProcess(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pNtSetInformationProcess(i32, i32, i32*, i32) #1

declare dso_local i32 @pNtCreateSection(i32*, i32, i32*, %struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @pNtMapViewOfSection(i32, i32, i8**, i32, i32, %struct.TYPE_9__*, i32*, i32, i32, i32) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @pNtQueryVirtualMemory(i32, i8*, i32, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @pNtUnmapViewOfSection(i32, i8*) #1

declare dso_local i32 @pNtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
