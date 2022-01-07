; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_SPI_SETWORKAREA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_SPI_SETWORKAREA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@SPI_GETWORKAREA = common dso_local global i32 0, align 4
@SPI_SETWORKAREA = common dso_local global i32 0, align 4
@SM_CYVIRTUALSCREEN = common dso_local global i32 0, align 4
@SM_CXVIRTUALSCREEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_SPI_SETWORKAREA() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = load i32, i32* @SPI_GETWORKAREA, align 4
  %4 = call i32 @NtUserSystemParametersInfo(i32 %3, i32 0, %struct.TYPE_4__* %1, i32 0)
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i32
  %7 = call i32 @ASSERT(i32 %6)
  %8 = bitcast %struct.TYPE_4__* %2 to i8*
  %9 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 16, i1 false)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 2
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 3
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 2
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @SPI_SETWORKAREA, align 4
  %23 = call i32 @NtUserSystemParametersInfo(i32 %22, i32 1, %struct.TYPE_4__* %2, i32 0)
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = call i32 @TEST(i32 %25)
  %27 = load i32, i32* @SPI_SETWORKAREA, align 4
  %28 = call i32 @NtUserSystemParametersInfo(i32 %27, i32 0, %struct.TYPE_4__* %2, i32 0)
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = call i32 @TEST(i32 %30)
  %32 = load i32, i32* @SPI_SETWORKAREA, align 4
  %33 = call i32 @NtUserSystemParametersInfo(i32 %32, i32 16, %struct.TYPE_4__* %2, i32 0)
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @TEST(i32 %35)
  %37 = load i32, i32* @SPI_GETWORKAREA, align 4
  %38 = call i32 @NtUserSystemParametersInfo(i32 %37, i32 1, %struct.TYPE_4__* %2, i32 0)
  %39 = icmp eq i32 %38, 1
  %40 = zext i1 %39 to i32
  %41 = call i32 @TEST(i32 %40)
  %42 = load i32, i32* @SPI_GETWORKAREA, align 4
  %43 = call i32 @NtUserSystemParametersInfo(i32 %42, i32 -1, %struct.TYPE_4__* %2, i32 0)
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i32
  %46 = call i32 @TEST(i32 %45)
  %47 = load i32, i32* @SPI_GETWORKAREA, align 4
  %48 = call i32 @NtUserSystemParametersInfo(i32 %47, i32 -559038737, %struct.TYPE_4__* %2, i32 0)
  %49 = icmp eq i32 %48, 1
  %50 = zext i1 %49 to i32
  %51 = call i32 @TEST(i32 %50)
  %52 = load i32, i32* @SPI_GETWORKAREA, align 4
  %53 = call i32 @NtUserSystemParametersInfo(i32 %52, i32 0, %struct.TYPE_4__* inttoptr (i64 3735928559 to %struct.TYPE_4__*), i32 0)
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @TEST(i32 %55)
  %57 = bitcast %struct.TYPE_4__* %2 to i8*
  %58 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 16, i1 false)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 -1, i32* %59, align 4
  %60 = load i32, i32* @SPI_SETWORKAREA, align 4
  %61 = call i32 @NtUserSystemParametersInfo(i32 %60, i32 0, %struct.TYPE_4__* %2, i32 0)
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @TEST(i32 %63)
  %65 = bitcast %struct.TYPE_4__* %2 to i8*
  %66 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 16, i1 false)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 -1, i32* %67, align 4
  %68 = load i32, i32* @SPI_SETWORKAREA, align 4
  %69 = call i32 @NtUserSystemParametersInfo(i32 %68, i32 0, %struct.TYPE_4__* %2, i32 0)
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @TEST(i32 %71)
  %73 = bitcast %struct.TYPE_4__* %2 to i8*
  %74 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 16, i1 false)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 10, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  store i32 11, i32* %76, align 4
  %77 = load i32, i32* @SPI_SETWORKAREA, align 4
  %78 = call i32 @NtUserSystemParametersInfo(i32 %77, i32 0, %struct.TYPE_4__* %2, i32 0)
  %79 = icmp eq i32 %78, 1
  %80 = zext i1 %79 to i32
  %81 = call i32 @TEST(i32 %80)
  %82 = bitcast %struct.TYPE_4__* %2 to i8*
  %83 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 16, i1 false)
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 10, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  store i32 10, i32* %85, align 4
  %86 = load i32, i32* @SPI_SETWORKAREA, align 4
  %87 = call i32 @NtUserSystemParametersInfo(i32 %86, i32 0, %struct.TYPE_4__* %2, i32 0)
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @TEST(i32 %89)
  %91 = bitcast %struct.TYPE_4__* %2 to i8*
  %92 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 16, i1 false)
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 10, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  store i32 9, i32* %94, align 4
  %95 = load i32, i32* @SPI_SETWORKAREA, align 4
  %96 = call i32 @NtUserSystemParametersInfo(i32 %95, i32 0, %struct.TYPE_4__* %2, i32 0)
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @TEST(i32 %98)
  %100 = bitcast %struct.TYPE_4__* %2 to i8*
  %101 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 16, i1 false)
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 10, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32 11, i32* %103, align 4
  %104 = load i32, i32* @SPI_SETWORKAREA, align 4
  %105 = call i32 @NtUserSystemParametersInfo(i32 %104, i32 0, %struct.TYPE_4__* %2, i32 0)
  %106 = icmp eq i32 %105, 1
  %107 = zext i1 %106 to i32
  %108 = call i32 @TEST(i32 %107)
  %109 = bitcast %struct.TYPE_4__* %2 to i8*
  %110 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %109, i8* align 4 %110, i64 16, i1 false)
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 10, i32* %111, align 4
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32 10, i32* %112, align 4
  %113 = load i32, i32* @SPI_SETWORKAREA, align 4
  %114 = call i32 @NtUserSystemParametersInfo(i32 %113, i32 0, %struct.TYPE_4__* %2, i32 0)
  %115 = icmp eq i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @TEST(i32 %116)
  %118 = bitcast %struct.TYPE_4__* %2 to i8*
  %119 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 16, i1 false)
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 10, i32* %120, align 4
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32 9, i32* %121, align 4
  %122 = load i32, i32* @SPI_SETWORKAREA, align 4
  %123 = call i32 @NtUserSystemParametersInfo(i32 %122, i32 0, %struct.TYPE_4__* %2, i32 0)
  %124 = icmp eq i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @TEST(i32 %125)
  %127 = bitcast %struct.TYPE_4__* %2 to i8*
  %128 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 4 %128, i64 16, i1 false)
  %129 = load i32, i32* @SM_CYVIRTUALSCREEN, align 4
  %130 = call i32 @GetSystemMetrics(i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* @SPI_SETWORKAREA, align 4
  %133 = call i32 @NtUserSystemParametersInfo(i32 %132, i32 0, %struct.TYPE_4__* %2, i32 0)
  %134 = icmp eq i32 %133, 1
  %135 = zext i1 %134 to i32
  %136 = call i32 @TEST(i32 %135)
  %137 = bitcast %struct.TYPE_4__* %2 to i8*
  %138 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 %138, i64 16, i1 false)
  %139 = load i32, i32* @SM_CYVIRTUALSCREEN, align 4
  %140 = call i32 @GetSystemMetrics(i32 %139)
  %141 = add nsw i32 %140, 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* @SPI_SETWORKAREA, align 4
  %144 = call i32 @NtUserSystemParametersInfo(i32 %143, i32 0, %struct.TYPE_4__* %2, i32 0)
  %145 = icmp eq i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i32 @TEST(i32 %146)
  %148 = bitcast %struct.TYPE_4__* %2 to i8*
  %149 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %148, i8* align 4 %149, i64 16, i1 false)
  %150 = load i32, i32* @SM_CXVIRTUALSCREEN, align 4
  %151 = call i32 @GetSystemMetrics(i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* @SPI_SETWORKAREA, align 4
  %154 = call i32 @NtUserSystemParametersInfo(i32 %153, i32 0, %struct.TYPE_4__* %2, i32 0)
  %155 = icmp eq i32 %154, 1
  %156 = zext i1 %155 to i32
  %157 = call i32 @TEST(i32 %156)
  %158 = bitcast %struct.TYPE_4__* %2 to i8*
  %159 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %158, i8* align 4 %159, i64 16, i1 false)
  %160 = load i32, i32* @SM_CXVIRTUALSCREEN, align 4
  %161 = call i32 @GetSystemMetrics(i32 %160)
  %162 = add nsw i32 %161, 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* @SPI_SETWORKAREA, align 4
  %165 = call i32 @NtUserSystemParametersInfo(i32 %164, i32 0, %struct.TYPE_4__* %2, i32 0)
  %166 = icmp eq i32 %165, 0
  %167 = zext i1 %166 to i32
  %168 = call i32 @TEST(i32 %167)
  %169 = load i32, i32* @SPI_SETWORKAREA, align 4
  %170 = call i32 @NtUserSystemParametersInfo(i32 %169, i32 0, %struct.TYPE_4__* %1, i32 0)
  %171 = icmp eq i32 %170, 1
  %172 = zext i1 %171 to i32
  %173 = call i32 @ASSERT(i32 %172)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @NtUserSystemParametersInfo(i32, i32, %struct.TYPE_4__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TEST(i32) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
