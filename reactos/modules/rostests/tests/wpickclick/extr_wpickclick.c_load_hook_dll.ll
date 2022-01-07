; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/wpickclick/extr_wpickclick.c_load_hook_dll.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/wpickclick/extr_wpickclick.c_load_hook_dll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hook.dll\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"\\hookdll\\hook.dll\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @load_hook_dll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @load_hook_dll() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = call i32* @LoadLibrary(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = load i32*, i32** %2, align 8
  store i32* %15, i32** %1, align 8
  store i32 1, i32* %6, align 4
  br label %37

16:                                               ; preds = %0
  %17 = trunc i64 %8 to i32
  %18 = call i32 @GetModuleFileName(i32* null, i8* %10, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32* null, i32** %1, align 8
  store i32 1, i32* %6, align 4
  br label %37

21:                                               ; preds = %16
  %22 = call i8* @strrchr(i8* %10, i8 signext 92)
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32* null, i32** %1, align 8
  store i32 1, i32* %6, align 4
  br label %37

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  store i8 0, i8* %27, align 1
  %28 = call i8* @strrchr(i8* %10, i8 signext 92)
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32* null, i32** %1, align 8
  store i32 1, i32* %6, align 4
  br label %37

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  store i8 0, i8* %33, align 1
  %34 = call i32 @strcat(i8* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32* @LoadLibrary(i8* %10)
  store i32* %35, i32** %2, align 8
  %36 = load i32*, i32** %2, align 8
  store i32* %36, i32** %1, align 8
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %32, %31, %25, %20, %14
  %38 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32*, i32** %1, align 8
  ret i32* %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @LoadLibrary(i8*) #2

declare dso_local i32 @GetModuleFileName(i32*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strcat(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
