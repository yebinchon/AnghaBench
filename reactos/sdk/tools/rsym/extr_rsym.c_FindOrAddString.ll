; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.c_FindOrAddString.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.c_FindOrAddString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.StringHashTable = type { i32, %struct.StringEntry** }
%struct.StringEntry = type { i32, %struct.StringEntry*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.StringHashTable*, i8*, i32*, i8*)* @FindOrAddString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FindOrAddString(%struct.StringHashTable* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.StringHashTable*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.StringEntry*, align 8
  %12 = alloca i8*, align 8
  store %struct.StringHashTable* %0, %struct.StringHashTable** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @ComputeDJBHash(i8* %13)
  %15 = load %struct.StringHashTable*, %struct.StringHashTable** %6, align 8
  %16 = getelementptr inbounds %struct.StringHashTable, %struct.StringHashTable* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = urem i32 %14, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.StringHashTable*, %struct.StringHashTable** %6, align 8
  %20 = getelementptr inbounds %struct.StringHashTable, %struct.StringHashTable* %19, i32 0, i32 1
  %21 = load %struct.StringEntry**, %struct.StringEntry*** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.StringEntry*, %struct.StringEntry** %21, i64 %23
  %25 = load %struct.StringEntry*, %struct.StringEntry** %24, align 8
  store %struct.StringEntry* %25, %struct.StringEntry** %11, align 8
  br label %26

26:                                               ; preds = %38, %4
  %27 = load %struct.StringEntry*, %struct.StringEntry** %11, align 8
  %28 = icmp ne %struct.StringEntry* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.StringEntry*, %struct.StringEntry** %11, align 8
  %31 = getelementptr inbounds %struct.StringEntry, %struct.StringEntry* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @strcmp(i32 %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %29, %26
  %37 = phi i1 [ false, %26 ], [ %35, %29 ]
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = load %struct.StringEntry*, %struct.StringEntry** %11, align 8
  %40 = getelementptr inbounds %struct.StringEntry, %struct.StringEntry* %39, i32 0, i32 1
  %41 = load %struct.StringEntry*, %struct.StringEntry** %40, align 8
  store %struct.StringEntry* %41, %struct.StringEntry** %11, align 8
  br label %26

42:                                               ; preds = %36
  %43 = load %struct.StringEntry*, %struct.StringEntry** %11, align 8
  %44 = icmp ne %struct.StringEntry* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.StringEntry*, %struct.StringEntry** %11, align 8
  %47 = getelementptr inbounds %struct.StringEntry, %struct.StringEntry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %5, align 4
  br label %80

49:                                               ; preds = %42
  %50 = load i8*, i8** %9, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  store i8* %54, i8** %12, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @strcpy(i8* %55, i8* %56)
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = add nsw i32 %59, 1
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %60
  store i32 %63, i32* %61, align 4
  %64 = load %struct.StringHashTable*, %struct.StringHashTable** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i8*, i8** %12, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @AddStringToHash(%struct.StringHashTable* %64, i32 %65, i32 %71, i8* %72)
  %74 = load i8*, i8** %12, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %49, %45
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @ComputeDJBHash(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @AddStringToHash(%struct.StringHashTable*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
