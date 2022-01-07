; ModuleID = '/home/carl/AnghaBench/redis/src/extr_intset.c_intsetMoveTail.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_intset.c_intsetMoveTail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@INTSET_ENC_INT64 = common dso_local global i64 0, align 8
@INTSET_ENC_INT32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64, i64)* @intsetMoveTail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intsetMoveTail(%struct.TYPE_3__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @intrev32ifbe(i32 %13)
  %15 = load i64, i64* %5, align 8
  %16 = sub nsw i64 %14, %15
  store i64 %16, i64* %9, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @intrev32ifbe(i32 %19)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @INTSET_ENC_INT64, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = bitcast i32* %30 to i8*
  store i8* %31, i8** %7, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = bitcast i32* %37 to i8*
  store i8* %38, i8** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = mul i64 %39, 4
  store i64 %40, i64* %9, align 8
  br label %80

41:                                               ; preds = %3
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @INTSET_ENC_INT32, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = bitcast i32* %51 to i8*
  store i8* %52, i8** %7, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = bitcast i32* %58 to i8*
  store i8* %59, i8** %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = mul i64 %60, 4
  store i64 %61, i64* %9, align 8
  br label %79

62:                                               ; preds = %41
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = bitcast i32* %68 to i8*
  store i8* %69, i8** %7, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i32*
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = bitcast i32* %75 to i8*
  store i8* %76, i8** %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = mul i64 %77, 4
  store i64 %78, i64* %9, align 8
  br label %79

79:                                               ; preds = %62, %45
  br label %80

80:                                               ; preds = %79, %24
  %81 = load i8*, i8** %8, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @memmove(i8* %81, i8* %82, i64 %83)
  ret void
}

declare dso_local i64 @intrev32ifbe(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
