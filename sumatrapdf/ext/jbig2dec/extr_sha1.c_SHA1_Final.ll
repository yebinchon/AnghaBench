; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_sha1.c_SHA1_Final.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_sha1.c_SHA1_Final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i8* }

@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\80\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHA1_Final(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8 x i8], align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %8 = zext i32 %7 to i64
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %33, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %36

12:                                               ; preds = %9
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 4
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 0, i32 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %15, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 3
  %25 = sub nsw i32 3, %24
  %26 = mul nsw i32 %25, 8
  %27 = ashr i32 %22, %26
  %28 = and i32 %27, 255
  %29 = trunc i32 %28 to i8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 %31
  store i8 %29, i8* %32, align 1
  br label %33

33:                                               ; preds = %12
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %9

36:                                               ; preds = %9
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = call i32 @SHA1_Update(%struct.TYPE_4__* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %39

39:                                               ; preds = %47, %36
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 504
  %46 = icmp ne i32 %45, 448
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = call i32 @SHA1_Update(%struct.TYPE_4__* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %39

50:                                               ; preds = %39
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %53 = call i32 @SHA1_Update(%struct.TYPE_4__* %51, i8* %52, i32 8)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %78, %50
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = ashr i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, 3
  %69 = sub nsw i32 3, %68
  %70 = mul nsw i32 %69, 8
  %71 = ashr i32 %66, %70
  %72 = and i32 %71, 255
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 %73, i8* %77, align 1
  br label %78

78:                                               ; preds = %58
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %54

81:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @memset(i8* %84, i32 0, i32 64)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = bitcast i32* %88 to i8*
  %90 = call i32 @memset(i8* %89, i32 0, i32 20)
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = bitcast i32* %93 to i8*
  %95 = call i32 @memset(i8* %94, i32 0, i32 8)
  %96 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %97 = call i32 @memset(i8* %96, i32 0, i32 8)
  ret void
}

declare dso_local i32 @SHA1_Update(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
