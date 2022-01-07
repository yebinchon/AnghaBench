; ModuleID = '/home/carl/AnghaBench/upx/src/stub/src/extr_i386-bsd.elf-main.c_xread.c'
source_filename = "/home/carl/AnghaBench/upx/src/stub/src/extr_i386-bsd.elf-main.c_xread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Extent = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Extent*, i8*, i64)* @xread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xread(%struct.Extent* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.Extent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.Extent* %0, %struct.Extent** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.Extent*, %struct.Extent** %4, align 8
  %11 = getelementptr inbounds %struct.Extent, %struct.Extent* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %8, align 8
  %14 = call i32 (...) @STR_xread()
  %15 = load %struct.Extent*, %struct.Extent** %4, align 8
  %16 = load %struct.Extent*, %struct.Extent** %4, align 8
  %17 = getelementptr inbounds %struct.Extent, %struct.Extent* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.Extent*, %struct.Extent** %4, align 8
  %20 = getelementptr inbounds %struct.Extent, %struct.Extent* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @DPRINTF(i32 %24)
  %26 = load %struct.Extent*, %struct.Extent** %4, align 8
  %27 = getelementptr inbounds %struct.Extent, %struct.Extent* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = call i32 @exit(i32 127) #3
  unreachable

33:                                               ; preds = %3
  %34 = load i64, i64* %6, align 8
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %43, %33
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %9, align 8
  %38 = icmp ne i64 0, %36
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %8, align 8
  store i8 %41, i8* %42, align 1
  br label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %8, align 8
  br label %35

48:                                               ; preds = %35
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.Extent*, %struct.Extent** %4, align 8
  %51 = getelementptr inbounds %struct.Extent, %struct.Extent* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 %49
  store i8* %53, i8** %51, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.Extent*, %struct.Extent** %4, align 8
  %56 = getelementptr inbounds %struct.Extent, %struct.Extent* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %57, %54
  store i64 %58, i64* %56, align 8
  ret void
}

declare dso_local i32 @DPRINTF(i32) #1

declare dso_local i32 @STR_xread(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
