; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_mlang_wctomb.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_mlang_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32*, i32)*, i32, i32 }

@MB_CHAR_MAX = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@EILSEQ = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, i32*, i32)* @mlang_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlang_wctomb(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* @MB_CHAR_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i32, i32* @MB_CHAR_MAX, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %15, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i64 @ConvertINetUnicodeToMultiByte(i32* %25, i32 %28, i32* %29, i32* %9, i8* %21, i32* %14)
  store i64 %30, i64* %16, align 8
  %31 = load i64, i64* %16, align 8
  %32 = load i64, i64* @S_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %5
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %5
  %39 = load i32, i32* @EILSEQ, align 4
  %40 = call i32 @seterror(i32 %39)
  store i32 %40, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %68

41:                                               ; preds = %34
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @E2BIG, align 4
  %47 = call i32 @seterror(i32 %46)
  store i32 %47, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %68

48:                                               ; preds = %41
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_4__*, i32*, i32)*, i32 (%struct.TYPE_4__*, i32*, i32)** %50, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = bitcast i8* %21 to i32*
  %54 = load i32, i32* %14, align 4
  %55 = call i32 %51(%struct.TYPE_4__* %52, i32* %53, i32 %54)
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* @EILSEQ, align 4
  %60 = call i32 @seterror(i32 %59)
  store i32 %60, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %68

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @memcpy(i32* %64, i8* %21, i32 %65)
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %68

68:                                               ; preds = %63, %58, %45, %38
  %69 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ConvertINetUnicodeToMultiByte(i32*, i32, i32*, i32*, i8*, i32*) #2

declare dso_local i32 @seterror(i32) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
