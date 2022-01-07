; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_add_modifier.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_add_modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_modifier = type { i8*, i64, i8**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.format_modifier**, i64*, i8*, i64, i8**, i32)* @format_add_modifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_add_modifier(%struct.format_modifier** %0, i64* %1, i8* %2, i64 %3, i8** %4, i32 %5) #0 {
  %7 = alloca %struct.format_modifier**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.format_modifier*, align 8
  store %struct.format_modifier** %0, %struct.format_modifier*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.format_modifier**, %struct.format_modifier*** %7, align 8
  %15 = load %struct.format_modifier*, %struct.format_modifier** %14, align 8
  %16 = load i64*, i64** %8, align 8
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = call %struct.format_modifier* @xreallocarray(%struct.format_modifier* %15, i64 %18, i32 32)
  %20 = load %struct.format_modifier**, %struct.format_modifier*** %7, align 8
  store %struct.format_modifier* %19, %struct.format_modifier** %20, align 8
  %21 = load %struct.format_modifier**, %struct.format_modifier*** %7, align 8
  %22 = load %struct.format_modifier*, %struct.format_modifier** %21, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %22, i64 %24
  store %struct.format_modifier* %26, %struct.format_modifier** %13, align 8
  %27 = load %struct.format_modifier*, %struct.format_modifier** %13, align 8
  %28 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @memcpy(i8* %29, i8* %30, i64 %31)
  %33 = load %struct.format_modifier*, %struct.format_modifier** %13, align 8
  %34 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.format_modifier*, %struct.format_modifier** %13, align 8
  %40 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i8**, i8*** %11, align 8
  %42 = load %struct.format_modifier*, %struct.format_modifier** %13, align 8
  %43 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %42, i32 0, i32 2
  store i8** %41, i8*** %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.format_modifier*, %struct.format_modifier** %13, align 8
  %46 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  ret void
}

declare dso_local %struct.format_modifier* @xreallocarray(%struct.format_modifier*, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
