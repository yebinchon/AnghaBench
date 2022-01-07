; ModuleID = '/home/carl/AnghaBench/tig/src/extr_types.c_map_enum_do.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_types.c_map_enum_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enum_map_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @map_enum_do(%struct.enum_map_entry* %0, i64 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.enum_map_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.enum_map_entry* %0, %struct.enum_map_entry** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %39, %4
  %15 = load i32, i32* %11, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %7, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %14
  %20 = load %struct.enum_map_entry*, %struct.enum_map_entry** %6, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.enum_map_entry, %struct.enum_map_entry* %20, i64 %22
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds %struct.enum_map_entry, %struct.enum_map_entry* %23, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @enum_equals(i32 %27, i8* %24, i64 %25)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %19
  %31 = load %struct.enum_map_entry*, %struct.enum_map_entry** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.enum_map_entry, %struct.enum_map_entry* %31, i64 %33
  %35 = getelementptr inbounds %struct.enum_map_entry, %struct.enum_map_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  store i32 1, i32* %5, align 4
  br label %43

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %14

42:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @enum_equals(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
