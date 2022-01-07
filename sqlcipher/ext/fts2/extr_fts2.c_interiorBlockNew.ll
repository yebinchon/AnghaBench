; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_interiorBlockNew.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_interiorBlockNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@VARINT_MAX = common dso_local global i32 0, align 4
@INTERIOR_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, i32, i8*, i32)* @interiorBlockNew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @interiorBlockNew(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = call %struct.TYPE_5__* @sqlite3_malloc(i32 8)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %9, align 8
  %14 = load i32, i32* @VARINT_MAX, align 4
  %15 = load i32, i32* @VARINT_MAX, align 4
  %16 = add nsw i32 %14, %15
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = call i32 @memset(%struct.TYPE_5__* %23, i32 0, i32 8)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = call i32 @dataBufferInit(i32* %26, i32 0)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @dataBufferReplace(i32* %29, i8* %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @putVarint(i8* %19, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %19, i64 %36
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @putVarint(i8* %37, i32 %38)
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %12, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* @INTERIOR_MAX, align 4
  %45 = call i32 @dataBufferInit(i32* %43, i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @dataBufferReplace(i32* %47, i8* %19, i32 %48)
  br label %50

50:                                               ; preds = %22, %4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %52)
  ret %struct.TYPE_5__* %51
}

declare dso_local %struct.TYPE_5__* @sqlite3_malloc(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dataBufferInit(i32*, i32) #1

declare dso_local i32 @dataBufferReplace(i32*, i8*, i32) #1

declare dso_local i32 @putVarint(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
