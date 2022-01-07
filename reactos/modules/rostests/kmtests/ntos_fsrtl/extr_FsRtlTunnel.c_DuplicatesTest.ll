; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_fsrtl/extr_FsRtlTunnel.c_DuplicatesTest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_fsrtl/extr_FsRtlTunnel.c_DuplicatesTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }

@.str = private unnamed_addr constant [13 x i32] [i32 76, i32 79, i32 78, i32 71, i32 70, i32 73, i32 126, i32 49, i32 46, i32 84, i32 88, i32 84, i32 0], align 4
@.str.1 = private unnamed_addr constant [17 x i32] [i32 76, i32 111, i32 110, i32 103, i32 102, i32 105, i32 108, i32 101, i32 110, i32 97, i32 109, i32 101, i32 46, i32 116, i32 120, i32 116, i32 0], align 4
@.str.2 = private unnamed_addr constant [13 x i32] [i32 76, i32 79, i32 78, i32 71, i32 70, i32 73, i32 126, i32 50, i32 46, i32 84, i32 88, i32 84, i32 0], align 4
@.str.3 = private unnamed_addr constant [17 x i32] [i32 76, i32 111, i32 110, i32 103, i32 102, i32 105, i32 108, i32 101, i32 110, i32 97, i32 109, i32 114, i32 46, i32 116, i32 120, i32 116, i32 0], align 4
@NonPagedPool = common dso_local global i32 0, align 4
@PagedPool = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"First call\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Second call\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Third call\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Buffer didn't get reallocated!\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Fourth call\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Fifth call\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Sixth call\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Seventh call\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Eighth call\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Ninth call\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Tenth call\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Eleventh call\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Twelfth call\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Thirteenth call\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Fourteenth call\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Fifteenth call\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Sixteenth call\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Seventeenth call\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Eighteenth call\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"Nineteenth call\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @DuplicatesTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DuplicatesTest() #0 {
  %1 = alloca %struct.TYPE_8__, align 8
  %2 = alloca %struct.TYPE_8__, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 1, i32* %7, align 4
  store i32 2, i32* %8, align 4
  %13 = call i32 @RtlInitUnicodeString(%struct.TYPE_8__* %1, i8* bitcast ([13 x i32]* @.str to i8*))
  %14 = call i32 @RtlInitUnicodeString(%struct.TYPE_8__* %2, i8* bitcast ([17 x i32]* @.str.1 to i8*))
  %15 = call i32 @RtlInitUnicodeString(%struct.TYPE_8__* %5, i8* bitcast ([13 x i32]* @.str.2 to i8*))
  %16 = call i32 @RtlInitUnicodeString(%struct.TYPE_8__* %6, i8* bitcast ([17 x i32]* @.str.3 to i8*))
  %17 = load i32, i32* @NonPagedPool, align 4
  %18 = call i8* @ExAllocatePool(i32 %17, i32 4)
  %19 = ptrtoint i8* %18 to i64
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @RtlZeroMemory(i64 %20, i32 4)
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 52, i32* %22, align 8
  %23 = load i32, i32* @PagedPool, align 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @ExAllocatePool(i32 %23, i32 %25)
  %27 = ptrtoint i8* %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i32 68, i32* %29, align 8
  %30 = load i32, i32* @PagedPool, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @ExAllocatePool(i32 %30, i32 %32)
  %34 = ptrtoint i8* %33 to i64
  store i64 %34, i64* %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i64 %34, i64* %35, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @FsRtlInitializeTunnelCache(i64 %36)
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i32 @FsRtlAddToTunnelCache(i64 %38, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, i32 %39, i32 4, i32* %7)
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @FsRtlFindInTunnelCache(i64 %41, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %43 = call i32 @ok_bool_true(i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @ok_eq_ulong(i32 %44, i32 4)
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @ok_eq_ulong(i32 %46, i32 1)
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @ok_eq_pointer(i64 %49, i64 %50)
  %52 = load i64, i64* %11, align 8
  %53 = load i32, i32* @TRUE, align 4
  %54 = call i32 @FsRtlAddToTunnelCache(i64 %52, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, i32 %53, i32 4, i32* %8)
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @FsRtlFindInTunnelCache(i64 %55, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %57 = call i32 @ok_bool_true(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @ok_eq_ulong(i32 %58, i32 4)
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @ok_eq_ulong(i32 %60, i32 2)
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @ok_eq_pointer(i64 %63, i64 %64)
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i32 52, i32* %66, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @FsRtlFindInTunnelCache(i64 %67, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %69 = call i32 @ok_bool_true(i32 %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @ok_eq_ulong(i32 %70, i32 4)
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ok_eq_ulong(i32 %72, i32 2)
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ok_eq_uint(i32 %81, i32 64)
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @FsRtlDeleteKeyFromTunnelCache(i64 %83, i32 1)
  %85 = load i64, i64* %11, align 8
  %86 = call i32 @FsRtlFindInTunnelCache(i64 %85, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %87 = call i32 @ok_bool_false(i32 %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %88 = load i64, i64* %11, align 8
  %89 = load i32, i32* @TRUE, align 4
  %90 = call i32 @FsRtlAddToTunnelCache(i64 %88, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, i32 %89, i32 4, i32* %7)
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @FsRtlFindInTunnelCache(i64 %91, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %93 = call i32 @ok_bool_true(i32 %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @ok_eq_ulong(i32 %94, i32 4)
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @ok_eq_ulong(i32 %96, i32 1)
  %98 = load i64, i64* %11, align 8
  %99 = load i32, i32* @TRUE, align 4
  %100 = call i32 @FsRtlAddToTunnelCache(i64 %98, i32 1, %struct.TYPE_8__* %5, %struct.TYPE_8__* %6, i32 %99, i32 4, i32* %7)
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @FsRtlFindInTunnelCache(i64 %101, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %103 = call i32 @ok_bool_true(i32 %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @ok_eq_ulong(i32 %104, i32 4)
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @ok_eq_ulong(i32 %106, i32 1)
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @FsRtlFindInTunnelCache(i64 %108, i32 1, %struct.TYPE_8__* %5, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %110 = call i32 @ok_bool_true(i32 %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @ok_eq_ulong(i32 %111, i32 4)
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @ok_eq_ulong(i32 %113, i32 1)
  %115 = load i64, i64* %11, align 8
  %116 = load i32, i32* @TRUE, align 4
  %117 = call i32 @FsRtlAddToTunnelCache(i64 %115, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, i32 %116, i32 4, i32* %8)
  %118 = load i64, i64* %11, align 8
  %119 = call i32 @FsRtlFindInTunnelCache(i64 %118, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %120 = call i32 @ok_bool_true(i32 %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @ok_eq_ulong(i32 %121, i32 4)
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @ok_eq_ulong(i32 %123, i32 2)
  %125 = load i64, i64* %11, align 8
  %126 = call i32 @FsRtlFindInTunnelCache(i64 %125, i32 1, %struct.TYPE_8__* %5, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %127 = call i32 @ok_bool_true(i32 %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @ok_eq_ulong(i32 %128, i32 4)
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @ok_eq_ulong(i32 %130, i32 1)
  %132 = load i64, i64* %11, align 8
  %133 = load i32, i32* @TRUE, align 4
  %134 = call i32 @FsRtlAddToTunnelCache(i64 %132, i32 1, %struct.TYPE_8__* %5, %struct.TYPE_8__* %6, i32 %133, i32 4, i32* %8)
  %135 = load i64, i64* %11, align 8
  %136 = call i32 @FsRtlFindInTunnelCache(i64 %135, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %137 = call i32 @ok_bool_true(i32 %136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @ok_eq_ulong(i32 %138, i32 4)
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @ok_eq_ulong(i32 %140, i32 2)
  %142 = load i64, i64* %11, align 8
  %143 = call i32 @FsRtlFindInTunnelCache(i64 %142, i32 1, %struct.TYPE_8__* %5, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %144 = call i32 @ok_bool_true(i32 %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @ok_eq_ulong(i32 %145, i32 4)
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @ok_eq_ulong(i32 %147, i32 2)
  %149 = load i64, i64* %11, align 8
  %150 = call i32 @FsRtlDeleteKeyFromTunnelCache(i64 %149, i32 1)
  %151 = load i64, i64* %11, align 8
  %152 = call i32 @FsRtlFindInTunnelCache(i64 %151, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %153 = call i32 @ok_bool_false(i32 %152, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %154 = load i64, i64* %11, align 8
  %155 = call i32 @FsRtlFindInTunnelCache(i64 %154, i32 1, %struct.TYPE_8__* %5, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %156 = call i32 @ok_bool_false(i32 %155, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  %157 = load i64, i64* %11, align 8
  %158 = load i32, i32* @TRUE, align 4
  %159 = call i32 @FsRtlAddToTunnelCache(i64 %157, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, i32 %158, i32 4, i32* %7)
  %160 = load i64, i64* %11, align 8
  %161 = call i32 @FsRtlFindInTunnelCache(i64 %160, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %162 = call i32 @ok_bool_true(i32 %161, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @ok_eq_ulong(i32 %163, i32 4)
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @ok_eq_ulong(i32 %165, i32 1)
  %167 = load i64, i64* %11, align 8
  %168 = load i32, i32* @TRUE, align 4
  %169 = call i32 @FsRtlAddToTunnelCache(i64 %167, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, i32 %168, i32 4, i32* %8)
  %170 = load i64, i64* %11, align 8
  %171 = call i32 @FsRtlFindInTunnelCache(i64 %170, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %172 = call i32 @ok_bool_true(i32 %171, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @ok_eq_ulong(i32 %173, i32 4)
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @ok_eq_ulong(i32 %175, i32 2)
  %177 = load i64, i64* %11, align 8
  %178 = load i32, i32* @TRUE, align 4
  %179 = call i32 @FsRtlAddToTunnelCache(i64 %177, i32 1, %struct.TYPE_8__* %5, %struct.TYPE_8__* %6, i32 %178, i32 4, i32* %7)
  %180 = load i64, i64* %11, align 8
  %181 = call i32 @FsRtlFindInTunnelCache(i64 %180, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %182 = call i32 @ok_bool_true(i32 %181, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @ok_eq_ulong(i32 %183, i32 4)
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @ok_eq_ulong(i32 %185, i32 2)
  %187 = load i64, i64* %11, align 8
  %188 = call i32 @FsRtlFindInTunnelCache(i64 %187, i32 1, %struct.TYPE_8__* %5, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %189 = call i32 @ok_bool_true(i32 %188, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @ok_eq_ulong(i32 %190, i32 4)
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @ok_eq_ulong(i32 %192, i32 1)
  %194 = load i64, i64* %11, align 8
  %195 = load i32, i32* @TRUE, align 4
  %196 = call i32 @FsRtlAddToTunnelCache(i64 %194, i32 1, %struct.TYPE_8__* %5, %struct.TYPE_8__* %6, i32 %195, i32 4, i32* %8)
  %197 = load i64, i64* %11, align 8
  %198 = call i32 @FsRtlFindInTunnelCache(i64 %197, i32 1, %struct.TYPE_8__* %1, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %199 = call i32 @ok_bool_true(i32 %198, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @ok_eq_ulong(i32 %200, i32 4)
  %202 = load i32, i32* %10, align 4
  %203 = call i32 @ok_eq_ulong(i32 %202, i32 2)
  %204 = load i64, i64* %11, align 8
  %205 = call i32 @FsRtlFindInTunnelCache(i64 %204, i32 1, %struct.TYPE_8__* %5, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %9, i32* %10)
  %206 = call i32 @ok_bool_true(i32 %205, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0))
  %207 = load i32, i32* %9, align 4
  %208 = call i32 @ok_eq_ulong(i32 %207, i32 4)
  %209 = load i32, i32* %10, align 4
  %210 = call i32 @ok_eq_ulong(i32 %209, i32 2)
  %211 = load i64, i64* %11, align 8
  %212 = call i32 @FsRtlDeleteTunnelCache(i64 %211)
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @ExFreePool(i64 %214)
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @ExFreePool(i64 %217)
  %219 = load i64, i64* %12, align 8
  %220 = call i32 @ExFreePool(i64 %219)
  %221 = load i64, i64* %11, align 8
  %222 = call i32 @ExFreePool(i64 %221)
  ret void
}

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @ExAllocatePool(i32, i32) #1

declare dso_local i32 @RtlZeroMemory(i64, i32) #1

declare dso_local i32 @FsRtlInitializeTunnelCache(i64) #1

declare dso_local i32 @FsRtlAddToTunnelCache(i64, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @ok_bool_true(i32, i8*) #1

declare dso_local i32 @FsRtlFindInTunnelCache(i64, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @ok_eq_ulong(i32, i32) #1

declare dso_local i32 @ok_eq_pointer(i64, i64) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @ok_eq_uint(i32, i32) #1

declare dso_local i32 @FsRtlDeleteKeyFromTunnelCache(i64, i32) #1

declare dso_local i32 @ok_bool_false(i32, i8*) #1

declare dso_local i32 @FsRtlDeleteTunnelCache(i64) #1

declare dso_local i32 @ExFreePool(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
