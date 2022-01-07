; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_sha512.c_sha512_process.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_sha512.c_sha512_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i8* }

@SHA512_BLOCKSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hash_state*, i8*, i64)* @sha512_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha512_process(%struct.hash_state* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.hash_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.hash_state* %0, %struct.hash_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %95, %3
  %9 = load i64, i64* %6, align 8
  %10 = icmp ugt i64 %9, 0
  br i1 %10, label %11, label %96

11:                                               ; preds = %8
  %12 = load %struct.hash_state*, %struct.hash_state** %4, align 8
  %13 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @SHA512_BLOCKSIZE, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load %struct.hash_state*, %struct.hash_state** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @sha512_compress(%struct.hash_state* %22, i8* %23)
  %25 = load i64, i64* @SHA512_BLOCKSIZE, align 8
  %26 = mul i64 %25, 8
  %27 = load %struct.hash_state*, %struct.hash_state** %4, align 8
  %28 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, %26
  store i64 %31, i64* %29, align 8
  %32 = load i64, i64* @SHA512_BLOCKSIZE, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 %32
  store i8* %34, i8** %5, align 8
  %35 = load i64, i64* @SHA512_BLOCKSIZE, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %36, %35
  store i64 %37, i64* %6, align 8
  br label %95

38:                                               ; preds = %17, %11
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @SHA512_BLOCKSIZE, align 8
  %41 = load %struct.hash_state*, %struct.hash_state** %4, align 8
  %42 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %40, %44
  %46 = call i64 @MIN(i64 %39, i64 %45)
  store i64 %46, i64* %7, align 8
  %47 = load %struct.hash_state*, %struct.hash_state** %4, align 8
  %48 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.hash_state*, %struct.hash_state** %4, align 8
  %52 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @memcpy(i8* %55, i8* %56, i64 %57)
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.hash_state*, %struct.hash_state** %4, align 8
  %61 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %59
  store i64 %64, i64* %62, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 %65
  store i8* %67, i8** %5, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %6, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %6, align 8
  %71 = load %struct.hash_state*, %struct.hash_state** %4, align 8
  %72 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SHA512_BLOCKSIZE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %38
  %78 = load %struct.hash_state*, %struct.hash_state** %4, align 8
  %79 = load %struct.hash_state*, %struct.hash_state** %4, align 8
  %80 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @sha512_compress(%struct.hash_state* %78, i8* %82)
  %84 = load i64, i64* @SHA512_BLOCKSIZE, align 8
  %85 = mul i64 %84, 8
  %86 = load %struct.hash_state*, %struct.hash_state** %4, align 8
  %87 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, %85
  store i64 %90, i64* %88, align 8
  %91 = load %struct.hash_state*, %struct.hash_state** %4, align 8
  %92 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %77, %38
  br label %95

95:                                               ; preds = %94, %21
  br label %8

96:                                               ; preds = %8
  ret void
}

declare dso_local i32 @sha512_compress(%struct.hash_state*, i8*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
