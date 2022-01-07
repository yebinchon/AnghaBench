; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_pathtable_l_add_entry.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_pathtable_l_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@ISO_BLOCKSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iso9660_pathtable_l_add_entry(i8* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @iso9660_pathtable_get_size(i8* %14)
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = bitcast i8* %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlen(i8* %22)
  br label %25

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 1, %24 ]
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @iso9660_pathtable_get_size(i8* %28)
  %30 = load i64, i64* @ISO_BLOCKSIZE, align 8
  %31 = icmp slt i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @cdio_assert(i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add i64 16, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memset(%struct.TYPE_4__* %34, i32 0, i32 %37)
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @to_711(i64 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @to_731(i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @to_721(i64 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @memcpy(i32 %53, i8* %54, i64 %55)
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @pathtable_get_size_and_entries(i8* %57, i32* null, i32* %11)
  %59 = load i32, i32* %11, align 4
  %60 = icmp ugt i32 %59, 1
  br i1 %60, label %61, label %78

61:                                               ; preds = %25
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sub i32 %63, 2
  %65 = call %struct.TYPE_4__* @pathtable_get_entry(i8* %62, i32 %64)
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %12, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %67 = icmp ne %struct.TYPE_4__* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 @cdio_assert(i32 %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @from_721(i32 %72)
  %74 = load i64, i64* %8, align 8
  %75 = icmp sle i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @cdio_assert(i32 %76)
  br label %78

78:                                               ; preds = %61, %25
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  ret i64 %80
}

declare dso_local i64 @iso9660_pathtable_get_size(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cdio_assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @to_711(i64) #1

declare dso_local i32 @to_731(i32) #1

declare dso_local i32 @to_721(i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @pathtable_get_size_and_entries(i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @pathtable_get_entry(i8*, i32) #1

declare dso_local i64 @from_721(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
