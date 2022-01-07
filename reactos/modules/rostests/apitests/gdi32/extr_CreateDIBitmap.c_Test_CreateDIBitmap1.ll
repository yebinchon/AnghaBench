; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CreateDIBitmap.c_Test_CreateDIBitmap1.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CreateDIBitmap.c_Test_CreateDIBitmap1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i64, i64 }

@__const.Test_CreateDIBitmap1.rlebits = private unnamed_addr constant [8 x i32] [i32 2, i32 0, i32 0, i32 0, i32 2, i32 1, i32 0, i32 1], align 16
@BI_RGB = common dso_local global i32 0, align 4
@CBM_INIT = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"bmWidthBytes = %ld\0A\00", align 1
@BITSPIXEL = common dso_local global i32 0, align 4
@BI_RLE8 = common dso_local global i32 0, align 4
@DIB_PAL_COLORS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"GetLastError() == %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_CreateDIBitmap1() #0 {
  %1 = alloca %struct.TYPE_6__, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca [128 x i32], align 16
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast [128 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 512, i1 false)
  %9 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([8 x i32]* @__const.Test_CreateDIBitmap1.rlebits to i8*), i64 32, i1 false)
  %10 = call i32 @GetDC(i32 0)
  store i32 %10, i32* %6, align 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 4, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i32 2, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  store i32 2, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  store i32 16, i32* %20, align 8
  %21 = load i32, i32* @BI_RGB, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 5
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 6
  store i32 1, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 7
  store i32 1, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 8
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 10
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %36 = load i32, i32* @CBM_INIT, align 4
  %37 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %38 = load i32, i32* @DIB_RGB_COLORS, align 4
  %39 = call i64 @CreateDIBitmap(i32 %34, %struct.TYPE_8__* %35, i32 %36, i32* %37, %struct.TYPE_6__* %1, i32 %38)
  store i64 %39, i64* %2, align 8
  %40 = load i64, i64* %2, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %44 = load i64, i64* %2, align 8
  %45 = call i32 @GetObject(i64 %44, i32 40, %struct.TYPE_7__* %3)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 2
  %58 = zext i1 %57 to i32
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 2
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 8
  %68 = zext i1 %67 to i32
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 1
  %75 = zext i1 %74 to i32
  %76 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @BITSPIXEL, align 4
  %81 = call i64 @GetDeviceCaps(i32 %79, i32 %80)
  %82 = icmp eq i64 %78, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %90 = call i32 @SetLastError(i32 0)
  %91 = load i32, i32* @BI_RLE8, align 4
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 9
  store i32 %91, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 4
  store i32 8, i32* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 5
  store i32 8, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 8
  store i32 1, i32* %99, align 8
  %100 = load i32, i32* %6, align 4
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %102 = load i32, i32* @CBM_INIT, align 4
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %104 = load i32, i32* @DIB_PAL_COLORS, align 4
  %105 = call i64 @CreateDIBitmap(i32 %100, %struct.TYPE_8__* %101, i32 %102, i32* %103, %struct.TYPE_6__* %1, i32 %104)
  store i64 %105, i64* %2, align 8
  %106 = load i64, i64* %2, align 8
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %110 = call i32 (...) @GetLastError()
  %111 = icmp eq i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 (...) @GetLastError()
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load i64, i64* %2, align 8
  %116 = call i32 @GetObject(i64 %115, i32 40, %struct.TYPE_7__* %3)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 2
  %129 = zext i1 %128 to i32
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 2
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 8
  %139 = zext i1 %138 to i32
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 1
  %146 = zext i1 %145 to i32
  %147 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @BITSPIXEL, align 4
  %152 = call i64 @GetDeviceCaps(i32 %150, i32 %151)
  %153 = icmp eq i64 %149, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  %159 = zext i1 %158 to i32
  %160 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GetDC(i32) #2

declare dso_local i64 @CreateDIBitmap(i32, %struct.TYPE_8__*, i32, i32*, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetObject(i64, i32, %struct.TYPE_7__*) #2

declare dso_local i64 @GetDeviceCaps(i32, i32) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @GetLastError(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
