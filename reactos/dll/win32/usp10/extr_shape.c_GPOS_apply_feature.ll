; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_GPOS_apply_feature.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_GPOS_apply_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32* }

@.str = private unnamed_addr constant [12 x i8] c"%i lookups\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_6__*, i32*, %struct.TYPE_7__*, i32*, i32, i32*)* @GPOS_apply_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GPOS_apply_feature(i32* %0, i32* %1, i32* %2, %struct.TYPE_6__* %3, i32* %4, %struct.TYPE_7__* %5, i32* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %13, align 8
  store i32* %4, i32** %14, align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %9
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %27, %9
  %33 = phi i1 [ false, %9 ], [ %31, %27 ]
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 -1, i32 1
  store i32 %35, i32* %19, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %19, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* %17, align 4
  %44 = sub nsw i32 %43, 1
  br label %46

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 0, %45 ]
  store i32 %47, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %48

48:                                               ; preds = %86, %46
  %49 = load i32, i32* %21, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %89

54:                                               ; preds = %48
  store i32 0, i32* %22, align 4
  br label %55

55:                                               ; preds = %59, %54
  %56 = load i32, i32* %22, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %55
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %21, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %16, align 8
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %22, align 4
  %76 = mul i32 %74, %75
  %77 = add i32 %73, %76
  %78 = load i32, i32* %17, align 4
  %79 = load i32*, i32** %18, align 8
  %80 = call i64 @OpenType_apply_GPOS_lookup(i32* %60, i32* %61, i32* %62, %struct.TYPE_6__* %63, i32* %64, i32 %71, i32* %72, i32 %77, i32 %78, i32* %79)
  %81 = load i32, i32* %22, align 4
  %82 = zext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %22, align 4
  br label %55

85:                                               ; preds = %55
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %21, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %21, align 4
  br label %48

89:                                               ; preds = %48
  ret void
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i64 @OpenType_apply_GPOS_lookup(i32*, i32*, i32*, %struct.TYPE_6__*, i32*, i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
