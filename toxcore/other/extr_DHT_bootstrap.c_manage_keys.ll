; ModuleID = '/home/carl/AnghaBench/toxcore/other/extr_DHT_bootstrap.c_manage_keys.c'
source_filename = "/home/carl/AnghaBench/toxcore/other/extr_DHT_bootstrap.c_manage_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_SECRETKEYBYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Error while reading the key file\0AExiting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Keys loaded successfully.\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"Error opening key file in write mode.\0AKeys will not be saved.\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Error while writing the key file.\0AExiting.\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Keys saved successfully.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @manage_keys(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %9 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %10 = load i32, i32* @crypto_box_SECRETKEYBYTES, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = call i32* @fopen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @fread(i32* %15, i32 4, i32 %20, i32* %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @exit(i32 1) #4
  unreachable

30:                                               ; preds = %19
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %35 = call i32 @memcpy(i32* %33, i32* %15, i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %15, i64 %40
  %42 = load i32, i32* @crypto_box_SECRETKEYBYTES, align 4
  %43 = call i32 @memcpy(i32* %38, i32* %41, i32 %42)
  %44 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %75

45:                                               ; preds = %1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %50 = call i32 @memcpy(i32* %15, i32* %48, i32 %49)
  %51 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %15, i64 %52
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @crypto_box_SECRETKEYBYTES, align 4
  %58 = call i32 @memcpy(i32* %53, i32* %56, i32 %57)
  %59 = call i32* @fopen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %59, i32** %6, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %45
  %63 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %78

64:                                               ; preds = %45
  %65 = load i32, i32* %3, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @fwrite(i32* %15, i32 4, i32 %65, i32* %66)
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %72 = call i32 @exit(i32 1) #4
  unreachable

73:                                               ; preds = %64
  %74 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %30
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @fclose(i32* %76)
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %75, %62
  %79 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %8, align 4
  switch i32 %80, label %82 [
    i32 0, label %81
    i32 1, label %81
  ]

81:                                               ; preds = %78, %78
  ret void

82:                                               ; preds = %78
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @fread(i32*, i32, i32, i32*) #2

declare dso_local i32 @printf(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
