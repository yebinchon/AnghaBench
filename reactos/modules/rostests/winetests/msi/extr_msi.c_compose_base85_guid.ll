; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_compose_base85_guid.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_compose_base85_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Expected S_OK, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Expected 39, got %d\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @compose_base85_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compose_base85_guid(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %24 = call i64 @CoCreateGuid(i32* %11)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %12, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @MAX_PATH, align 4
  %32 = call i32 @StringFromGUID2(i32* %11, i32* %17, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 39
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* @CP_ACP, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @MAX_PATH, align 4
  %42 = call i32 @WideCharToMultiByte(i32 %38, i32 0, i32* %17, i32 %39, i32 %40, i32 %41, i32* null, i32* null)
  %43 = call i32 @encode_base85_guid(i32* %11, i32* %20)
  %44 = load i32, i32* @CP_ACP, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @MAX_PATH, align 4
  %47 = call i32 @WideCharToMultiByte(i32 %44, i32 0, i32* %20, i32 -1, i32 %45, i32 %46, i32* null, i32* null)
  %48 = call i32 @squash_guid(i32* %17, i32* %23)
  %49 = load i32, i32* @CP_ACP, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @MAX_PATH, align 4
  %52 = call i32 @WideCharToMultiByte(i32 %49, i32 0, i32* %23, i32 -1, i32 %50, i32 %51, i32* null, i32* null)
  %53 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %53)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CoCreateGuid(i32*) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i32 @StringFromGUID2(i32*, i32*, i32) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @encode_base85_guid(i32*, i32*) #2

declare dso_local i32 @squash_guid(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
