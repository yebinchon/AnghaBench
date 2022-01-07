; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_icoformat.c_test_decoder.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_icoformat.c_test_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_ico = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ico_1 = common dso_local global %struct.test_ico zeroinitializer, align 4
@S_OK = common dso_local global i32 0, align 4
@WINCODEC_ERR_BADIMAGE = common dso_local global i32 0, align 4
@WINCODEC_ERR_STREAMREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_decoder() #0 {
  %1 = alloca %struct.test_ico, align 4
  %2 = bitcast %struct.test_ico* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.test_ico* @ico_1 to i8*), i64 24, i1 false)
  %3 = getelementptr inbounds %struct.test_ico, %struct.test_ico* %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 2, i32* %4, align 4
  %5 = getelementptr inbounds %struct.test_ico, %struct.test_ico* %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 2, i32* %6, align 4
  %7 = load i32, i32* @S_OK, align 4
  %8 = call i32 @test_ico_data(%struct.test_ico* %1, i32 24, i32 %7)
  %9 = bitcast %struct.test_ico* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.test_ico* @ico_1 to i8*), i64 24, i1 false)
  %10 = getelementptr inbounds %struct.test_ico, %struct.test_ico* %1, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  store i32 24, i32* %11, align 4
  %12 = load i32, i32* @WINCODEC_ERR_BADIMAGE, align 4
  %13 = call i32 @test_ico_data(%struct.test_ico* %1, i32 24, i32 %12)
  %14 = bitcast %struct.test_ico* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.test_ico* @ico_1 to i8*), i64 24, i1 false)
  %15 = getelementptr inbounds %struct.test_ico, %struct.test_ico* %1, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  store i32 24, i32* %16, align 4
  %17 = load i32, i32* @WINCODEC_ERR_BADIMAGE, align 4
  %18 = call i32 @test_ico_data(%struct.test_ico* %1, i32 24, i32 %17)
  %19 = bitcast %struct.test_ico* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.test_ico* @ico_1 to i8*), i64 24, i1 false)
  %20 = getelementptr inbounds %struct.test_ico, %struct.test_ico* %1, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* @S_OK, align 4
  %23 = call i32 @test_ico_data_todo(%struct.test_ico* %1, i32 24, i32 %22)
  %24 = getelementptr inbounds %struct.test_ico, %struct.test_ico* %1, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.test_ico, %struct.test_ico* %1, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 100, i32* %27, align 4
  %28 = load i32, i32* @S_OK, align 4
  %29 = call i32 @test_ico_data_todo(%struct.test_ico* %1, i32 24, i32 %28)
  %30 = bitcast %struct.test_ico* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 bitcast (%struct.test_ico* @ico_1 to i8*), i64 24, i1 false)
  %31 = load i32, i32* @WINCODEC_ERR_STREAMREAD, align 4
  %32 = call i32 @test_ico_data(%struct.test_ico* %1, i32 7, i32 %31)
  %33 = load i32, i32* @WINCODEC_ERR_BADIMAGE, align 4
  %34 = call i32 @test_ico_data(%struct.test_ico* %1, i32 23, i32 %33)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @test_ico_data(%struct.test_ico*, i32, i32) #2

declare dso_local i32 @test_ico_data_todo(%struct.test_ico*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
