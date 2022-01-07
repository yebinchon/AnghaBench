; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_actctx.c_write_manifest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_actctx.c_write_manifest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"CreateFile failed: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @write_manifest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_manifest(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = mul nuw i64 4, %10
  %14 = udiv i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = call i32 @GetTempPathA(i32 %15, i32* %12)
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strcat(i32* %12, i8* %17)
  %19 = load i32, i32* @GENERIC_WRITE, align 4
  %20 = load i32, i32* @CREATE_ALWAYS, align 4
  %21 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %22 = call i64 @CreateFileA(i32* %12, i32 %19, i32 0, i32* null, i32 %20, i32 %21, i32* null)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 (...) @GetLastError()
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i64, i64* %5, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = call i32 @WriteFile(i64 %29, i8* %30, i32 %32, i32* %6, i32* null)
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @CloseHandle(i64 %34)
  %36 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %36)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathA(i32, i32*) #2

declare dso_local i32 @strcat(i32*, i8*) #2

declare dso_local i64 @CreateFileA(i32*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @WriteFile(i64, i8*, i32, i32*, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @CloseHandle(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
