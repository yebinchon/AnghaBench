; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/avifil32/extr_api.c_test_amh_corruption.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/avifil32/extr_api.c_test_amh_corruption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@testfilename = common dso_local global i32 0, align 4
@OF_SHARE_DENY_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Able to open file: error=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Deleting file %s failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_amh_corruption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_amh_corruption() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = call i32 @GetTempPathA(i32 %10, i8* %9)
  %12 = call i32 @strlen(i8* %9)
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %9, i64 %13
  %15 = load i32, i32* @testfilename, align 4
  %16 = call i32 @strcpy(i8* %14, i32 %15)
  %17 = call i32 @init_test_struct(%struct.TYPE_4__* %1)
  %18 = call i32 @mmioFOURCC(i8 signext 65, i8 signext 86, i8 signext 105, i8 signext 32)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  store i32 %18, i32* %21, align 4
  %22 = call i32 @create_avi_file(%struct.TYPE_4__* %1, i8* %9)
  %23 = load i32, i32* @OF_SHARE_DENY_WRITE, align 4
  %24 = call i32 @AVIFileOpenA(i32* %4, i8* %9, i32 %23, i64 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = call i64 @DeleteFileA(i8* %9)
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %34 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %34)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @init_test_struct(%struct.TYPE_4__*) #2

declare dso_local i32 @mmioFOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #2

declare dso_local i32 @create_avi_file(%struct.TYPE_4__*, i8*) #2

declare dso_local i32 @AVIFileOpenA(i32*, i8*, i32, i64) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @DeleteFileA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
