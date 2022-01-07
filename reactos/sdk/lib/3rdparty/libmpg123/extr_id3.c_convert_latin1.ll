; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_id3.c_convert_latin1.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_id3.c_convert_latin1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }

@.str = private unnamed_addr constant [18 x i8] c"UTF-8 length: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i64, i32)* @convert_latin1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_latin1(%struct.TYPE_5__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %7, align 8
  store i64 %12, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %28, %4
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sge i32 %22, 128
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i64, i64* %9, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %24, %17
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %10, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %10, align 8
  br label %13

31:                                               ; preds = %13
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @debug1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, 1
  %37 = call i32 @mpg123_resize_string(%struct.TYPE_5__* %34, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = call i32 @mpg123_free_string(%struct.TYPE_5__* %40)
  br label %102

42:                                               ; preds = %31
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = bitcast i32* %45 to i8*
  store i8* %46, i8** %11, align 8
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %89, %42
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp slt i32 %56, 128
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = load i8*, i8** %11, align 8
  store i8 %62, i8* %63, align 1
  %64 = load i8*, i8** %11, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %11, align 8
  br label %88

66:                                               ; preds = %51
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = ashr i32 %71, 6
  %73 = or i32 192, %72
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %11, align 8
  store i8 %74, i8* %75, align 1
  %76 = load i8*, i8** %6, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 63
  %82 = or i32 128, %81
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  store i8 %83, i8* %85, align 1
  %86 = load i8*, i8** %11, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  store i8* %87, i8** %11, align 8
  br label %88

88:                                               ; preds = %66, %58
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %10, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %10, align 8
  br label %47

92:                                               ; preds = %47
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 0, i32* %97, align 4
  %98 = load i64, i64* %9, align 8
  %99 = add i64 %98, 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %92, %39
  ret void
}

declare dso_local i32 @debug1(i8*, i64) #1

declare dso_local i32 @mpg123_resize_string(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @mpg123_free_string(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
