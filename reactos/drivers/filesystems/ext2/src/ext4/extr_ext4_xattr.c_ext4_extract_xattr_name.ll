; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_extract_xattr_name.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_extract_xattr_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@FALSE = common dso_local global i32 0, align 4
@prefix_tbl = common dso_local global %struct.TYPE_2__* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ext4_extract_xattr_name(i8* %0, i64 %1, i32* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @ASSERT(i32* %15)
  %17 = load i32*, i32** %11, align 8
  %18 = call i32 @ASSERT(i32* %17)
  %19 = load i32, i32* @FALSE, align 4
  %20 = load i32*, i32** %11, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %5
  %24 = load i64*, i64** %10, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i64*, i64** %10, align 8
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %26, %23
  store i8* null, i8** %6, align 8
  br label %117

29:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %108, %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prefix_tbl, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %111

38:                                               ; preds = %30
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prefix_tbl, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strlen(i8* %44)
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp uge i64 %46, %47
  br i1 %48, label %49, label %107

49:                                               ; preds = %38
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prefix_tbl, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = call i32 @memcmp(i8* %50, i8* %56, i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %107, label %60

60:                                               ; preds = %49
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prefix_tbl, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* %13, align 8
  %68 = sub i64 %67, 1
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 46
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %14, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prefix_tbl, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i64*, i64** %10, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %60
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %13, align 8
  %86 = sub i64 %84, %85
  %87 = load i64*, i64** %10, align 8
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %83, %60
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %13, align 8
  %91 = sub i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i8* null, i8** %6, align 8
  br label %117

97:                                               ; preds = %93, %88
  %98 = load i32, i32* @TRUE, align 4
  %99 = load i32*, i32** %11, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i8*, i8** %7, align 8
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %6, align 8
  br label %117

106:                                              ; preds = %97
  store i8* null, i8** %6, align 8
  br label %117

107:                                              ; preds = %49, %38
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %30

111:                                              ; preds = %30
  %112 = load i64*, i64** %10, align 8
  %113 = icmp ne i64* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i64*, i64** %10, align 8
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %114, %111
  store i8* null, i8** %6, align 8
  br label %117

117:                                              ; preds = %116, %106, %102, %96, %28
  %118 = load i8*, i8** %6, align 8
  ret i8* %118
}

declare dso_local i32 @ASSERT(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
