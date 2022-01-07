; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_add_reglocator_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_add_reglocator_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.add_reglocator_entry.insert = private unnamed_addr constant [106 x i8] c"INSERT INTO `RegLocator` (`Signature_`, `Root`, `Key`, `Name`, `Type`) VALUES( '%s', %u, '%s', '%s', %u )\00", align 16
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"failed to insert into reglocator table: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64, i8*, i8*, i64)* @add_reglocator_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_reglocator_entry(i32 %0, i8* %1, i64 %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [106 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = bitcast [106 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 getelementptr inbounds ([106 x i8], [106 x i8]* @__const.add_reglocator_entry.insert, i32 0, i32 0), i64 106, i1 false)
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = add nsw i64 %19, 10
  %21 = load i8*, i8** %10, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = add nsw i64 %20, %22
  %24 = load i8*, i8** %11, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = add nsw i64 %23, %25
  %27 = add nsw i64 %26, 10
  %28 = add i64 %27, 106
  store i64 %28, i64* %15, align 8
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load i64, i64* %15, align 8
  %31 = call i8* @HeapAlloc(i32 %29, i32 0, i64 %30)
  store i8* %31, i8** %14, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = getelementptr inbounds [106 x i8], [106 x i8]* %13, i64 0, i64 0
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @sprintf(i8* %32, i8* %33, i8* %34, i64 %35, i8* %36, i8* %37, i64 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i8*, i8** %14, align 8
  %42 = call i64 @run_query(i32 %40, i8* %41)
  store i64 %42, i64* %16, align 8
  %43 = call i32 (...) @GetProcessHeap()
  %44 = load i8*, i8** %14, align 8
  %45 = call i32 @HeapFree(i32 %43, i32 0, i8* %44)
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* @ERROR_SUCCESS, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %16, align 8
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* %16, align 8
  ret i64 %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @HeapAlloc(i32, i32, i64) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i64, i8*, i8*, i64) #2

declare dso_local i64 @run_query(i32, i8*) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
