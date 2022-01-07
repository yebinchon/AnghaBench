; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wintrust/extr_softpub.c_create_temp_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wintrust/extr_softpub.c_create_temp_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@create_temp_file.img = internal constant [4 x i8] c"img\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @create_temp_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_temp_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = udiv i64 %8, 1
  %12 = trunc i64 %11 to i32
  %13 = call i64 @GetTempPathW(i32 %12, i8* %10)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = call i64 @GetTempFileNameW(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @create_temp_file.img, i64 0, i64 0), i32 0, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i8*, i8** %2, align 8
  %21 = load i32, i32* @GENERIC_READ, align 4
  %22 = load i32, i32* @GENERIC_WRITE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CREATE_ALWAYS, align 4
  %25 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %26 = call i32 @CreateFileW(i8* %20, i32 %23, i32 0, i32* null, i32 %24, i32 %25, i32* null)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %19, %15
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i32, i32* %3, align 4
  %30 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %30)
  ret i32 %29
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetTempPathW(i32, i8*) #2

declare dso_local i64 @GetTempFileNameW(i8*, i8*, i32, i8*) #2

declare dso_local i32 @CreateFileW(i8*, i32, i32, i32*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
