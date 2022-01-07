; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/cmd/extr_batch.c_run_from_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/cmd/extr_batch.c_run_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not map file %s: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s.exp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @run_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_from_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @map_file(i8* %14, i8** %5)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 @ok(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20)
  store i32 1, i32* %9, align 4
  br label %43

22:                                               ; preds = %1
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = call i32 @map_file(i8* %13, i8** %6)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 @ok(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %29)
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @UnmapViewOfFile(i8* %31)
  store i32 1, i32* %9, align 4
  br label %43

33:                                               ; preds = %22
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @run_test(i8* %34, i32 %35, i8* %36, i32 %37)
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @UnmapViewOfFile(i8* %39)
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @UnmapViewOfFile(i8* %41)
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %33, %28, %18
  %44 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %9, align 4
  switch i32 %45, label %47 [
    i32 0, label %46
    i32 1, label %46
  ]

46:                                               ; preds = %43, %43
  ret void

47:                                               ; preds = %43
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @map_file(i8*, i8**) #2

declare dso_local i32 @ok(i32, i8*, i8*, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @UnmapViewOfFile(i8*) #2

declare dso_local i32 @run_test(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
