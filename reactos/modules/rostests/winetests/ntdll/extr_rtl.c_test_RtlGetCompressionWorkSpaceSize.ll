; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_RtlGetCompressionWorkSpaceSize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_RtlGetCompressionWorkSpaceSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPRESSION_FORMAT_NONE = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"got wrong status 0x%08x\0A\00", align 1
@COMPRESSION_FORMAT_DEFAULT = common dso_local global i32 0, align 4
@STATUS_UNSUPPORTED_COMPRESSION = common dso_local global i32 0, align 4
@COMPRESSION_FORMAT_LZNT1 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"got wrong compress_workspace %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"got wrong decompress_workspace %u\0A\00", align 1
@COMPRESSION_ENGINE_MAXIMUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlGetCompressionWorkSpaceSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlGetCompressionWorkSpaceSize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @COMPRESSION_FORMAT_NONE, align 4
  %5 = call i32 @pRtlGetCompressionWorkSpaceSize(i32 %4, i32* %1, i32* %2)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @COMPRESSION_FORMAT_DEFAULT, align 4
  %13 = call i32 @pRtlGetCompressionWorkSpaceSize(i32 %12, i32* %1, i32* %2)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @pRtlGetCompressionWorkSpaceSize(i32 255, i32* %1, i32* %2)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @STATUS_UNSUPPORTED_COMPRESSION, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 -559038737, i32* %2, align 4
  store i32 -559038737, i32* %1, align 4
  %27 = load i32, i32* @COMPRESSION_FORMAT_LZNT1, align 4
  %28 = call i32 @pRtlGetCompressionWorkSpaceSize(i32 %27, i32* %1, i32* %2)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @STATUS_SUCCESS, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %1, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = icmp eq i32 %40, 4096
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  store i32 -559038737, i32* %2, align 4
  store i32 -559038737, i32* %1, align 4
  %45 = load i32, i32* @COMPRESSION_FORMAT_LZNT1, align 4
  %46 = load i32, i32* @COMPRESSION_ENGINE_MAXIMUM, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @pRtlGetCompressionWorkSpaceSize(i32 %47, i32* %1, i32* %2)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @STATUS_SUCCESS, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %1, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %1, align 4
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %2, align 4
  %61 = icmp eq i32 %60, 4096
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  ret void
}

declare dso_local i32 @pRtlGetCompressionWorkSpaceSize(i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
