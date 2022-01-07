; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_change.c_test_readdirectorychanges_filedir.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_change.c_test_readdirectorychanges_filedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@test_readdirectorychanges_filedir.szBoo = internal constant [5 x i8] c"\\boo\00", align 1
@test_readdirectorychanges_filedir.szHoo = internal constant [5 x i8] c"\\hoo\00", align 1
@test_readdirectorychanges_filedir.szFoo = internal constant [5 x i8] c"\\foo\00", align 1
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"GetTempPathW is not implemented\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"temp path failed\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to create directory\0A\00", align 1
@FILE_FLAG_BACKUP_SEMANTICS = common dso_local global i32 0, align 4
@FILE_FLAG_OVERLAPPED = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@FILE_LIST_DIRECTORY = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to open directory\0A\00", align 1
@FILE_NOTIFY_CHANGE_FILE_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"should return true\0A\00", align 1
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"should timeout\0A\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"failed to create file\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"failed to close file\0A\00", align 1
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"event should be ready\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"ov.Internal wrong\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"ov.InternalHigh wrong\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"offset wrong\0A\00", align 1
@FILE_ACTION_ADDED = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"action wrong\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"len wrong\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"name wrong\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"failed to delete file\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"failed to remove directory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_readdirectorychanges_filedir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_readdirectorychanges_filedir() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %24 = call i32 @SetLastError(i32 -559038737)
  %25 = load i32, i32* @MAX_PATH, align 4
  %26 = call i64 @GetTempPathW(i32 %25, i8* %17)
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %0
  %30 = call i64 (...) @GetLastError()
  %31 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @win_skip(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %185

35:                                               ; preds = %29, %0
  %36 = load i64, i64* %1, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i64, i64* %1, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i32 1, i32* %13, align 4
  br label %185

43:                                               ; preds = %35
  %44 = call i32 @lstrcatW(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_readdirectorychanges_filedir.szBoo, i64 0, i64 0))
  %45 = call i32 @lstrcpyW(i8* %20, i8* %17)
  %46 = call i32 @lstrcatW(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_readdirectorychanges_filedir.szHoo, i64 0, i64 0))
  %47 = call i32 @lstrcpyW(i8* %23, i8* %17)
  %48 = call i32 @lstrcatW(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_readdirectorychanges_filedir.szFoo, i64 0, i64 0))
  %49 = call i64 @DeleteFileW(i8* %23)
  %50 = call i64 @RemoveDirectoryW(i8* %20)
  %51 = call i64 @RemoveDirectoryW(i8* %17)
  %52 = call i64 @CreateDirectoryW(i8* %17, i32* null)
  store i64 %52, i64* %1, align 8
  %53 = load i64, i64* %1, align 8
  %54 = load i64, i64* @TRUE, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @FILE_FLAG_BACKUP_SEMANTICS, align 4
  %59 = load i32, i32* @FILE_FLAG_OVERLAPPED, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @GENERIC_READ, align 4
  %62 = load i32, i32* @SYNCHRONIZE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @FILE_LIST_DIRECTORY, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @FILE_SHARE_READ, align 4
  %67 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @OPEN_EXISTING, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @CreateFileW(i8* %17, i32 %65, i32 %68, i32* null, i32 %69, i32 %70, i32* null)
  store i64 %71, i64* %2, align 8
  %72 = load i64, i64* %2, align 8
  %73 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %74 = icmp ne i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %77 = call i32 @CreateEventW(i32* null, i32 0, i32 0, i32* null)
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32 %77, i32* %78, align 8
  %79 = load i32, i32* @FILE_NOTIFY_CHANGE_FILE_NAME, align 4
  store i32 %79, i32* %6, align 4
  %80 = load i64, i64* %2, align 8
  %81 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %82 = load i64, i64* @TRUE, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i64 @pReadDirectoryChangesW(i64 %80, i8* %81, i32 4096, i64 %82, i32 %83, i32* null, %struct.TYPE_5__* %7, i32* null)
  store i64 %84, i64* %1, align 8
  %85 = load i64, i64* %1, align 8
  %86 = load i64, i64* @TRUE, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @WaitForSingleObject(i32 %91, i32 10)
  store i64 %92, i64* %1, align 8
  %93 = load i64, i64* %1, align 8
  %94 = load i64, i64* @WAIT_TIMEOUT, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %98 = call i64 @CreateDirectoryW(i8* %20, i32* null)
  store i64 %98, i64* %1, align 8
  %99 = load i64, i64* %1, align 8
  %100 = load i64, i64* @TRUE, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32, i32* @GENERIC_READ, align 4
  %105 = load i32, i32* @GENERIC_WRITE, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @CREATE_ALWAYS, align 4
  %108 = call i64 @CreateFileW(i8* %23, i32 %106, i32 0, i32* null, i32 %107, i32 0, i32* null)
  store i64 %108, i64* %3, align 8
  %109 = load i64, i64* %3, align 8
  %110 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %111 = icmp ne i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %114 = load i64, i64* %3, align 8
  %115 = call i32 @CloseHandle(i64 %114)
  %116 = call i32 @ok(i32 %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @WaitForSingleObject(i32 %118, i32 1000)
  store i64 %119, i64* %1, align 8
  %120 = load i64, i64* %1, align 8
  %121 = load i64, i64* @WAIT_OBJECT_0, align 8
  %122 = icmp eq i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @ok(i32 %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @STATUS_SUCCESS, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @ok(i32 %129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 18
  %134 = zext i1 %133 to i32
  %135 = call i32 @ok(i32 %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %136 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %137 = bitcast i8* %136 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %137, %struct.TYPE_4__** %12, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @ok(i32 %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @FILE_ACTION_ADDED, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @ok(i32 %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 6
  %155 = zext i1 %154 to i32
  %156 = call i32 @ok(i32 %155, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @memcmp(i32 %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_readdirectorychanges_filedir.szFoo, i64 0, i64 1), i32 6)
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = call i32 @ok(i32 %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %165 = call i64 @DeleteFileW(i8* %23)
  store i64 %165, i64* %1, align 8
  %166 = load i64, i64* %1, align 8
  %167 = load i64, i64* @TRUE, align 8
  %168 = icmp eq i64 %166, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @ok(i32 %169, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %171 = call i64 @RemoveDirectoryW(i8* %20)
  store i64 %171, i64* %1, align 8
  %172 = load i64, i64* %1, align 8
  %173 = load i64, i64* @TRUE, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @ok(i32 %175, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %177 = load i64, i64* %2, align 8
  %178 = call i32 @CloseHandle(i64 %177)
  %179 = call i64 @RemoveDirectoryW(i8* %17)
  store i64 %179, i64* %1, align 8
  %180 = load i64, i64* %1, align 8
  %181 = load i64, i64* @TRUE, align 8
  %182 = icmp eq i64 %180, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 @ok(i32 %183, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %185

185:                                              ; preds = %43, %42, %33
  %186 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %186)
  %187 = load i32, i32* %13, align 4
  switch i32 %187, label %189 [
    i32 0, label %188
    i32 1, label %188
  ]

188:                                              ; preds = %185, %185
  ret void

189:                                              ; preds = %185
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @GetTempPathW(i32, i8*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i64 @DeleteFileW(i8*) #2

declare dso_local i64 @RemoveDirectoryW(i8*) #2

declare dso_local i64 @CreateDirectoryW(i8*, i32*) #2

declare dso_local i64 @CreateFileW(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @CreateEventW(i32*, i32, i32, i32*) #2

declare dso_local i64 @pReadDirectoryChangesW(i64, i8*, i32, i64, i32, i32*, %struct.TYPE_5__*, i32*) #2

declare dso_local i64 @WaitForSingleObject(i32, i32) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @memcmp(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
