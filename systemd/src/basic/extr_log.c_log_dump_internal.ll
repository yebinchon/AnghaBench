; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_log.c_log_dump_internal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_log.c_log_dump_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROTECT_ERRNO = common dso_local global i32 0, align 4
@log_max_level = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log_dump_internal(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @LOG_REALM_REMOVE_LEVEL(i32 %15)
  store i64 %16, i64* %14, align 8
  %17 = load i32, i32* @PROTECT_ERRNO, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @LOG_PRI(i32 %18)
  %20 = load i64*, i64** @log_max_level, align 8
  %21 = load i64, i64* %14, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %19, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @_likely_(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @ERRNO_VALUE(i32 %29)
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %40

32:                                               ; preds = %6
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @log_dispatch_internal(i32 %33, i32 %34, i8* %35, i32 %36, i8* %37, i32* null, i32* null, i32* null, i32* null, i8* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %32, %28
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i64 @LOG_REALM_REMOVE_LEVEL(i32) #1

declare dso_local i64 @_likely_(i32) #1

declare dso_local i64 @LOG_PRI(i32) #1

declare dso_local i32 @ERRNO_VALUE(i32) #1

declare dso_local i32 @log_dispatch_internal(i32, i32, i8*, i32, i8*, i32*, i32*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
