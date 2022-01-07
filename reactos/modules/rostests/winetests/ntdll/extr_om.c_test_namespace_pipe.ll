; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_om.c_test_namespace_pipe.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_om.c_test_namespace_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@test_namespace_pipe.buffer1 = internal constant [19 x i8] c"\\??\\PIPE\\test\\pipe\00", align 16
@test_namespace_pipe.buffer2 = internal constant [19 x i8] c"\\??\\PIPE\\TEST\\PIPE\00", align 16
@test_namespace_pipe.buffer3 = internal constant [19 x i8] c"\\??\\pipe\\test\\pipe\00", align 16
@test_namespace_pipe.buffer4 = internal constant [14 x i8] c"\\??\\pipe\\test\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_CREATE = common dso_local global i32 0, align 4
@FILE_PIPE_FULL_DUPLEX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Failed to create NamedPipe(%08x)\0A\00", align 1
@STATUS_INSTANCE_NOT_AVAILABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [87 x i8] c"NtCreateNamedPipeFile should have failed with STATUS_INSTANCE_NOT_AVAILABLE got(%08x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\\\\.\\pipe\\test\\pipe\00", align 1
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to open NamedPipe (%u)\0A\00", align 1
@STATUS_OBJECT_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@STATUS_PIPE_NOT_AVAILABLE = common dso_local global i64 0, align 8
@STATUS_OBJECT_NAME_INVALID = common dso_local global i64 0, align 8
@STATUS_OBJECT_NAME_NOT_FOUND = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [75 x i8] c"NtOpenFile should have failed with STATUS_OBJECT_PATH_NOT_FOUND got(%08x)\0A\00", align 1
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [75 x i8] c"NtOpenFile should have failed with STATUS_OBJECT_NAME_NOT_FOUND got(%08x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"NtOpenFile should have succeeded got %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_namespace_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_namespace_pipe() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 -10000, i32* %8, align 4
  %9 = call i32 @pRtlInitUnicodeString(%struct.TYPE_6__* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @test_namespace_pipe.buffer1, i64 0, i64 0))
  %10 = call i32 @InitializeObjectAttributes(i32* %1, %struct.TYPE_6__* %2, i32 0, i32 0, i32* null)
  %11 = load i32, i32* @GENERIC_READ, align 4
  %12 = load i32, i32* @GENERIC_WRITE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @FILE_SHARE_READ, align 4
  %15 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FILE_CREATE, align 4
  %18 = load i32, i32* @FILE_PIPE_FULL_DUPLEX, align 4
  %19 = load i32, i32* @FALSE, align 4
  %20 = load i32, i32* @FALSE, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i64 @pNtCreateNamedPipeFile(i64* %6, i32 %13, i32* %1, i32* %3, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 1, i32 256, i32 256, %struct.TYPE_7__* %5)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @STATUS_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @GENERIC_READ, align 4
  %30 = load i32, i32* @GENERIC_WRITE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @FILE_SHARE_READ, align 4
  %33 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FILE_CREATE, align 4
  %36 = load i32, i32* @FILE_PIPE_FULL_DUPLEX, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i64 @pNtCreateNamedPipeFile(i64* %6, i32 %31, i32* %1, i32* %3, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 1, i32 256, i32 256, %struct.TYPE_7__* %5)
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @STATUS_INSTANCE_NOT_AVAILABLE, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = call i32 @pRtlInitUnicodeString(%struct.TYPE_6__* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @test_namespace_pipe.buffer2, i64 0, i64 0))
  %48 = call i32 @InitializeObjectAttributes(i32* %1, %struct.TYPE_6__* %2, i32 0, i32 0, i32* null)
  %49 = load i32, i32* @GENERIC_READ, align 4
  %50 = load i32, i32* @GENERIC_WRITE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @FILE_SHARE_READ, align 4
  %53 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @FILE_CREATE, align 4
  %56 = load i32, i32* @FILE_PIPE_FULL_DUPLEX, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = load i32, i32* @FALSE, align 4
  %59 = load i32, i32* @FALSE, align 4
  %60 = call i64 @pNtCreateNamedPipeFile(i64* %6, i32 %51, i32* %1, i32* %3, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 1, i32 256, i32 256, %struct.TYPE_7__* %5)
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @STATUS_INSTANCE_NOT_AVAILABLE, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = load i32, i32* @GENERIC_READ, align 4
  %68 = load i32, i32* @FILE_SHARE_READ, align 4
  %69 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @OPEN_EXISTING, align 4
  %72 = call i64 @CreateFileA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %70, i32* null, i32 %71, i32 0, i32 0)
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %75 = icmp ne i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 (...) @GetLastError()
  %78 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %77)
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @pNtClose(i64 %79)
  %81 = call i32 @pRtlInitUnicodeString(%struct.TYPE_6__* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @test_namespace_pipe.buffer3, i64 0, i64 0))
  %82 = call i32 @InitializeObjectAttributes(i32* %1, %struct.TYPE_6__* %2, i32 0, i32 0, i32* null)
  %83 = load i32, i32* @GENERIC_READ, align 4
  %84 = load i32, i32* @FILE_SHARE_READ, align 4
  %85 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %86 = or i32 %84, %85
  %87 = call i64 @pNtOpenFile(i64* %7, i32 %83, i32* %1, i32* %3, i32 %86, i32 0)
  store i64 %87, i64* %4, align 8
  %88 = load i64, i64* %4, align 8
  %89 = load i64, i64* @STATUS_OBJECT_PATH_NOT_FOUND, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %103, label %91

