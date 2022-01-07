; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_mksourceid.c_SHA1Update.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_mksourceid.c_SHA1Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @SHA1Update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SHA1Update(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = add i32 %20, %15
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = lshr i32 %25, 29
  %27 = add i32 %26, 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %32, %27
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %24, %3
  %35 = load i32, i32* %8, align 4
  %36 = lshr i32 %35, 3
  %37 = and i32 %36, 63
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %38, %39
  %41 = icmp ugt i32 %40, 63
  br i1 %41, label %42, label %78

42:                                               ; preds = %34
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sub i32 64, %50
  store i32 %51, i32* %7, align 4
  %52 = call i32 @memcpy(i8* %48, i8* %49, i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @SHA1Transform(i32 %55, i8* %58)
  br label %60

60:                                               ; preds = %74, %42
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, 63
  %63 = load i32, i32* %6, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = call i32 @SHA1Transform(i32 %68, i8* %72)
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %75, 64
  store i32 %76, i32* %7, align 4
  br label %60

77:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %79

78:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %77
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = sub i32 %90, %91
  %93 = call i32 @memcpy(i8* %85, i8* %89, i32 %92)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @SHA1Transform(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
