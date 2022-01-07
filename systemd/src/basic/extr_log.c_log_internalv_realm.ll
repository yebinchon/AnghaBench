; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_log.c_log_internalv_realm.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_log.c_log_internalv_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINE_MAX = common dso_local global i32 0, align 4
@PROTECT_ERRNO = common dso_local global i32 0, align 4
@log_max_level = common dso_local global i64* null, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log_internalv_realm(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @LOG_REALM_REMOVE_LEVEL(i32 %20)
  store i64 %21, i64* %16, align 8
  %22 = load i32, i32* @LINE_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %17, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %18, align 8
  %26 = load i32, i32* @PROTECT_ERRNO, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @LOG_PRI(i32 %27)
  %29 = load i64*, i64** @log_max_level, align 8
  %30 = load i64, i64* %16, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %28, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @_likely_(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %7
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @ERRNO_VALUE(i32 %38)
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %54

41:                                               ; preds = %7
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @ERRNO_VALUE(i32 %42)
  store i32 %43, i32* @errno, align 4
  %44 = trunc i64 %23 to i32
  %45 = load i8*, i8** %14, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @vsnprintf(i8* %25, i32 %44, i8* %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @log_dispatch_internal(i32 %48, i32 %49, i8* %50, i32 %51, i8* %52, i32* null, i32* null, i32* null, i32* null, i8* %25)
  store i32 %53, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %54

54:                                               ; preds = %41, %37
  %55 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i64 @LOG_REALM_REMOVE_LEVEL(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @_likely_(i32) #1

declare dso_local i64 @LOG_PRI(i32) #1

declare dso_local i32 @ERRNO_VALUE(i32) #1

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @log_dispatch_internal(i32, i32, i8*, i32, i8*, i32*, i32*, i32*, i32*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
