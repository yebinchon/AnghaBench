; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetObject.c_Test_Bitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetObject.c_Test_Bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.Test_Bitmap.Buffer = private unnamed_addr constant <{ [15 x i32], [85 x i32] }> <{ [15 x i32] [i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48], [85 x i32] zeroinitializer }>, align 16
@.str = private unnamed_addr constant [38 x i8] c"CreateBitmap failed, skipping tests.\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@GDI_OBJECT_TYPE_BITMAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"expected ERROR_SUCCESS, got %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_Bitmap() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [100 x i32], align 16
  %5 = alloca [100 x i32], align 16
  %6 = bitcast [100 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 400, i1 false)
  %7 = bitcast [100 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast (<{ [15 x i32], [85 x i32] }>* @__const.Test_Bitmap.Buffer to i8*), i64 400, i1 false)
  %8 = call i32 @FillMemory(i32* %2, i32 4, i32 119)
  %9 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0
  %10 = call i64 @CreateBitmap(i32 10, i32 10, i32 1, i32 8, i32* %9)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* %1, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %0
  br label %150

18:                                               ; preds = %0
  %19 = load i64, i64* @ERROR_SUCCESS, align 8
  %20 = call i32 @SetLastError(i64 %19)
  %21 = load i64, i64* @GDI_OBJECT_TYPE_BITMAP, align 8
  %22 = call i32 @GetObjectA(i64 %21, i32 0, i32* null)
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 %23, 4
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i64, i64* @GDI_OBJECT_TYPE_BITMAP, align 8
  %28 = call i32 @GetObjectW(i64 %27, i32 0, i32* null)
  %29 = sext i32 %28 to i64
  %30 = icmp eq i64 %29, 4
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i64, i64* @GDI_OBJECT_TYPE_BITMAP, align 8
  %34 = call i32 @GetObjectA(i64 %33, i32 4, i32* null)
  %35 = sext i32 %34 to i64
  %36 = icmp eq i64 %35, 4
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i64 (...) @GetLastError()
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i64, i64* %1, align 8
  %45 = call i32 @GetObjectA(i64 %44, i32 4, i32* null)
  %46 = sext i32 %45 to i64
  %47 = icmp eq i64 %46, 4
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i64, i64* %1, align 8
  %51 = call i32 @GetObjectA(i64 %50, i32 0, i32* null)
  %52 = sext i32 %51 to i64
  %53 = icmp eq i64 %52, 4
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i64, i64* %1, align 8
  %57 = trunc i64 %56 to i32
  %58 = and i32 %57, 65535
  %59 = sext i32 %58 to i64
  %60 = call i32 @GetObjectA(i64 %59, i32 0, i32* null)
  %61 = sext i32 %60 to i64
  %62 = icmp eq i64 %61, 4
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i64, i64* %1, align 8
  %66 = trunc i64 %65 to i32
  %67 = and i32 %66, 65535
  %68 = sext i32 %67 to i64
  %69 = call i32 @GetObjectW(i64 %68, i32 0, i32* null)
  %70 = sext i32 %69 to i64
  %71 = icmp eq i64 %70, 4
  %72 = zext i1 %71 to i32
  %73 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i64 (...) @GetLastError()
  %75 = load i64, i64* @ERROR_SUCCESS, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i64, i64* %1, align 8
  %80 = call i32 @GetObjectA(i64 %79, i32 5, i32* null)
  %81 = sext i32 %80 to i64
  %82 = icmp eq i64 %81, 4
  %83 = zext i1 %82 to i32
  %84 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i64, i64* %1, align 8
  %86 = call i32 @GetObjectA(i64 %85, i32 -5, i32* null)
  %87 = sext i32 %86 to i64
  %88 = icmp eq i64 %87, 4
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i64, i64* %1, align 8
  %92 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %93 = call i32 @GetObjectA(i64 %91, i32 0, i32* %92)
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i64, i64* %1, align 8
  %98 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %99 = call i32 @GetObjectA(i64 %97, i32 5, i32* %98)
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %103 = call i64 (...) @GetLastError()
  %104 = load i64, i64* @ERROR_SUCCESS, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i64, i64* %1, align 8
  %109 = call i32 @GetObjectA(i64 %108, i32 4, i32* %2)
  %110 = sext i32 %109 to i64
  %111 = icmp eq i64 %110, 4
  %112 = zext i1 %111 to i32
  %113 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i64, i64* %1, align 8
  %115 = call i32 @GetObjectA(i64 %114, i32 6, i32* %2)
  %116 = sext i32 %115 to i64
  %117 = icmp eq i64 %116, 4
  %118 = zext i1 %117 to i32
  %119 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i64, i64* %1, align 8
  %121 = call i32 @GetObjectA(i64 %120, i32 4, i32* %3)
  %122 = sext i32 %121 to i64
  %123 = icmp eq i64 %122, 4
  %124 = zext i1 %123 to i32
  %125 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %126 = load i64, i64* %1, align 8
  %127 = call i32 @GetObjectA(i64 %126, i32 -5, i32* %2)
  %128 = sext i32 %127 to i64
  %129 = icmp eq i64 %128, 4
  %130 = zext i1 %129 to i32
  %131 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %132 = call i64 (...) @GetLastError()
  %133 = load i64, i64* @ERROR_SUCCESS, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %137 = load i64, i64* @GDI_OBJECT_TYPE_BITMAP, align 8
  %138 = call i32 @GetObjectA(i64 %137, i32 4, i32* %2)
  %139 = icmp eq i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %142 = call i64 (...) @GetLastError()
  %143 = load i64, i64* @ERROR_SUCCESS, align 8
  %144 = icmp eq i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i64 (...) @GetLastError()
  %147 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %146)
  %148 = load i64, i64* %1, align 8
  %149 = call i32 @DeleteObject(i64 %148)
  br label %150

150:                                              ; preds = %18, %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FillMemory(i32*, i32, i32) #2

declare dso_local i64 @CreateBitmap(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @SetLastError(i64) #2

declare dso_local i32 @GetObjectA(i64, i32, i32*) #2

declare dso_local i32 @GetObjectW(i64, i32, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @DeleteObject(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
