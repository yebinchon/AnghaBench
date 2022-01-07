; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_enum_files.c_test_Next_errors.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_enum_files.c_test_Next_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_FILES = common dso_local global i32 0, align 4
@test_enumFiles = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Invalid call to Next succeeded: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Next_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Next_errors() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @NUM_FILES, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %2, align 8
  %7 = alloca i32*, i64 %5, align 16
  store i64 %5, i64* %3, align 8
  %8 = load i32, i32* @test_enumFiles, align 4
  %9 = call i64 @IEnumBackgroundCopyFiles_Next(i32 %8, i32 2, i32** %7, i32* null)
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @E_INVALIDARG, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %16)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IEnumBackgroundCopyFiles_Next(i32, i32, i32**, i32*) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
