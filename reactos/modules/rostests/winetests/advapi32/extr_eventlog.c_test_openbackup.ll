; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_eventlog.c_test_openbackup.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_eventlog.c_test_openbackup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_openbackup.backup = private unnamed_addr constant [11 x i8] c"backup.evt\00", align 1
@__const.test_openbackup.text = private unnamed_addr constant [15 x i8] c"Just some text\00", align 1
@.str = private unnamed_addr constant [24 x i8] c"Didn't expect a handle\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Expected ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"idontexist.evt\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Expected ERROR_FILE_NOT_FOUND, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"IDontExist\00", align 1
@RPC_S_SERVER_UNAVAILABLE = common dso_local global i64 0, align 8
@RPC_S_INVALID_NET_ADDR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"Expected RPC_S_SERVER_UNAVAILABLE, got %d\0A\00", align 1
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [46 x i8] c"We don't have a backup eventlog to work with\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Expected a handle\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Didn't expect the same handle\0A\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_NEW = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@ERROR_EVENTLOG_FILE_CORRUPT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [42 x i8] c"Expected ERROR_NOT_ENOUGH_MEMORY, got %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"Expected ERROR_EVENTLOG_FILE_CORRUPT, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_openbackup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_openbackup() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [11 x i8], align 1
  %6 = alloca [15 x i8], align 1
  %7 = bitcast [11 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.test_openbackup.backup, i32 0, i32 0), i64 11, i1 false)
  %8 = bitcast [15 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.test_openbackup.text, i32 0, i32 0), i64 15, i1 false)
  %9 = call i32 @SetLastError(i32 -559038737)
  %10 = call i32* @OpenBackupEventLogA(i8* null, i8* null)
  store i32* %10, i32** %1, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = call i64 (...) @GetLastError()
  %16 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 (...) @GetLastError()
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = call i32 @SetLastError(i32 -559038737)
  %22 = call i32* @OpenBackupEventLogA(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32* %22, i32** %1, align 8
  %23 = load i32*, i32** %1, align 8
  %24 = icmp eq i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = call i64 (...) @GetLastError()
  %28 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 (...) @GetLastError()
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %31)
  %33 = call i32 @SetLastError(i32 -559038737)
  %34 = call i32* @OpenBackupEventLogA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* null)
  store i32* %34, i32** %1, align 8
  %35 = load i32*, i32** %1, align 8
  %36 = icmp eq i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %39 = call i64 (...) @GetLastError()
  %40 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 (...) @GetLastError()
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = call i32 @SetLastError(i32 -559038737)
  %46 = call i32* @OpenBackupEventLogA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32* %46, i32** %1, align 8
  %47 = load i32*, i32** %1, align 8
  %48 = icmp eq i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %51 = call i64 (...) @GetLastError()
  %52 = load i64, i64* @RPC_S_SERVER_UNAVAILABLE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %0
  %55 = call i64 (...) @GetLastError()
  %56 = load i64, i64* @RPC_S_INVALID_NET_ADDR, align 8
  %57 = icmp eq i64 %55, %56
  br label %58

