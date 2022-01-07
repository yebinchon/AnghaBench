; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest5.c_dbComputeCksum.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest5.c_dbComputeCksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@DB_KEY_BYTES = common dso_local global i32 0, align 4
@dbCksum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i32*, i32, i32, i32*)* @dbComputeCksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dbComputeCksum(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i64 0, i64* %11, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %78

24:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %17, align 4
  %25 = load i32, i32* @DB_KEY_BYTES, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %18, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %19, align 8
  %29 = load i32, i32* @DB_KEY_BYTES, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %20, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp sge i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  store i32 0, i32* %16, align 4
  br label %36

36:                                               ; preds = %46, %24
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* %17, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  store i32 %45, i32* %17, align 4
  br label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %16, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %16, align 4
  br label %36

49:                                               ; preds = %36
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %17, align 4
  %53 = sdiv i32 %51, %52
  %54 = mul nsw i32 %50, %53
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %17, align 4
  %57 = add nsw i32 %55, %56
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @dbFormatKey(%struct.TYPE_4__* %59, i32 %61, i32 %62, i8* %28)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @dbFormatKey(%struct.TYPE_4__* %64, i32 %66, i32 %67, i8* %31)
  %69 = call i32 @strlen(i8* %28)
  store i32 %69, i32* %12, align 4
  %70 = call i32 @strlen(i8* %31)
  store i32 %70, i32* %13, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @dbCksum, align 4
  %75 = call i32 @tdb_scan(i32* %71, i64* %11, i32 0, i8* %28, i32 %72, i8* %31, i32 %73, i32 %74)
  %76 = load i32*, i32** %10, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %77)
  br label %78

78:                                               ; preds = %49, %5
  %79 = load i64, i64* %11, align 8
  ret i64 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @dbFormatKey(%struct.TYPE_4__*, i32, i32, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @tdb_scan(i32*, i64*, i32, i8*, i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
