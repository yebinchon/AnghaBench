; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_url.c_hash_url.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_url.c_hash_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"UrlHashA returned 0x%x (expected S_OK) for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"UrlHashW returned 0x%x (expected S_OK) for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Hashes didn't match (A: 0x%x, W: 0x%x) for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hash_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_url(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @GetWideString(i8* %10)
  store i32 %11, i32* %4, align 4
  store i32 4, i32* %6, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = ptrtoint i32* %7 to i32
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @pUrlHashA(i8* %12, i32 %13, i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 (i32, i8*, i32, ...) @ok(i32 %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22)
  br i1 true, label %24, label %45

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = ptrtoint i32* %8 to i32
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @pUrlHashW(i32 %25, i32 %26, i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %5, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 (i32, i8*, i32, ...) @ok(i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %34, i8* %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 (i32, i8*, i32, ...) @ok(i32 %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %42, i8* %43)
  br label %45

45:                                               ; preds = %24, %1
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @FreeWideString(i32 %46)
  ret void
}

declare dso_local i32 @GetWideString(i8*) #1

declare dso_local i64 @pUrlHashA(i8*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i64 @pUrlHashW(i32, i32, i32) #1

declare dso_local i32 @FreeWideString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