91:                                               ; preds = %0
  %92 = load i64, i64* %4, align 8
  %93 = load i64, i64* @STATUS_PIPE_NOT_AVAILABLE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %103, label %95

95:                                               ; preds = %91
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* @STATUS_OBJECT_NAME_INVALID, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i64, i64* %4, align 8
  %101 = load i64, i64* @STATUS_OBJECT_NAME_NOT_FOUND, align 8
  %102 = icmp eq i64 %100, %101
  br label %103

103:                                              ; preds = %99, %95, %91, %0
  %104 = phi i1 [ true, %95 ], [ true, %91 ], [ true, %0 ], [ %102, %99 ]
  %105 = zext i1 %104 to i32
  %106 = load i64, i64* %4, align 8
  %107 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i64 %106)
  %108 = call i32 @pRtlInitUnicodeString(%struct.TYPE_6__* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_namespace_pipe.buffer4, i64 0, i64 0))
  %109 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %110 = call i32 @InitializeObjectAttributes(i32* %1, %struct.TYPE_6__* %2, i32 %109, i32 0, i32* null)
  %111 = load i32, i32* @GENERIC_READ, align 4
  %112 = load i32, i32* @FILE_SHARE_READ, align 4
  %113 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %114 = or i32 %112, %113
  %115 = call i64 @pNtOpenFile(i64* %7, i32 %111, i32* %1, i32* %3, i32 %114, i32 0)
  store i64 %115, i64* %4, align 8
  %116 = load i64, i64* %4, align 8
  %117 = load i64, i64* @STATUS_OBJECT_NAME_NOT_FOUND, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %103
  %120 = load i64, i64* %4, align 8
  %121 = load i64, i64* @STATUS_OBJECT_NAME_INVALID, align 8
  %122 = icmp eq i64 %120, %121
  br label %123

123:                                              ; preds = %119, %103
  %124 = phi i1 [ true, %103 ], [ %122, %119 ]
  %125 = zext i1 %124 to i32
  %126 = load i64, i64* %4, align 8
  %127 = call i32 @ok(i32 %125, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i64 %126)
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = sub i64 %130, 4
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 4
  %133 = load i32, i32* @GENERIC_READ, align 4
  %134 = load i32, i32* @FILE_SHARE_READ, align 4
  %135 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %136 = or i32 %134, %135
  %137 = call i64 @pNtOpenFile(i64* %7, i32 %133, i32* %1, i32* %3, i32 %136, i32 0)
  store i64 %137, i64* %4, align 8
  %138 = load i64, i64* %4, align 8
  %139 = load i64, i64* @STATUS_SUCCESS, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i32
  %142 = load i64, i64* %4, align 8
  %143 = call i32 @ok(i32 %141, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i64 %142)
  %144 = load i64, i64* %7, align 8
  %145 = call i32 @pNtClose(i64 %144)
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = sub i64 %148, 1
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %146, align 4
  %151 = load i32, i32* @GENERIC_READ, align 4
  %152 = load i32, i32* @FILE_SHARE_READ, align 4
  %153 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %154 = or i32 %152, %153
  %155 = call i64 @pNtOpenFile(i64* %7, i32 %151, i32* %1, i32* %3, i32 %154, i32 0)
  store i64 %155, i64* %4, align 8
  %156 = load i64, i64* %4, align 8
  %157 = load i64, i64* @STATUS_SUCCESS, align 8
  %158 = icmp eq i64 %156, %157
  %159 = zext i1 %158 to i32
  %160 = load i64, i64* %4, align 8
  %161 = call i32 @ok(i32 %159, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i64 %160)
  %162 = load i64, i64* %7, align 8
  %163 = call i32 @pNtClose(i64 %162)
  %164 = load i64, i64* %6, align 8
  %165 = call i32 @pNtClose(i64 %164)
  ret void
}

declare dso_local i32 @pRtlInitUnicodeString(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, %struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i64 @pNtCreateNamedPipeFile(i64*, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @pNtClose(i64) #1

declare dso_local i64 @pNtOpenFile(i64*, i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
