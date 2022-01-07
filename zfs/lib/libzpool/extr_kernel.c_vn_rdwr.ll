; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzpool/extr_kernel.c_vn_rdwr.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzpool/extr_kernel.c_vn_rdwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@UIO_READ = common dso_local global i32 0, align 4
@SPA_MINBLOCKSHIFT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_rdwr(i32 %0, %struct.TYPE_3__* %1, i8* %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7, i8* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i64 %4, i64* %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32 0, i32* %23, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @UIO_READ, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %10
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %14, align 8
  %35 = load i32, i32* %15, align 4
  %36 = load i64, i64* %16, align 8
  %37 = call i32 @pread64(i32 %33, i8* %34, i32 %35, i64 %36)
  store i32 %37, i32* %22, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %57

42:                                               ; preds = %30
  %43 = load i32, i32* %22, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %14, align 8
  %50 = load i32, i32* %22, align 4
  %51 = load i64, i64* %16, align 8
  %52 = call i32 @pwrite64(i32 %48, i8* %49, i32 %50, i64 %51)
  store i32 %52, i32* %25, align 4
  %53 = load i32, i32* %25, align 4
  %54 = icmp ne i32 %53, -1
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  br label %57

57:                                               ; preds = %45, %42, %30
  br label %100

58:                                               ; preds = %10
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @SPA_MINBLOCKSHIFT, align 4
  %61 = ashr i32 %59, %60
  store i32 %61, i32* %26, align 4
  %62 = load i32, i32* %26, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = call i32 (...) @rand()
  %66 = load i32, i32* %26, align 4
  %67 = srem i32 %65, %66
  br label %69

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %64
  %70 = phi i32 [ %67, %64 ], [ 0, %68 ]
  %71 = load i32, i32* @SPA_MINBLOCKSHIFT, align 4
  %72 = shl i32 %70, %71
  store i32 %72, i32* %24, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %14, align 8
  %77 = load i32, i32* %24, align 4
  %78 = load i64, i64* %16, align 8
  %79 = call i32 @pwrite64(i32 %75, i8* %76, i32 %77, i64 %78)
  store i32 %79, i32* %22, align 4
  %80 = load i32, i32* %22, align 4
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %99

82:                                               ; preds = %69
  %83 = load i32, i32* %22, align 4
  store i32 %83, i32* %23, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %14, align 8
  %88 = load i32, i32* %24, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %24, align 4
  %93 = sub nsw i32 %91, %92
  %94 = load i64, i64* %16, align 8
  %95 = load i32, i32* %24, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = call i32 @pwrite64(i32 %86, i8* %90, i32 %93, i64 %97)
  store i32 %98, i32* %22, align 4
  br label %99

99:                                               ; preds = %82, %69
  br label %100

100:                                              ; preds = %99, %57
  %101 = load i32, i32* %22, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i64, i64* @errno, align 8
  %105 = load i64, i64* @EINVAL, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = call i32 (...) @abort() #3
  unreachable

109:                                              ; preds = %103, %100
  %110 = load i32, i32* %22, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i64, i64* @errno, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %11, align 4
  br label %134

115:                                              ; preds = %109
  %116 = load i32, i32* %22, align 4
  %117 = load i32, i32* %23, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %23, align 4
  %119 = load i32*, i32** %21, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %23, align 4
  %124 = sub nsw i32 %122, %123
  %125 = load i32*, i32** %21, align 8
  store i32 %124, i32* %125, align 4
  br label %133

126:                                              ; preds = %115
  %127 = load i32, i32* %23, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* @EIO, align 4
  store i32 %131, i32* %11, align 4
  br label %134

132:                                              ; preds = %126
  br label %133

133:                                              ; preds = %132, %121
  store i32 0, i32* %11, align 4
  br label %134

134:                                              ; preds = %133, %130, %112
  %135 = load i32, i32* %11, align 4
  ret i32 %135
}

declare dso_local i32 @pread64(i32, i8*, i32, i64) #1

declare dso_local i32 @pwrite64(i32, i8*, i32, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @rand(...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
