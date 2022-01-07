; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_boot.c_write_volume_label.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_boot.c_write_volume_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i64, i32, i32 }

@ATTR_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @write_volume_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_volume_label(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = call i32 @time(i32* null)
  store i32 %10, i32* %5, align 4
  %11 = call %struct.tm* @localtime(i32* %5)
  store %struct.tm* %11, %struct.tm** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @find_volume_de(i32* %12, %struct.TYPE_5__* %9)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @alloc_rootdir_entry(i32* %17, %struct.TYPE_5__* %9, i8* %18, i32 0)
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %16, %2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @memcpy(i32 %22, i8* %23, i32 11)
  %25 = load %struct.tm*, %struct.tm** %6, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %27, 1
  %29 = load %struct.tm*, %struct.tm** %6, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 5
  %33 = add nsw i32 %28, %32
  %34 = load %struct.tm*, %struct.tm** %6, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %36, 11
  %38 = add nsw i32 %33, %37
  %39 = trunc i32 %38 to i16
  %40 = call i8* @htole16(i16 zeroext %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 6
  store i8* %40, i8** %41, align 8
  %42 = load %struct.tm*, %struct.tm** %6, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.tm*, %struct.tm** %6, align 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  %49 = shl i32 %48, 5
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %44, %50
  %52 = load %struct.tm*, %struct.tm** %6, align 8
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 80
  %56 = shl i32 %55, 9
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %51, %57
  %59 = trunc i64 %58 to i16
  %60 = call i8* @htole16(i16 zeroext %59)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %20
  %65 = load i32, i32* @ATTR_VOLUME, align 4
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 9
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 8
  store i64 0, i64* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 6
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 7
  store i8* %69, i8** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 5
  store i8* %72, i8** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  store i8* %75, i8** %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %64, %20
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @fs_write(i64 %81, i32 80, %struct.TYPE_5__* %9)
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i64 @find_volume_de(i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @alloc_rootdir_entry(i32*, %struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i8* @htole16(i16 zeroext) #1

declare dso_local i32 @fs_write(i64, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
