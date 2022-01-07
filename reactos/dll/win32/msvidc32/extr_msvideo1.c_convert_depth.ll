; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msvidc32/extr_msvideo1.c_convert_depth.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msvidc32/extr_msvideo1.c_convert_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@convert_depth.convert_5to8 = internal constant [32 x i8] c"\00\08\10\19!)1:BJRZcks{\84\8C\94\9C\A5\AD\B5\BD\C5\CE\D6\DE\E6\EF\F7\FF", align 16
@.str = private unnamed_addr constant [44 x i8] c"Conversion from %d to %d bit unimplemented\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, %struct.TYPE_3__*)* @convert_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_depth(i8* %0, i32 %1, i8* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @get_stride(i32 %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @get_stride(i32 %23, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 16
  br i1 %29, label %30, label %97

30:                                               ; preds = %4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 24
  br i1 %34, label %35, label %97

35:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %93, %35
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %96

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %13, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %12, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  store i8* %55, i8** %14, align 8
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %89, %42
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %56
  %63 = load i32*, i32** %13, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %13, align 8
  %65 = load i32, i32* %63, align 4
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = and i32 %66, 31744
  %68 = lshr i32 %67, 10
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* @convert_depth.convert_5to8, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %14, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %14, align 8
  store i8 %71, i8* %72, align 1
  %74 = load i32, i32* %15, align 4
  %75 = and i32 %74, 992
  %76 = lshr i32 %75, 5
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* @convert_depth.convert_5to8, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = load i8*, i8** %14, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %14, align 8
  store i8 %79, i8* %80, align 1
  %82 = load i32, i32* %15, align 4
  %83 = and i32 %82, 31
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* @convert_depth.convert_5to8, i64 0, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %14, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %14, align 8
  store i8 %86, i8* %87, align 1
  br label %89

89:                                               ; preds = %62
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %56

92:                                               ; preds = %56
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %36

96:                                               ; preds = %36
  br label %103

97:                                               ; preds = %30, %4
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @FIXME(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %97, %96
  ret void
}

declare dso_local i32 @get_stride(i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
