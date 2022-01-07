; ModuleID = '/home/carl/AnghaBench/redis/src/extr_intset.c__intsetSet.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_intset.c__intsetSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@INTSET_ENC_INT64 = common dso_local global i64 0, align 8
@INTSET_ENC_INT32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i8*)* @_intsetSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_intsetSet(%struct.TYPE_3__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @intrev32ifbe(i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @INTSET_ENC_INT64, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8**
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  store i8* %16, i8** %23, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8**
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = call i32 @memrev64ifbe(i8** %30)
  br label %71

32:                                               ; preds = %3
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @INTSET_ENC_INT32, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8**
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  store i8* %37, i8** %44, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8**
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = call i32 @memrev32ifbe(i8** %51)
  br label %70

53:                                               ; preds = %32
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8**
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  store i8* %54, i8** %61, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8**
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = call i32 @memrev16ifbe(i8** %68)
  br label %70

70:                                               ; preds = %53, %36
  br label %71

71:                                               ; preds = %70, %15
  ret void
}

declare dso_local i64 @intrev32ifbe(i32) #1

declare dso_local i32 @memrev64ifbe(i8**) #1

declare dso_local i32 @memrev32ifbe(i8**) #1

declare dso_local i32 @memrev16ifbe(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
