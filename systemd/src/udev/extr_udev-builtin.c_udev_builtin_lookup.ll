; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin.c_udev_builtin_lookup.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin.c_udev_builtin_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@WHITESPACE = common dso_local global i32 0, align 4
@_UDEV_BUILTIN_MAX = common dso_local global i64 0, align 8
@builtins = common dso_local global %struct.TYPE_2__** null, align 8
@_UDEV_BUILTIN_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @udev_builtin_lookup(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @assert(i8* %6)
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @WHITESPACE, align 4
  %10 = call i64 @strspn(i8* %8, i32 %9)
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 %10
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @WHITESPACE, align 4
  %15 = call i64 @strcspn(i8* %13, i32 %14)
  store i64 %15, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %40, %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @_UDEV_BUILTIN_MAX, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @builtins, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @builtins, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @strneq(i32 %32, i8* %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i64, i64* %4, align 8
  store i64 %38, i64* %2, align 8
  br label %45

39:                                               ; preds = %26, %20
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %4, align 8
  br label %16

43:                                               ; preds = %16
  %44 = load i64, i64* @_UDEV_BUILTIN_INVALID, align 8
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @strspn(i8*, i32) #1

declare dso_local i64 @strcspn(i8*, i32) #1

declare dso_local i64 @strneq(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
