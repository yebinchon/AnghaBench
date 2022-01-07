; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_SPI_SETSTICKYKEYS.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_SPI_SETSTICKYKEYS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SPI_GETSTICKYKEYS = common dso_local global i32 0, align 4
@SPI_SETSTICKYKEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_SPI_SETSTICKYKEYS() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 8, i32* %3, align 4
  %4 = load i32, i32* @SPI_GETSTICKYKEYS, align 4
  %5 = call i32 @NtUserSystemParametersInfo(i32 %4, i32 0, %struct.TYPE_3__* %1, i32 0)
  %6 = icmp eq i32 %5, 1
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 9, i32* %9, align 4
  %10 = load i32, i32* @SPI_GETSTICKYKEYS, align 4
  %11 = call i32 @NtUserSystemParametersInfo(i32 %10, i32 0, %struct.TYPE_3__* %2, i32 0)
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @TEST(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 7, i32* %15, align 4
  %16 = load i32, i32* @SPI_GETSTICKYKEYS, align 4
  %17 = call i32 @NtUserSystemParametersInfo(i32 %16, i32 0, %struct.TYPE_3__* %2, i32 0)
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @TEST(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 8, i32* %21, align 4
  %22 = load i32, i32* @SPI_GETSTICKYKEYS, align 4
  %23 = call i32 @NtUserSystemParametersInfo(i32 %22, i32 1, %struct.TYPE_3__* %2, i32 0)
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @TEST(i32 %25)
  %27 = load i32, i32* @SPI_GETSTICKYKEYS, align 4
  %28 = call i32 @NtUserSystemParametersInfo(i32 %27, i32 -1, %struct.TYPE_3__* %2, i32 0)
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @TEST(i32 %30)
  %32 = load i32, i32* @SPI_GETSTICKYKEYS, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @NtUserSystemParametersInfo(i32 %32, i32 %34, %struct.TYPE_3__* %2, i32 0)
  %36 = icmp eq i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = call i32 @TEST(i32 %37)
  %39 = load i32, i32* @SPI_GETSTICKYKEYS, align 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @NtUserSystemParametersInfo(i32 %39, i32 %42, %struct.TYPE_3__* %2, i32 0)
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @TEST(i32 %45)
  %47 = load i32, i32* @SPI_GETSTICKYKEYS, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @NtUserSystemParametersInfo(i32 %47, i32 %50, %struct.TYPE_3__* %2, i32 0)
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @TEST(i32 %53)
  %55 = bitcast %struct.TYPE_3__* %2 to i8*
  %56 = bitcast %struct.TYPE_3__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 8, i1 false)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %58, 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @SPI_SETSTICKYKEYS, align 4
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i32 @NtUserSystemParametersInfo(i32 %61, i32 %64, %struct.TYPE_3__* %2, i32 0)
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @TEST(i32 %67)
  %69 = load i32, i32* @SPI_SETSTICKYKEYS, align 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i32 @NtUserSystemParametersInfo(i32 %69, i32 %72, %struct.TYPE_3__* %2, i32 0)
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @TEST(i32 %75)
  %77 = load i32, i32* @SPI_SETSTICKYKEYS, align 4
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @NtUserSystemParametersInfo(i32 %77, i32 %79, %struct.TYPE_3__* %2, i32 0)
  %81 = icmp eq i32 %80, 1
  %82 = zext i1 %81 to i32
  %83 = call i32 @TEST(i32 %82)
  %84 = bitcast %struct.TYPE_3__* %2 to i8*
  %85 = bitcast %struct.TYPE_3__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 8, i1 false)
  %86 = load i32, i32* @SPI_GETSTICKYKEYS, align 4
  %87 = call i32 @NtUserSystemParametersInfo(i32 %86, i32 0, %struct.TYPE_3__* %2, i32 0)
  %88 = icmp eq i32 %87, 1
  %89 = zext i1 %88 to i32
  %90 = call i32 @TEST(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = xor i32 %94, 1
  %96 = icmp eq i32 %92, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @TEST(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 8, i32* %99, align 4
  %100 = load i32, i32* @SPI_SETSTICKYKEYS, align 4
  %101 = call i32 @NtUserSystemParametersInfo(i32 %100, i32 0, %struct.TYPE_3__* %1, i32 0)
  %102 = icmp eq i32 %101, 1
  %103 = zext i1 %102 to i32
  %104 = call i32 @ASSERT(i32 %103)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @NtUserSystemParametersInfo(i32, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @TEST(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