58:                                               ; preds = %54, %0
  %59 = phi i1 [ true, %0 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = call i64 (...) @GetLastError()
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i64 %61)
  %63 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  %64 = call i64 @create_backup(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %124

66:                                               ; preds = %58
  %67 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  %68 = call i64 @GetFileAttributesA(i8* %67)
  %69 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 @skip(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %180

73:                                               ; preds = %66
  %74 = call i32 @SetLastError(i32 -559038737)
  %75 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  %76 = call i32* @OpenBackupEventLogA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  store i32* %76, i32** %1, align 8
  %77 = load i32*, i32** %1, align 8
  %78 = icmp eq i32* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %81 = call i64 (...) @GetLastError()
  %82 = load i64, i64* @RPC_S_SERVER_UNAVAILABLE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %73
  %85 = call i64 (...) @GetLastError()
  %86 = load i64, i64* @RPC_S_INVALID_NET_ADDR, align 8
  %87 = icmp eq i64 %85, %86
  br label %88

88:                                               ; preds = %84, %73
  %89 = phi i1 [ true, %73 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  %91 = call i64 (...) @GetLastError()
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i64 %91)
  %93 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  %94 = call i32* @OpenBackupEventLogA(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* %93)
  store i32* %94, i32** %1, align 8
  %95 = load i32*, i32** %1, align 8
  %96 = icmp ne i32* %95, null
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %99 = load i32*, i32** %1, align 8
  %100 = call i32 @CloseEventLog(i32* %99)
  %101 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  %102 = call i32* @OpenBackupEventLogA(i8* null, i8* %101)
  store i32* %102, i32** %1, align 8
  %103 = load i32*, i32** %1, align 8
  %104 = icmp ne i32* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %107 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  %108 = call i32* @OpenBackupEventLogA(i8* null, i8* %107)
  store i32* %108, i32** %2, align 8
  %109 = load i32*, i32** %2, align 8
  %110 = icmp ne i32* %109, null
  %111 = zext i1 %110 to i32
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %113 = load i32*, i32** %2, align 8
  %114 = load i32*, i32** %1, align 8
  %115 = icmp ne i32* %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %118 = load i32*, i32** %2, align 8
  %119 = call i32 @CloseEventLog(i32* %118)
  %120 = load i32*, i32** %1, align 8
  %121 = call i32 @CloseEventLog(i32* %120)
  %122 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  %123 = call i32 @DeleteFileA(i8* %122)
  br label %124

124:                                              ; preds = %88, %58
  %125 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  %126 = load i32, i32* @GENERIC_WRITE, align 4
  %127 = load i32, i32* @CREATE_NEW, align 4
  %128 = call i32* @CreateFileA(i8* %125, i32 %126, i32 0, i32* null, i32 %127, i32 0, i32* null)
  store i32* %128, i32** %3, align 8
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @CloseHandle(i32* %129)
  %131 = call i32 @SetLastError(i32 -559038737)
  %132 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  %133 = call i32* @OpenBackupEventLogA(i8* null, i8* %132)
  store i32* %133, i32** %1, align 8
  %134 = load i32*, i32** %1, align 8
  %135 = icmp eq i32* %134, null
  %136 = zext i1 %135 to i32
  %137 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %138 = call i64 (...) @GetLastError()
  %139 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %124
  %142 = call i64 (...) @GetLastError()
  %143 = load i64, i64* @ERROR_EVENTLOG_FILE_CORRUPT, align 8
  %144 = icmp eq i64 %142, %143
  br label %145

145:                                              ; preds = %141, %124
  %146 = phi i1 [ true, %124 ], [ %144, %141 ]
  %147 = zext i1 %146 to i32
  %148 = call i64 (...) @GetLastError()
  %149 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i64 %148)
  %150 = load i32*, i32** %1, align 8
  %151 = call i32 @CloseEventLog(i32* %150)
  %152 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  %153 = call i32 @DeleteFileA(i8* %152)
  %154 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  %155 = load i32, i32* @GENERIC_WRITE, align 4
  %156 = load i32, i32* @CREATE_NEW, align 4
  %157 = call i32* @CreateFileA(i8* %154, i32 %155, i32 0, i32* null, i32 %156, i32 0, i32* null)
  store i32* %157, i32** %3, align 8
  %158 = load i32*, i32** %3, align 8
  %159 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %160 = call i32 @WriteFile(i32* %158, i8* %159, i32 15, i32* %4, i32* null)
  %161 = load i32*, i32** %3, align 8
  %162 = call i32 @CloseHandle(i32* %161)
  %163 = call i32 @SetLastError(i32 -559038737)
  %164 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  %165 = call i32* @OpenBackupEventLogA(i8* null, i8* %164)
  store i32* %165, i32** %1, align 8
  %166 = load i32*, i32** %1, align 8
  %167 = icmp eq i32* %166, null
  %168 = zext i1 %167 to i32
  %169 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %170 = call i64 (...) @GetLastError()
  %171 = load i64, i64* @ERROR_EVENTLOG_FILE_CORRUPT, align 8
  %172 = icmp eq i64 %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i64 (...) @GetLastError()
  %175 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i64 %174)
  %176 = load i32*, i32** %1, align 8
  %177 = call i32 @CloseEventLog(i32* %176)
  %178 = getelementptr inbounds [11 x i8], [11 x i8]* %5, i64 0, i64 0
  %179 = call i32 @DeleteFileA(i8* %178)
  br label %180

180:                                              ; preds = %145, %71
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32* @OpenBackupEventLogA(i8*, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i64 @create_backup(i8*) #2

declare dso_local i64 @GetFileAttributesA(i8*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @CloseEventLog(i32*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32* @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @CloseHandle(i32*) #2

declare dso_local i32 @WriteFile(i32*, i8*, i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
