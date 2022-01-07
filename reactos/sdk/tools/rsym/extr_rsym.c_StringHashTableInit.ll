; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.c_StringHashTableInit.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.c_StringHashTableInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.StringHashTable = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.StringHashTable*, i32, i8*)* @StringHashTableInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StringHashTableInit(%struct.StringHashTable* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.StringHashTable*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.StringHashTable* %0, %struct.StringHashTable** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  store i8* %13, i8** %8, align 8
  %14 = load %struct.StringHashTable*, %struct.StringHashTable** %4, align 8
  %15 = getelementptr inbounds %struct.StringHashTable, %struct.StringHashTable* %14, i32 0, i32 0
  store i32 1024, i32* %15, align 4
  %16 = call i32 @calloc(i32 1024, i32 8)
  %17 = load %struct.StringHashTable*, %struct.StringHashTable** %4, align 8
  %18 = getelementptr inbounds %struct.StringHashTable, %struct.StringHashTable* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %23, %3
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load %struct.StringHashTable*, %struct.StringHashTable** %4, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @ComputeDJBHash(i8* %25)
  %27 = load %struct.StringHashTable*, %struct.StringHashTable** %4, align 8
  %28 = getelementptr inbounds %struct.StringHashTable, %struct.StringHashTable* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = srem i32 %26, %29
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @AddStringToHash(%struct.StringHashTable* %24, i32 %30, i32 %36, i8* %37)
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = add nsw i64 %40, 1
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8* %43, i8** %7, align 8
  br label %19

44:                                               ; preds = %19
  ret void
}

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @AddStringToHash(%struct.StringHashTable*, i32, i32, i8*) #1

declare dso_local i32 @ComputeDJBHash(i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
