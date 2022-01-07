; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtQueryKey.c_Test_KeyNameInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtQueryKey.c_Test_KeyNameInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [27 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [9 x i32] [i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 0], align 4
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@KeyNameInformation = common dso_local global i32 0, align 4
@STATUS_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@KEY_NAME_INFORMATION = common dso_local global i32 0, align 4
@Name = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%.*S\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Test_KeyNameInformation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_KeyNameInformation() #0 {
  %1 = alloca %struct.TYPE_10__, align 4
  %2 = alloca { i64, i32 }, align 8
  %3 = alloca %struct.TYPE_10__, align 4
  %4 = alloca { i64, i32 }, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca { i64, i32 }, align 8
  %7 = alloca %struct.TYPE_10__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = call { i64, i32 } @RTL_CONSTANT_STRING(i8* bitcast ([18 x i32]* @.str to i8*))
  store { i64, i32 } %14, { i64, i32 }* %2, align 8
  %15 = bitcast { i64, i32 }* %2 to i8*
  %16 = bitcast %struct.TYPE_10__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 8 %15, i64 12, i1 false)
  %17 = call { i64, i32 } @RTL_CONSTANT_STRING(i8* bitcast ([27 x i32]* @.str.1 to i8*))
  store { i64, i32 } %17, { i64, i32 }* %4, align 8
  %18 = bitcast { i64, i32 }* %4 to i8*
  %19 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 8 %18, i64 12, i1 false)
  %20 = call { i64, i32 } @RTL_CONSTANT_STRING(i8* bitcast ([9 x i32]* @.str.2 to i8*))
  store { i64, i32 } %20, { i64, i32 }* %6, align 8
  %21 = bitcast { i64, i32 }* %6 to i8*
  %22 = bitcast %struct.TYPE_10__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 8 %21, i64 12, i1 false)
  %23 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %24 = call i32 @InitializeObjectAttributes(i32* %12, %struct.TYPE_10__* %1, i32 %23, i32* null, i32* null)
  %25 = load i32, i32* @KEY_READ, align 4
  %26 = call i32 @NtOpenKey(i32** %8, i32 %25, i32* %12)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @STATUS_SUCCESS, align 4
  %29 = call i32 @ok_ntstatus(i32 %27, i32 %28)
  store i32 0, i32* %11, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* @KeyNameInformation, align 4
  %32 = call i32 @NtQueryKey(i32* %30, i32 %31, %struct.TYPE_11__* null, i32 0, i32* %11)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  %35 = call i32 @ok_ntstatus(i32 %33, i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @KEY_NAME_INFORMATION, align 4
  %38 = load i32*, i32** @Name, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %41, 4
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @FIELD_OFFSET(i32 %37, i32 %44)
  %46 = call i32 @ok_size_t(i32 %36, i32 %45)
  %47 = call i32 (...) @RtlGetProcessHeap()
  %48 = load i32, i32* %11, align 4
  %49 = call %struct.TYPE_11__* @RtlAllocateHeap(i32 %47, i32 0, i32 %48)
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %10, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %51 = icmp ne %struct.TYPE_11__* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %0
  %53 = call i32 @skip(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %189

54:                                               ; preds = %0
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* @KeyNameInformation, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @NtQueryKey(i32* %55, i32 %56, %struct.TYPE_11__* %57, i32 %58, i32* %11)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @STATUS_SUCCESS, align 4
  %62 = call i32 @ok_ntstatus(i32 %60, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @KEY_NAME_INFORMATION, align 4
  %65 = load i32*, i32** @Name, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = udiv i64 %68, 4
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @FIELD_OFFSET(i32 %64, i32 %71)
  %73 = call i32 @ok_size_t(i32 %63, i32 %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ok_size_t(i32 %76, i32 %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @TRUE, align 4
  %93 = call i64 @RtlCompareUnicodeString(%struct.TYPE_10__* %7, %struct.TYPE_10__* %1, i32 %92)
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %97, i32 %99)
  %101 = call i32 (...) @RtlGetProcessHeap()
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %103 = call i32 @RtlFreeHeap(i32 %101, i32 0, %struct.TYPE_11__* %102)
  %104 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @InitializeObjectAttributes(i32* %12, %struct.TYPE_10__* %5, i32 %104, i32* %105, i32* null)
  %107 = load i32, i32* @KEY_READ, align 4
  %108 = call i32 @NtOpenKey(i32** %9, i32 %107, i32* %12)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @STATUS_SUCCESS, align 4
  %111 = call i32 @ok_ntstatus(i32 %109, i32 %110)
  store i32 0, i32* %11, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* @KeyNameInformation, align 4
  %114 = call i32 @NtQueryKey(i32* %112, i32 %113, %struct.TYPE_11__* null, i32 0, i32* %11)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  %117 = call i32 @ok_ntstatus(i32 %115, i32 %116)
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @KEY_NAME_INFORMATION, align 4
  %120 = load i32*, i32** @Name, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = udiv i64 %123, 4
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @FIELD_OFFSET(i32 %119, i32 %126)
  %128 = call i32 @ok_size_t(i32 %118, i32 %127)
  %129 = call i32 (...) @RtlGetProcessHeap()
  %130 = load i32, i32* %11, align 4
  %131 = call %struct.TYPE_11__* @RtlAllocateHeap(i32 %129, i32 0, i32 %130)
  store %struct.TYPE_11__* %131, %struct.TYPE_11__** %10, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %133 = icmp ne %struct.TYPE_11__* %132, null
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* @KeyNameInformation, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @NtQueryKey(i32* %136, i32 %137, %struct.TYPE_11__* %138, i32 %139, i32* %11)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* @STATUS_SUCCESS, align 4
  %143 = call i32 @ok_ntstatus(i32 %141, i32 %142)
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @KEY_NAME_INFORMATION, align 4
  %146 = load i32*, i32** @Name, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = udiv i64 %149, 4
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @FIELD_OFFSET(i32 %145, i32 %152)
  %154 = call i32 @ok_size_t(i32 %144, i32 %153)
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @ok_size_t(i32 %157, i32 %159)
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store i32 %163, i32* %164, align 4
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 %167, i32* %168, align 4
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32 %171, i32* %172, align 4
  %173 = load i32, i32* @TRUE, align 4
  %174 = call i64 @RtlCompareUnicodeString(%struct.TYPE_10__* %7, %struct.TYPE_10__* %3, i32 %173)
  %175 = icmp eq i64 %174, 0
  %176 = zext i1 %175 to i32
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %178, i32 %180)
  %182 = call i32 (...) @RtlGetProcessHeap()
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %184 = call i32 @RtlFreeHeap(i32 %182, i32 0, %struct.TYPE_11__* %183)
  %185 = load i32*, i32** %9, align 8
  %186 = call i32 @NtClose(i32* %185)
  %187 = load i32*, i32** %8, align 8
  %188 = call i32 @NtClose(i32* %187)
  br label %189

189:                                              ; preds = %54, %52
  ret void
}

declare dso_local { i64, i32 } @RTL_CONSTANT_STRING(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @InitializeObjectAttributes(i32*, %struct.TYPE_10__*, i32, i32*, i32*) #1

declare dso_local i32 @NtOpenKey(i32**, i32, i32*) #1

declare dso_local i32 @ok_ntstatus(i32, i32) #1

declare dso_local i32 @NtQueryKey(i32*, i32, %struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @ok_size_t(i32, i32) #1

declare dso_local i32 @FIELD_OFFSET(i32, i32) #1

declare dso_local %struct.TYPE_11__* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @RtlCompareUnicodeString(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @NtClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
